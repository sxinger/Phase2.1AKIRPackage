###
# establish database connection
# install.packages("ROracle")
library(ROracle)
config_file<-read.csv("~/COVID/config_nh.csv",stringsAsFactors = F)[1,]
conn<-dbConnect(ROracle::Oracle(),
                config_file$username,
                config_file$password,
                file.path(config_file$access,config_file$sid))

# load data, save a local .csv copy a root directory "/4ceData/Input"
# references:
#  - https://github.com/covidclinical/Phase2.1DataRPackage/blob/b28aeb333996674e98c7088cb08a5ac6c32980ca/FourCePhase2.1Data/R/inputFileFunctions.R#L9
#  - runAnalysis() line 12


# install packages 
# devtools::install_github("https://github.com/covidclinical/Phase2.1DataRPackage", subdir="FourCePhase2.1Data", upgrade=FALSE, force=TRUE)
devtools::install_github("https://github.com/covidclinical/Phase2.1AKIRPackage", subdir="FourCePhase2.1AKI", upgrade=FALSE)
##### not working

# install.packages(c("dplyr",
#                    "tidyr",
#                    "purrr",
#                    "ggplot2",
#                    "tibble",
#                    "data.table",
#                    "RcppRoll",
#                    "zoo",
#                    "survival",
#                    "survminer",
#                    "table1",
#                    "magrittr"))


# test out R scripts
#--source all scripts
files.sources<-list.files("./R")
files.sources<-files.sources[!grepl(".rda",files.sources)]
sapply(files.sources, function(x) source(paste0("./R/",x)))


#--test runAnalysis()
runAnalysis()



