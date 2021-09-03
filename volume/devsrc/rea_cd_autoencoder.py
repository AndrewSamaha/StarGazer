import numpy as np
import pandas as pd
import tensorflow as tf
from keras_adabound import AdaBound

definitions = dict()
definitions['REA_CD_01']='sale qualified per exam of deed'
definitions['REA_CD_02']='sale qualified on credible evidence'
definitions['REA_CD_04']='unknown'
definitions['REA_CD_05']='multiple parcels'
definitions['REA_CD_06']='arm’s length sale crosses county lines'
definitions['REA_CD_11']='$100 corrective deed'
definitions['REA_CD_12']='deeds to/from financial institutions'
definitions['REA_CD_13']='cemetery lots'
definitions['REA_CD_14']='life estate'
definitions['REA_CD_15']='unknown'
definitions['REA_CD_16']='partial interest'
definitions['REA_CD_17']='religious/charitable org'
definitions['REA_CD_18']='government, schools, courts, TIFF'
definitions['REA_CD_19']='bankruptcy, executor, guardian, receiver'
definitions['REA_CD_20']='utility company'
definitions['REA_CD_21']='unknown'
definitions['REA_CD_2A']='qualified bank sale'
definitions['REA_CD_2B']='qualified short sale'
definitions['REA_CD_30']='related parties'
definitions['REA_CD_31']='trade or exchange'
definitions['REA_CD_32']='pre construction sale'
definitions['REA_CD_33']='incomplete common area improvements'
definitions['REA_CD_34']='satisfaction of prior property contract'
definitions['REA_CD_35']='atypical personal property'
definitions['REA_CD_36']='atypical costs of sale'
definitions['REA_CD_37']='not exposed to open market'
definitions['REA_CD_38']='duress or to prevent foreclosure'
definitions['REA_CD_39']='different sale price than doc stamps'
definitions['REA_CD_3A']='new construction after sale'
definitions['REA_CD_3B']='demolition after sale'
definitions['REA_CD_3C']='split after sale'
definitions['REA_CD_3D']='join after sale'
definitions['REA_CD_3J']='unknown'
definitions['REA_CD_40']='non market financing'
definitions['REA_CD_41']='other: requires prior DOR approval'
definitions['REA_CD_43']='allocated price as part of bulk sale'
definitions['REA_CD_4A']='unknown'
definitions['REA_CD_4C']='subject to rezoning/rezoned after sale'
definitions['REA_CD_98']='sale with deed errors'

class REA_CD_Autoencoder():

    def __init__(self, path_to_model):
        self.name = 'REA_CD'
        self.definitions = definitions
        if path_to_model[-1:] != '/':
            path_to_model += '/'
        self.path_to_model = path_to_model
        self.autoencoder_model = tf.keras.models.load_model(path_to_model + self.name + '_autoencoder', custom_objects={'AdaBound': AdaBound})
        self.encoder_model = tf.keras.models.load_model(path_to_model + self.name + '_encoder', custom_objects={'AdaBound': AdaBound})
        self.decoder_model = tf.keras.models.load_model(path_to_model + self.name + '_decoder', custom_objects={'AdaBound': AdaBound})
    
    def encode_rea_cd_in_df(self, df):
        """
        parameters: df - a whole dataframe containing at least one column labeled REA_CD
        returns:    df - the same dataframe with the REA_CD column replaced by autoencoded
                         values
        """
        ohe_columns = self.oheREAFromWholeDF(df)
        print("got OHE values")
        encodings = self.encode(ohe_columns)
        print("got encoded values")
        new_df = df.copy()
        new_df = new_df.drop(columns=['REA_CD'])
        new_df['REA_CD_encoded_x'] = encodings[:,0]
        new_df['REA_CD_encoded_y'] = encodings[:,1]
        return new_df
    
    def decode_rea_cd_in_df(self, df):
        """
        converts a df with REA_CD_encoded_x and _encoded_y into a df with a single REA_CD column
        """
        x = np.array(df['REA_CD_encoded_x']).reshape(-1,1)
        y = np.array(df['REA_CD_encoded_y']).reshape(-1,1)
        array = np.hstack((x,y))
        decoded = self.decode(array)
        df = df.copy()
        df = df.drop(columns=['REA_CD_encoded_x','REA_CD_encoded_y'])
        df['REA_CD'] = decoded
        return df

    def oheREAFromWholeDF(self, df):
        """parameters: df- a while dataframe containing at least one column labeled 'REA_CD'
           returns:    a df with one-hot-encoded values for REA_CD; this df is ready to be 
                       encoded by self.encode(df)
        """
        column = df['REA_CD']
        ohe_df = pd.get_dummies(column)
        return ohe_df
    
    def get_col_pos(self,key):
        lookup = dict()
        pos = 0
        for col in definitions.keys():
            lookup[col] = pos
            pos += 1
        array = np.zeros((key.shape[0],))
        rownum = 0
        for row in key.iteritems():
            if row[1] is not None:
                array[rownum:lookup['REA_CD_'+row[1]]] = 1
            rownum += 1
        
        return array
    
    def convert_REA_CD_np(self, arr):
        shape = arr.shape
        self.ohe = np.zeroes(arr.shape)

        self.ohe[self.get_col_pos(value)]
        return self.ohe
    
    def encode(self, arr):
        return self.encoder_model.predict(arr)
    
    def decode(self, arr):
        arr = self.decoder_model.predict(arr)
        lookup = list()
        for key in definitions.keys():
            lookup.append(key[-2:])
        results = list()
        for row in np.argmax(arr, axis=1):
            results.append(lookup[row])
        return np.array(results, dtype=object)


    
