SponserData <- read.csv("sponsor_data_countrywise_backup.csv")
head(SponserData)
colnames(SponserData)<- c('Country','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019')
plot(colnames(SponserData),SponserData[1,])
