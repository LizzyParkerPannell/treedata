### BES HACKATHON 2019
### cleaning the "condition" category of urban tree data sets


setwd("~/Hackathon/treedata")
camden_data<-read.csv("camden_trees.csv")
edinburgh_data<-read.csv("edinburgh.csv")
bristol_data<-read.csv("bristol.csv")

grep("condition", colnames(camden_data), ignore.case=TRUE)
# agrep() is approximate grep

### dataspice package
install.packages("devtools")
devtools::install_github("ropenscilabs/dataspice", force=TRUE)

library(readr)
library(dataspice)

dir.create("data")
write_csv(camden_data, here::here("data", "camden.csv"))
create_spice()
edit_creators()
##come back to these:
edit_access()
edit_biblio()

prep_attributes()
edit_attributes()

