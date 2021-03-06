setwd("~/Desktop/ISQA8086-RScript")
plotdata = read.csv("plotdata.csv", header = TRUE, stringsAsFactors = FALSE)
na.exclude(plotdata)
View(plotdata)

plotdata$leaf_breaking_bud_intensity[plotdata$leaf_breaking_bud_intensity == "10-Mar"] <- "03-10"
plotdata$flower_buds_intensity[plotdata$flower_buds_intensity == "10-Mar"] <- "03-10"
plotdata$fruit_intensity[plotdata$fruit_intensity == "10-Mar"] <- "03-10"
plotdata$fruit_drop_intensity[plotdata$fruit_drop_intensity == "10-Mar"] <- "03-10"
plotdata$flower_buds_intensity[plotdata$flower_buds_intensity == "43169.00"] <- "03-10"
plotdata[plotdata == ""] <- "0"

plotdata$leaf_increasing_size_intensity[plotdata$leaf_increasing_size_intensity == "0"] <- "1"

str(plotdata)
library(dplyr)
deletedata <- select(plotdata, -X.1, -X)
deletedata$leaf_increasing_size_intensity[deletedata$leaf_increasing_size_intensity == "0"] <- as.numeric("1")
 deletedata$leaf_increasing_size_intensity[deletedata$leaf_increasing_size_intensity == "5-24%"] <- as.numeric("2")
 deletedata$leaf_increasing_size_intensity[deletedata$leaf_increasing_size_intensity == "<25%"] <- as.numeric("2")
 deletedata$leaf_increasing_size_intensity[deletedata$leaf_increasing_size_intensity == "25-49%"] <- "3"
 deletedata$leaf_increasing_size_intensity[deletedata$leaf_increasing_size_intensity == "25-49"] <- "3"
 deletedata$leaf_increasing_size_intensity[deletedata$leaf_increasing_size_intensity == "50-74%"] <- "4"
 deletedata$leaf_increasing_size_intensity[deletedata$leaf_increasing_size_intensity == "50-74% "] <- "4"
 deletedata$leaf_increasing_size_intensity[deletedata$leaf_increasing_size_intensity == "75-94%"] <- "5"
 deletedata$leaf_increasing_size_intensity[deletedata$leaf_increasing_size_intensity == ">95%"] <- "6"
is.character(deletedata$leaf_increasing_size_intensity)
list(deletedata$leaf_increasing_size_intensity)

#normalplot for leaf_increasing_size_intensity based on month
plot(deletedata$leaf_increasing_size_intensity ~ deletedata$month)
plot(deletedata$leaf_increasing_size_intensity ~ deletedata$month,main="Leaf size analysis",xlab="month",ylab="leaf size intensity")

#subsetting and plotting again based on month
palustris_subset <- subset(deletedata, species=="palustris")
plot(palustris_subset$leaf_increasing_size_intensity ~ palustris_subset$month)
plot(palustris_subset$leaf_increasing_size_intensity ~ palustris_subset$month,main="Leaf size analysis for palustris",xlab="month",ylab="leaf size intensity")

velutina_subset <- subset(deletedata, species=="velutina")
plot(velutina_subset$leaf_increasing_size_intensity ~ velutina_subset$month)
plot(velutina_subset$leaf_increasing_size_intensity ~ velutina_subset$month,main="Leaf size analysis for velutina",xlab="month",ylab="leaf size intensity")


#using ggplot
palustris_subset = subset(deletedata, species=="palustris")
alba_subset = subset(deletedata, species=="alba")
rubra_subset_plot = subset(plotdata, species=="rubra")




library(ggplot2)


## Plots for leaf size intensity versus Months in 2017 specifically for species palustris and alba
##This answers research question 2.

fig = ggplot(palustris_subset, aes(palustris_subset$month, palustris_subset$leaf_increasing_size_intensity
)) + 
  geom_point()+ 
  scale_x_continuous(name = "month", breaks = c(2,3,4,5,6,7,8,9,10,11,12))+ 
  ylab("Leaf increase size")+
ggtitle("Leaf size analysis for species palustris") 

fig


fig0 = ggplot(alba_subset, aes(alba_subset$month, alba_subset$leaf_increasing_size_intensity
)) + 
  geom_point()+ 
  scale_x_continuous(name = "month", breaks = c(2,3,4,5,6,7,8,9,10,11,12))+ 
  ylab("Leaf increase size")+
  ggtitle("Leaf size analysis for species alba")   

fig0


#ggplot for column leaf_increasing_size_intensity based on month
fig4 = ggplot(deteledata = leaf_increasing_size_intensity, mapping = aes(deletedata$month, deletedata$leaf_increasing_size_intensity)) + 
  geom_point() +  
  scale_x_continuous(name = "month", breaks = c(1,3,4,5,6,7,8,9,10,11,12))+
  ylab("Leaf increase size")+
  ggtitle("Leaf size analysis for all species")
  
fig4 

library(gridExtra)
grid.arrange(fig,fig0,fig4,nrow=3)

## Plots for leaf breaking observed, flower breaking observed and Fruit breaking observed versus Months in 2017 specifically for rubra species
## This answers the research question number 8.

spline_int_rubra_leaf = as.data.frame(spline(rubra_subset_plot$month, rubra_subset_plot$leaf_breaking_bud_observed))
fig1 = ggplot(rubra_subset_plot, aes(rubra_subset_plot$month, rubra_subset_plot$leaf_breaking_bud_observed
)) + geom_line(data = spline_int_rubra_leaf, aes(x=x, y=y))+ scale_x_continuous(name = "month", breaks = c(2,3,4,5,6,7,8,9,10,11,12)) + scale_y_continuous(name = "Leaf budding time", limits = c(-0.01,1), breaks = c(0,1))+
  ggtitle("Leaf size analysis for species rubra")

fig1  

spline_int_rubra = as.data.frame(spline(rubra_subset_plot$month, rubra_subset_plot$flower_buds_observed))
fig2 = ggplot(rubra_subset_plot, aes(rubra_subset_plot$month, rubra_subset_plot$flower_buds_observed
)) + geom_line(data = spline_int_rubra, aes(x=x, y=y))+ scale_x_continuous(name = "month", breaks = c(2,3,4,5,6,7,8,9,10,11,12)) + scale_y_continuous(name = "Flower budding time", limits = c(-0.01,1), breaks = c(0,1))+
  ggtitle("Flower budding time analysis for species rubra")


fig2

spline_int_rubra_fruit = as.data.frame(spline(rubra_subset_plot$month, rubra_subset_plot$fruit_observed))
fig3 = ggplot(rubra_subset_plot, aes(rubra_subset_plot$month, rubra_subset_plot$fruit_observed
)) + geom_line(data = spline_int_rubra_fruit, aes(x=x, y=y))+ scale_x_continuous(name = "month", breaks = c(2,3,4,5,6,7,8,9,10,11,12)) + scale_y_continuous(name = "Fruit observed time", limits = c(-0.01,1.1), breaks = c(0,1))+
  ggtitle("Fruit time analysis for species rubra")


fig3

## This will give an overview all the budding related phenophases during an year for a specific specie  

library(gridExtra)
grid.arrange(fig1,fig2,fig3,nrow=3)
