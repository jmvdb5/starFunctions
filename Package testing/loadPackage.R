# Load devtools
library(devtools)

# Install the package from the compressed file, BE SURE TO CHECK THE RELEASE NUMBER
install_local("starFunctions_0.2.1.tar.gz")

# Load the package
library(starFunctions)

data("starData")

# Using starDistMainSeq() 
test1 <- starDistMainSeq(0.0005, 16.6)
test1

# Using starDistMainSeq() with the dataset
test2 <- starDistMainSeq(starData$Luminosity[1],starData$Absolute.Magnitude[1])
test2

# Using starDist() 
test3 <- starDist(3.846e26, 5778, 4.83, -0.0452)
test3

# Using starDistMainSeq() 
bolCorrApprox(8800)

test4 <- bolCorrApprox(2800)
test4

# Using starSurfaceArea() 
starSurfaceArea(0.16)

test5 <- starSurfaceArea(0.102)
test5
