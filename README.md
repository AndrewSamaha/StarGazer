## Code Index
* **/dev/src/rea_cd_autoencoder.py** - Contains the class REA_CD_Autoencoder that uses a trained autoencoder to convert the categorical column REA_CD (Reason Code) to a two-dimensional continuous output. Only handles predictions, does not contain model training or build methods.
* **/dev/src/SlimAutoencoder.py** - Contains the class SilmAutoencoderBuild() that contains methods to build the second-stage autoencoder, as well as prepare the data.
* **/dev/src/ConvLSTM.py** - Contains the class ConvLSTM that builds the Convolutional LSTM and contains methods to perform predictions.