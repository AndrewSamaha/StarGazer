import matplotlib.pyplot as plt
import mysql.connector as mysql
import numpy as np
import base64
import PIL
from PIL import Image as Image
import io
import re
#from app.src.db import *
import tensorflow as tf
from tensorflow import keras
#from tensorflow.keras.models import Sequential
#from tensorflow.keras.layers import Conv2D, MaxPool2D, Dense, Dropout, Flatten
#from tensorflow.keras import backend as K
#from tensorflow.keras.callbacks import ModelCheckpoint, EarlyStopping
#from sklearn.preprocessing import StandardScaler
#from sklearn.model_selection import train_test_split

from matplotlib import pyplot as plt
import numpy as np

import requests
from io import BytesIO
from PIL import Image, ImageFilter
import os

import time

def current_milli_time():
    return round(time.time() * 1000)

class Test:
    def __init__(self, num):
        self.num = num


class ModelWrapper:
    def __init__(self, filename):
        self.model = keras.models.load_model(filename)
        self.response_times = []
        self.response_time_max = 100
        self.last_frame_time = 0
        self.last_frame = None

    def drive(self, X, t):
        tdelta = t - self.last_frame_time
        X = X.reshape(-1,1)
        if self.last_frame is None:
            self.last_frame = X
            return np.array([[0]])

        delta = X - self.last_frame
        tdelta = np.array([[tdelta]])
        delta = np.vstack((delta, tdelta))
        delta = delta.reshape(1,-1)
        self.last_frame_time = t
        return self.model.predict(delta)
