import numpy as np
import pandas as pd
import tensorflow as tf
from sklearn.preprocessing import StandardScaler, MinMaxScaler

powers = [4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 4, 2]
powers = [256, 128, 64, 8, 2]

def getSmaller(val):
    for num in powers:
        if num < val:
            return num

def getBigger(val):
    powers = [4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 4, 2]
    powers = [256, 128, 64, 8, 2]
    powers = sorted(powers)
    for num in powers:
        if num > val:
            return num

def getDescendingLayerSizes(inputsize):
    layer_sizes = []
    size = inputsize
    while size > min(powers):
        size = getSmaller(size)
        layer_sizes.append(size)
    return layer_sizes

def getAscendingLayerSizes(inputsize):
    layer_sizes = []
    size = np.array(powers).min()
    layer_sizes.append(size)
    while size <= inputsize:
        size = getBigger(size)
        if size < inputsize:
            layer_sizes.append(size)
    return layer_sizes

class SlimAutoencoderBuilder(): 
                
    def prepare(self):
        df = self.df_original.copy()
        df = df.sort_values('S_DATE_x', ascending=True)
        df = df[757_000:] # late january 2000
        self.df_original = df
        
        self.dates = df['S_DATE_x']
        
        df = df.drop(columns=self.cols_to_drop)
        # convert STR to an X and Y, S=section, Township, Range
        # df['SITE_ZIP'] = df['SITE_ZIP'].str.replace('-+[0-9]*','',regex=True).str.replace('_+','',regex=True)
        # df = df[df['SITE_ZIP'].notna()]
        # df = df[df['SITE_ZIP'] != '']
        # df = df[df['SITE_ZIP'] != '99999']
        for col in self.cols_to_convert_to_num:
            df[col] = df[col].astype('int16')

        self.df, self.ohe_sizes, self.original_columns = self.one_hot_encode(df, self.columns_to_onehotencode)
        self.df_prepared = self.df.copy()
        self.scaler = MinMaxScaler()
        self.scaler.fit(self.df)
        self.df = self.scaler.transform(self.df)
        return self.df

    def one_hot_encode(self, df,cols):
        df = df.copy()
        original_columns = df.columns
        sizes = dict()
        #sizes['original_df'] = df.shape[1]
        for col in cols:
            start_width = df.shape[1]
            #df = pd.get_dummies(df, columns=[col], drop_first=False)
            df = pd.get_dummies(df, columns=[col], drop_first=False)
            sizes[col] = df.shape[1] - start_width + 1
        return df, sizes, original_columns

    def __init__(self, df):
        self.df_original = df.copy()
        self.columns_linear = ['NBHC_x', 'STR', 'tBEDS', 'tBATHS', 'tSTORIES', 'tUNITS', 'tBLDGS', 'ACT',
                               'EFF', 'HEAT_AR', 'BASE', 'ACREAGE', 'REA_CD_encoded_x', 'REA_CD_encoded_y']
        self.columns_to_onehotencode = []
        #self.columns_to_onehotencode = ["S_TYPE","MUNI",'TAXDIST','TIF','SITE_ZIP','VI_y','QU']
        self.cols_to_drop = ['PIN_x','FOLIO','S_DATE_x','S_AMT_x','SUB_x','VI_x','GRANTOR','GRANTEE','DOC_NUM','TYPE','PIN_y','OWNER','ADDR_1',
               'ADDR_2','CITY','STATE','ZIP','COUNTRY','SUB_y','SITE_CITY','LEGAL1','LEGAL2','LEGAL3','LEGAL4','DBA','STRAP',
               'JUST','LAND','BLDG','EXF','ASD_VAL','TAX_VAL','SD1','SD2','S_DATE_y','S_AMT_y','NBHC_y','Edit_dt','geometry',
               'SITE_ADDR','DOR_C','OR_BK','OR_PG', "S_TYPE","MUNI",'TAXDIST','TIF','SITE_ZIP','VI_y','QU']
        self.cols_to_drop += ['DOR_CODE']
        self.cols_to_convert_to_num = ['STR']
        
        return

    def createModel(self):
        
        shape = self.df.shape

        # encoder
        print(f'creating moding with input={shape[1]}')
        self.encoder_input_layer = tf.keras.Input(shape=(shape[1], ), name="encoderinputs")

        layer_sizes = getDescendingLayerSizes(shape[1])
        layernum = 1
        for layer_size in layer_sizes:
            if layernum == 1:
                x = tf.keras.layers.Dense(layer_size, activation='relu')(self.encoder_input_layer)
            else:
                x = tf.keras.layers.Dense(layer_size, activation='relu')(x)
            layernum += 1    
        self.encoder_output_layer = x
        self.model_encoder = tf.keras.Model(self.encoder_input_layer,
                                           self.encoder_output_layer,
                                           name='encoder')


        # decoder
        self.decoder_input_layer = tf.keras.Input(shape=(layer_size, ), name="decoderinputs")

        layer_sizes = getAscendingLayerSizes(shape[1])
        layernum = 1
        for layer_size in layer_sizes:
            if layer_size == np.array(layer_sizes).min():
                # First decoder layer
                x = tf.keras.layers.Dense(layer_size, activation='relu')(self.decoder_input_layer)
            else:
                # dense decoder layers
                x = tf.keras.layers.Dense(layer_size, activation='relu')(x)
            layernum += 1    



        # last decoder layer
        output_branch = tf.keras.layers.Dense(len(self.columns_linear), name="linear", activation='linear')(x)
        
        self.decoder_output_branch = output_branch
        print(f"output_branches: {output_branch}")
        #self.decoder_concatenated_output_branches = tf.keras.layers.concatenate(output_branches, name='concatenated_outputs')

        self.decoder_output_layer = [output_branch]
        self.model_decoder = tf.keras.Model(inputs=[self.decoder_input_layer],
                                           outputs=self.decoder_output_branch, #output_branches,
                                           name='decoder')

        # chain the encoder and decoder together to create... autoencoder
        self.autoencoder_input = tf.keras.Input(shape=(shape[1], ), name="img")
        encoded_img = self.model_encoder(self.autoencoder_input)
        decoded_img = self.model_decoder(encoded_img)
        autoencoder = tf.keras.Model(self.autoencoder_input, decoded_img, name="autoencoder")
        autoencoder.summary()        

        self.model_autoencoder = autoencoder
        return self.model_autoencoder

