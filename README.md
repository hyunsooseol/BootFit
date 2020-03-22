# BootFit

##devtools::install_github("hyunsooseol/BootFit")

library(BootFit)

### Using example data

raven <- read.csv("raven.csv")

boot.in(raven) # item infit mnsq statistics

boot.infit(raven) # bootstrap t statistics

infit.conf(raven) # bootstrap infit 95% CI

boot.out(raven) # item outfit mnsq statistics

boot.outfit(raven) # bootstrap t statistics

outfit.conf(raven) # bootstrap outfit 95% CI
