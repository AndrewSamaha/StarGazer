## File Index
### Data
* **/Datasets/foreclosed_folios.pickle** - A list of folios that had at least one foreclosure in the time period
* **/Datasets/notforeclosed_folios.pickle** - A list of folios that had no foreclosures in the time preiod
* **/Datasets/residencial_conveyances_jan2000_and_up.pickle** - Conveyances and their associated parcels for residential properties (DOR_CODES < 1000)
* **/Datasets/residencial_conveyances_jan2000_and_up_ohe.pickle** - A one-hot-encoded version of the categorical variables in the above.
### Models
* **/devsrc/rea_cd_autoencoder.py** - Contains the class REA_CD_Autoencoder that uses a trained autoencoder to convert the categorical column REA_CD (Reason Code) to a two-dimensional continuous output. Only handles predictions, does not contain model training or build methods.
* **/devsrc/SlimAutoencoder.py** - Contains the class SilmAutoencoderBuild() that contains methods to build the second-stage autoencoder, as well as prepare the data.
* **/devsrc/ConvLSTM.py** - Contains the class ConvLSTM that builds the Convolutional LSTM and contains methods to perform predictions.
* **/devsrc/forecast.py** - Empty.

### Helper Functions
* **/devsrc/db.py** - Contains basic db functions used in the flask app and jupyter notebooks.

### Flask App
* **/volume/app/app.py** - Flask app