# BootFit

##devtools::install_github("hyunsooseol/BootFit")

library(BootFit)

### Using example data

raven <- read.csv("raven.csv")

boot.outfit(raven)

boot.infit(raven)
