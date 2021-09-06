import pandas as pd
import numpy as np
from sklearn.preprocessing import StandardScaler, MinMaxScaler


class DataWrangler():
    def __init__(self):
        #self.df_original = df.copy()
        self.columns_linear = ['STR', 'tBEDS', 'tBATHS', 'tSTORIES', 'tUNITS', 'tBLDGS', 'ACT', 'S_AMT_x',
                                 'HEAT_AR', 'BASE', 'ACREAGE',
                                'JUST','LAND','BLDG','EXF','EFF', 'TAX_VAL','ASD_VAL']
        #self.columns_to_onehotencode = []
        self.columns_to_onehotencode = ["NBHC_x","S_TYPE","MUNI",'TAXDIST','TIF','SITE_ZIP','VI_y','QU','DOR_CODE']
        self.cols_to_drop = ['PIN_x','SUB_x','VI_x','GRANTOR','GRANTEE','DOC_NUM','TYPE','PIN_y','OWNER','ADDR_1',
                'ADDR_2','CITY','STATE','ZIP','COUNTRY','SUB_y','SITE_CITY','LEGAL1','LEGAL2','LEGAL3','LEGAL4','DBA','STRAP',
                'SD1','SD2','S_DATE_y','S_AMT_y','NBHC_y','Edit_dt','geometry',
                'SITE_ADDR','DOR_C','OR_BK','OR_PG']

        #'FOLIO'
        #'S_DATE_x'
        self.cols_to_convert_to_num = ['STR']

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

    def prepare(self, df, alreadysorted=True, cleanzipcodes=True):
        self.df_original = df = df.copy()
        if not alreadysorted:
            df = df.sort_values('S_DATE_x', ascending=True)
        self.df_original = df
        
        
        df = self.cleanZipCodes(df, 'SITE_ZIP')
        df = df.drop(columns=self.cols_to_drop)
        
        self.dates = df['S_DATE_x']
        
        #for col in self.cols_to_convert_to_num:
        #    print(f"converting to num: {col}")
        #    df[col] = df[col].astype('int16')

        self.df, self.ohe_sizes, self.original_columns = self.one_hot_encode(df, self.columns_to_onehotencode)
        self.df_prepared = self.df.copy()
        return self.df_prepared
        #self.scaler = MinMaxScaler()
        #self.scaler.fit(self.df)
        #self.nparray = self.scaler.transform(self.df)
        

    def cleanZipCodes(self, df, columnname):
        # convert STR to an X and Y, S=section, Township, Range
        df = df.copy()
        df[columnname] = df[columnname].str.replace('-+[0-9]*','',regex=True).str.replace('_+','',regex=True)
        df = df[df[columnname].notna()]
        df = df[df[columnname] != '']
        df = df[df[columnname] != '99999']
        return df