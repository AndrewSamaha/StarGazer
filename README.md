## Code Index
### Models
* **/devsrc/rea_cd_autoencoder.py** - Contains the class REA_CD_Autoencoder that uses a trained autoencoder to convert the categorical column REA_CD (Reason Code) to a two-dimensional continuous output. Only handles predictions, does not contain model training or build methods.
* **/devsrc/SlimAutoencoder.py** - Contains the class SilmAutoencoderBuild() that contains methods to build the second-stage autoencoder, as well as prepare the data.
* **/devsrc/ConvLSTM.py** - Contains the class ConvLSTM that builds the Convolutional LSTM and contains methods to perform predictions.
* **/devsrc/forecast.py** - 

### Helper Functions
* **/devsrc/db.py** - Contains basic db functions used in the flask app and jupyter notebooks.

### Flask App
* **/volume/app/app.py** - Flask app