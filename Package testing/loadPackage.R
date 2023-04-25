# Load devtools
library(devtools)

# Install the package from the compressed file
install_local("starFunctions_0.2.0.tar.gz")

# Load the package
library(starFunctions)

data("starData")

test <- starDist(starData$Luminosity[1],starData$Absolute.Magnitude[1])
