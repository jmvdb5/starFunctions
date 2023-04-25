"StarFunctions"

# Usage and description
This package includes a dataset along with a method to calculate the distance to a star (in Parsecs) 

## Setup and loading data
The following is how to install the package along with including the dataset

```{r setup}
# Include the Library
library(starFunctions)

## If you downloaded the package locally install it like the following, making sure the .tar.gz file is in your directory: ##

# Load devtools
library(devtools)

# Install the package from the compressed file
install_local("starFunctions_0.2.0.tar.gz")

# Import the dataset
data("starData")
```


## Methods
#### Star Distance [starDistMainSeq()]
**NOTE this method is only for main sequence stars**

```{r}
# Using starDistMainSeq() 
test1 <- starDistMainSeq(0.0005, 16.6)
test1

# Using starDistMainSeq() with the dataset
test2 <- starDistMainSeq(starData$Luminosity[1],starData$Absolute.Magnitude[1])
test2
```

#### Star Distance [starDist()]
**NOTE this method is for all stars, but requires the bolometric correction as well**

```{r}
# Using starDist() 
test3 <- starDist(3.846e26, 5778, 4.83, -0.0452)
test3

```

#### Bolometric Correction Approximation [bolCorrApprox()]
**NOTE this method is for all stars, and requires the effective Temperature of the star and is only a table approximation**

```{r}
# Using starDistMainSeq() 
bolCorrApprox(8800)

test4 <- bolCorrApprox(2800)
test4

```
