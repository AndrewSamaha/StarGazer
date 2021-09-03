import numpy as np
import pandas as pd

#sales_and_parcels = pd.read_pickle("/tf/DataSources/sales_and_parcels/hillsborough_county.pickle")

class County():
    def __init__(self, name, path):
        self.name = name
        self.path = path
    
    def load(self):
        self.sales_and_parcels = pd.read_pickle(self.path)

hillsborough_county = County('Hillsborough', '/tf/DataSources/sales_and_parcels/hillsborough_county.pickle')
hillsborough_county_rea_cd_encoded = County('Hillsborough', '/tf/DataSources/sales_and_parcels/hillsborough_county_rea_cd_encoded.pickle')