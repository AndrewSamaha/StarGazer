# Project Stargazer: Using Autoencoders to Visualize Real Estate Markets
### Real-Estate Markets
Real-estate markets consist of goods that are feature rich and complex that make large-scale comparisons and understanding difficult. Some of the features are easy to compare (e.g., 2 bedroom vs. 3), but others are categorical (e.g., neighborhood, house vs. condo). Most vexing of all is aligning combinations of features. Figure 1 and Figure 2 show a list of features found in conveyances and parcel data published by Hillsborough County. There are over 60 and consist of mixed types (continuous, numeric & monotonic, discrete, and categorical).
| Figure 1  | Figure 2  |
|---|---|
| <img src=img/fields1.png width=100px caption='Figure 1'>  |  <img src=img/fields2.png width=100px caption='Figure 2'> |


## Autoencoders and Dimensionality Reduction
Autoencoders are subtype of neural network consisting of a minimum of three layers where the middle (hidden) layer is smaller than the input and output layers, e.g.:
1. An input layer: n=50
2. A hidden layer: n=2
3. An output layer: n=50

Through training, the network learns to output data that corresponds to the input layer, but importantly it learns a parameter constrained representation of the original features. In this way, autoencoders are often said to 'compress' data.

Below is another example of this architecture for a 3-layer autoencoder published by Ayinde & Zurada (2017).
| Figure 3, from Ayinde & Zurada (2017) |
|---|
| <img src=img/ayinde.zurada.figure2.png width=200px >  | 

Although autoencoders can learn essential representations, they remain domain specific. That is, an autoencoder trained to encode and decode images of faces would not perform well on financial datasets.

## Purpose
The goal of this project was to train autoencoders using conveyance data in order to build condensed, 2-dimensional, representation. Such a representation might aid in comparison and similarity.

### Data
Data were retrieved from a public-facing FTP site maintained by Hillsborough County. The database contained over 2 million records from 1901 to 2021, but was truncated from 2000 to 2021, resulting in 1.3 million records with 64 dimensions, 11 of which were numeric and monotonic (where higher numbers mean more of a thing, e.g., bedrooms, acreage, etc), and the remaining 53 were categorical.

### Architecture
Early experiments trying to cram all of these features into a single autoencoder failed during training with negative or ever-increasing loss functions. I suspected that the mix of categorical (one-hot encoded) and monotonic features made training especially difficult. So, I settled on a two-stage architecture where those one-hot encoded columns were fed into their own autoencoder, and the activation at their hidden layers were concatenated with the original monotic features and fed as input into a second stage (See Figure 4, below).
| Figure 4. Two-Stage Architecture |  Hidden Layer Activation |
|---|---|
| <img src=img/poc-architecture.png width=200px >  |  <img src=img/out-15fps.gif width=200px >  |

## References
Ayinde, B. O., & Zurada, J. M. (2017). Deep learning of constrained autoencoders for enhanced understanding of data. *IEEE transactions on neural networks and learning systems, 29(9)*, 3969-3979. Retrieved from https://par.nsf.gov/servlets/purl/10079214