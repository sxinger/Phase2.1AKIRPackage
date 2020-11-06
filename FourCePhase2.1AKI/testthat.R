# establish database connection
# install.packages("ROracle")
library(ROracle)

config_file<-read.csv("~/COVID/config_nh.csv",stringsAsFactors = F)[1,]
conn<-dbConnect(ROracle::Oracle(),
                config_file$username,
                config_file$password,
                file.path(config_file$access,config_file$sid))


# load data


# test out R scripts


