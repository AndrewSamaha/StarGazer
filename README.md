# Project Stargazer: Using Autoencoders to Visualize Real Estate Markets
### Real-Estate Markets
Real-estate markets consist of goods that are feature rich and complex that make large-scale comparisons and understanding difficult. Some of the features are easy to compare (e.g., 2 bedroom vs. 3), but others are categorical (e.g., neighborhood, house vs. condo). Most vexing of all is aligning combinations of features. Figure 1 and Figure 2 show a list of features found in conveyances and parcel data published by Hillsborough County. There are over 60 and consist of mixed types (continuous, numeric & monotonic, discrete, and categorical).
<img src=img/fields1.png width=100px caption='figure 1'>
<img src=img/fields2.png width=100px caption='figure 2'>

### Autoencoders and Dimensionality Reduction
Autoencoders are subtype of neural network consisting of a minimum of three layers where the middle (hidden) layer is smaller than the input and output layers, e.g.:
<img src=img/ayinde.zurada.figure2.png width=200px caption='figure 3, taken from Ayinde & Zurada (2017)'>
1. An input layer: n=50
2. A hidden layer: n=2
3. An output layer: n=50

Through training, the network learns to output data that corresponds to the input layer, but importantly it learns a parameter constrained representation of the original features. In this way, autoencoders are often said to 'compress' data.
