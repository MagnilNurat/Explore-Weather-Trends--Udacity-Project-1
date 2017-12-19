#Load Package
library(ggplot2)

#Set working directory
setwd('//Users/Magnil/OneDrive/Udacity/Projects/Explore Weather Trends')
getwd()

#Read the dataset and store it into a dataframe
trends <- read.csv('Weather_Trends.csv')
View(trends)

## Add average temperatures into variables
global_avg_temp <- trends$global_avg_temp
hyd_avg_temp <- trends$hyd_avg_temp
global_MA <- trends$Global_seven_year_MA
hyd_MA <- trends$Hyderabad_seven_year_MA

#Plot to visually view if relation exists between global and local temperatures
ggplot(trends,aes(global_avg_temp, hyd_avg_temp))+ geom_point()

#Computing correlation coefficient for average temperatures
cor.test(global_avg_temp, hyd_avg_temp) #default is Pearson's
cor.test(global_avg_temp, hyd_avg_temp, method = "kendall")
cor.test(global_avg_temp, hyd_avg_temp, method = "spearman")

#Computing correlation coefficient for 7 year moving averages
cor.test(global_MA, hyd_MA) #default is Pearson's
cor.test(global_MA, hyd_MA, method = "kendall")
cor.test(global_MA, hyd_MA, method = "spearman")
