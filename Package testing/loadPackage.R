# Load devtools
library(devtools)

# Install the package from the compressed file, BE SURE TO CHECK THE RELEASE NUMBER
install_local("starFunctions_0.2.1.tar.gz")

# Load the package
library(starFunctions)

data("starData")

test <- starDist(starData$Luminosity[1],starData$Absolute.Magnitude[1])
