class DataWrangler():
    def __init__(self):
        #self.df_original = df.copy()
        self.columns_linear = ['STR', 'tBEDS', 'tBATHS', 'tSTORIES', 'tUNITS', 'tBLDGS', 'ACT',
                                'EFF', 'HEAT_AR', 'BASE', 'ACREAGE', 'REA_CD_encoded_x', 'REA_CD_encoded_y']
        #self.columns_to_onehotencode = []
        self.columns_to_onehotencode = ["HBHC_x","S_TYPE","MUNI",'TAXDIST','TIF','SITE_ZIP','VI_y','QU']
        self.cols_to_drop = ['PIN_x','S_AMT_x','SUB_x','VI_x','GRANTOR','GRANTEE','DOC_NUM','TYPE','PIN_y','OWNER','ADDR_1',
                'ADDR_2','CITY','STATE','ZIP','COUNTRY','SUB_y','SITE_CITY','LEGAL1','LEGAL2','LEGAL3','LEGAL4','DBA','STRAP',
                'JUST','LAND','BLDG','EXF','ASD_VAL','TAX_VAL','SD1','SD2','S_DATE_y','S_AMT_y','NBHC_y','Edit_dt','geometry',
                'SITE_ADDR','DOR_C','OR_BK','OR_PG', "S_TYPE","MUNI",'TAXDIST','TIF','SITE_ZIP','VI_y','QU']
        self.cols_to_drop += ['DOR_CODE']
        #'FOLIO'
        #'S_DATE_x'
        self.cols_to_convert_to_num = ['STR']

    def prepareSalesAndParcels(self, df):
        df = self.df_original.copy()
        df = df.sort_values('S_DATE_x', ascending=True)
        #df = df[757_000:] # late january 2000
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
        self.nparray = self.scaler.transform(self.df)
        return self.df_prepared

    def cleanZipCodes(self, df, columnname):
        # convert STR to an X and Y, S=section, Township, Range
        df = df.copy()
        df[columnname] = df[columnname].str.replace('-+[0-9]*','',regex=True).str.replace('_+','',regex=True)
        df = df[df[columnname].notna()]
        df = df[df[columnname] != '']
        df = df[df[columnname] != '99999']
        return df