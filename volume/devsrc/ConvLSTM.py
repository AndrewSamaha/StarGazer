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
        return self.df

    
    def __init__(self, df):
        return

    def createModel(self):
        # Construct the input layer with no definite frame size.
        inpup = layers.Input(shape=(None, *x_train.shape[2:]))

        # We will construct 3 `ConvLSTM2D` layers with batch normalization,
        # followed by a `Conv3D` layer for the spatiotemporal outputs.
        x = layers.ConvLSTM2D(
                filters=64,
                kernel_size=(5, 5),
                padding="same",
                return_sequences=True,
                activation="relu"
            )(inp)
        x = layers.BatchNormalization()(x)
        x = layers.ConvLSTM2D(
            filters=64,
            kernel_size=(3, 3),
            padding="same",
            return_sequences=True,
            activation="relu",
        )(x)
        x = layers.BatchNormalization()(x)
        x = layers.ConvLSTM2D(
            filters=64,
            kernel_size=(1, 1),
            padding="same",
            return_sequences=True,
            activation="relu",
        )(x)
        x = layers.Conv3D(
            filters=1, kernel_size=(3, 3, 3), activation="sigmoid", padding="same"
        )(x)

        # Next, we will build the complete model and compile it.
        model = keras.models.Model(inp, x)
        model.compile(
            loss=keras.losses.binary_crossentropy, optimizer=keras.optimizers.Adam(),
        )
        return self.model_autoencoder

