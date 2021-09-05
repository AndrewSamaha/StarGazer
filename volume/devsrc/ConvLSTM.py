import numpy as np
import pandas as pd
import tensorflow as tf
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
from sklearn.preprocessing import StandardScaler, MinMaxScaler
from os import walk
import imageio
import datetime
import matplotlib.pyplot as plt

class ConvLSTM(): 
                
    def prepare(self):
        return self.df

    
    def __init__(self, df):
        self.batchsize=64
        return

    def createModel(self, final_activation='sigmoid'):
        
        inp = layers.Input(shape=(None, *self.x_train.shape[2:]))
        #inp = layers.Input(shape=(None, 100,100,1))

        # We will construct 3 `ConvLSTM2D` layers with batch normalization,
        # followed by a `Conv3D` layer for the spatiotemporal outputs.
        x = layers.ConvLSTM2D(
            filters=16,
            kernel_size=(5, 5),
            padding="same",
            return_sequences=True,
            activation="relu",
            name="ConvLSTM2D_1",
            data_format="channels_last"
        )(inp)

        if 1:
            x = layers.BatchNormalization()(x)
            x = layers.ConvLSTM2D(
                filters=16,
                kernel_size=(3, 3),
                padding="same",
                return_sequences=True,
                activation="relu",
                name="ConvLSTM2D_2",
                data_format="channels_last"
            )(x)

        x = layers.BatchNormalization()(x)

        if 1:
            x = layers.ConvLSTM2D(
                filters=16,
                kernel_size=(1, 1),
                padding="same",
                return_sequences=True,
                activation="relu",
                name="ConvLSTM2D_3",
                data_format="channels_last"
            )(x)
        x = layers.Conv3D(
            filters=1, kernel_size=(3, 3, 3), activation=final_activation, padding="same",
            name="ConvLSTM3D",
            data_format="channels_last"
        )(x)

        #x = layers.Dense(10_000, activation='relu')(x)

        # Next, we will build the complete model and compile it.
        model = keras.models.Model(inp, x)
        model.compile(
            #loss=keras.losses.mse, optimizer=keras.optimizers.Adam()
            #loss=keras.losses.mse, optimizer=keras.optimizers.RMSprop(1e-6),
            #loss=keras.losses.mse, optimizer=keras.optimizers.SGD(1e-6),
            loss=keras.losses.mse, optimizer=keras.optimizers.SGD() #,  #best so far
        )
        
        self.model = model
        return model
    
    def AddEmptyChannel(x):
        x = np.expand_dims(x,axis=4)
        return x

    def Batchify(arr, batchsize):
        oldshape = arr.shape
        remainder = arr.shape[0] % batchsize
        if remainder > 0:
            arr = arr[:-1 * remainder]
        print(arr.shape)
        numbatches = arr.shape[0] / batchsize
        arr = arr.reshape(int(batchsize), int(numbatches), 100, 100)
        arr = AddEmptyChannel(arr)
        print(f"{oldshape} -> {arr.shape}")
        return arr
        
    def loadModel(self, path):
        self.model_path = path
        self.model = keras.models.load_model(path)

    def create_shifted_frames(data):    
        #this produces 3-d shape index, x, y
        x = data[ 0 : data.shape[0] - 1, :, :]
        y = data[ 1 : data.shape[0], :, :]
        return x, y

    def loadImages(self, path, max_n=1_000):
        self.image_path = path
        self.max_n = max_n
        self.allfilenames = next(walk(self.image_path), (None, None, []))[2]  # [] if no file
        self.filenames = filenames[:max_n]
        batchsize = self.batchsize
        dataset = None
        for i,file in enumerate(filenames):
            fullpath = savepath+file
            im = imageio.get_reader(fullpath)
            for frame in im:
                frame.reshape(-1,100,100)
                if dataset is None:
                    dataset = frame
                else:
                    dataset = np.dstack((dataset, frame))
            if i % 300 == 0:
                percent = round(i*100/len(filenames))
                print(f"{percent}%")
                
        dataset = np.swapaxes(dataset, 0, 2)
        indexes = np.arange(dataset.shape[0])
        np.random.shuffle(indexes)
        train_index = indexes[: int(0.9 * dataset.shape[0])]
        val_index = indexes[int(0.9 * dataset.shape[0]) :]
        train_dataset = dataset[train_index]
        val_dataset = dataset[val_index]

        # Normalize the data to the 0-1 range.
        train_dataset = train_dataset / 255
        val_dataset = val_dataset / 255

        # Apply the processing function to the datasets.
        x_train, y_train = create_shifted_frames(train_dataset)
        x_val, y_val = create_shifted_frames(val_dataset)

        x_train = Batchify(x_train, batchsize)
        y_train = Batchify(y_train, batchsize)
        x_val = Batchify(x_val, batchsize)
        y_val = Batchify(y_val, batchsize)

        self.x_train = x_train
        self.y_train = y_train
        self.x_val = x_val
        self.y_val = y_val

    def loadImageAsArray(self, path):
        im = imageio.get_reader(path)
        for frame in im:
            frame = frame.reshape(1,100,100)
            break
        frame = np.expand_dims(frame,0)
        return frame

    def predict(self, img_array):
        return self.model.predict(img_array)
    
    def reshapePredictionToImage(self, prediction):
        return np.squeeze(np.squeeze(prediction, 0),0)

    def train(self, x_train, y_train, epochs=200, monitor="val_loss"):
        # 
        self.early_stopping = keras.callbacks.EarlyStopping(monitor=monitor, patience=8, restore_best_weights=True)
        self.reduce_lr = keras.callbacks.ReduceLROnPlateau(monitor=monitor, patience=3)
        self.history = self.model.fit(x_train,
                                        y_train,
                                        batch_size=self.batchsize,
                                        epochs=epochs,
                                        callbacks=[self.early_stopping, self.reduce_lr],
                                        verbose=1)
        return self.history
    
    def extrapolate(self, starting_array, steps):
        predictions = []
        current_array = np.copy(starting_array)
        predictions.append(current_array)
        for i in range(steps):
            #print(f'predicting step {i}')
            current_array = self.model.predict(current_array)
            predictions.append(current_array)
        return predictions

    def graphPredictions(self, predictions):
        size = 3
        fig, ax = plt.subplots(len(predictions),1, figsize=(size,size*len(predictions)))
        for i,prediction in enumerate(predictions):
            prediction_img = self.reshapePredictionToImage(prediction)
            ax[i].imshow(prediction_img)
            ax[i].axis('off')
        return fig, ax, plt
    
    def extrapolateFromImagePath(self, imagepath, datestr, steps):
        frame = self.loadImageAsArray(imagepath + datestr + '.png')
        self.predictions = self.extrapolate(frame, steps)
        return self.graphPredictions(self.predictions)
