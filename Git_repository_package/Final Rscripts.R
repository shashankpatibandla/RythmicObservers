## read final cleaned csv file
setwd("C:/Users/shashank/Documents/USA/ISQA 8086 - Data to decisions/MortonArboretum/2017-2018_Rollinson")
analysisdata = read.csv("replacedvaluesfinal2017.csv", header = TRUE, stringsAsFactors = FALSE)
na.exclude(analysisdata)
View(analysisdata)

analysisdata$leaf_breaking_bud_intensity[analysisdata$leaf_breaking_bud_intensity == "10-Mar"] <- "03-10"
analysisdata$flower_buds_intensity[analysisdata$flower_buds_intensity == "10-Mar"] <- "03-10"
analysisdata$fruit_intensity[analysisdata$fruit_intensity == "10-Mar"] <- "03-10"
analysisdata$fruit_drop_intensity[analysisdata$fruit_drop_intensity == "10-Mar"] <- "03-10"
analysisdata$flower_buds_intensity[analysisdata$flower_buds_intensity == "43169.00"] <- "03-10"
analysisdata[analysisdata == ""] <- "0"

str(analysisdata)

## Range of intensities based on species
library(doBy)
summaryBy(leaf_breaking_bud_intensity ~ species, data = analysisdata, FUN = range)
summaryBy(leaf_intensity ~ species, data = analysisdata, FUN = range)
summaryBy(leaf_increasing_size_intensity ~ species, data = analysisdata, FUN = range)
summaryBy(leaf_color_intensity ~ species, data = analysisdata, FUN = range)
summaryBy(flower_buds_intensity ~ species, data = analysisdata, FUN = range)
summaryBy(flower_open_intensity ~ species, data = analysisdata, FUN = range)
summaryBy(fruit_intensity ~ species, data = analysisdata, FUN = range)
summaryBy(fruit_ripe_intensity ~ species, data = analysisdata, FUN = range)
summaryBy(fruit_drop_intensity ~ species, data = analysisdata, FUN = range)


## Discriptive statistics to understand which species are showing which kind of phenophase more
acutissima_subset <- subset(analysisdata, species=="acutissima",
                            select = c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                        leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                        fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(acutissima_subset)
summary(acutissima_subset)

alba_subset <- subset(analysisdata, species=="alba",
                      select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(alba_subset)
summary(alba_subset)

analysisdata$species[analysisdata$species == "x freemanii"] <- "xfreemanii"
xfreemanii_subset <- subset(analysisdata, species=="xfreemanii",
                            select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                     leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                     fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(xfreemanii_subset)
summary(xfreemanii_subset)

bicolor_subset <- subset(analysisdata, species=="bicolor",
                         select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                  leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                  fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(bicolor_subset)
summary(bicolor_subset)

coccinea_subset <- subset(analysisdata, species=="coccinea",
                          select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                   leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                   fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(coccinea_subset)
summary(coccinea_subset)

dalechampii_subset <- subset(analysisdata, species=="dalechampii",
                             select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                      leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                      fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(dalechampii_subset)
summary(dalechampii_subset)

ellipsoidalis_subset <- subset(analysisdata, species=="ellipsoidalis",
                               select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                        leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                        fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(ellipsoidalis_subset)
summary(ellipsoidalis_subset)

gambelii_subset <- subset(analysisdata, species=="gambelii",
                          select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                   leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                   fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(gambelii_subset)
summary(gambelii_subset)

georgiana_subset <- subset(analysisdata, species=="georgiana",
                           select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                    leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                    fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(georgiana_subset)
summary(georgiana_subset)

hartwissiana_subset <- subset(analysisdata, species=="hartwissiana",
                              select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                       leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                       fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(hartwissiana_subset)
summary(hartwissiana_subset)

ilicifolia_subset <- subset(analysisdata, species=="ilicifolia",
                            select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                     leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                     fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(ilicifolia_subset)
summary(ilicifolia_subset)

imbricaria_subset <- subset(analysisdata, species=="imbricaria",
                            select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                     leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                     fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(imbricaria_subset)
summary(imbricaria_subset)


lobata_subset <- subset(analysisdata, species=="lobata",
                        select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                 leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                 fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(lobata_subset)
summary(lobata_subset)


lyrata_subset <- subset(analysisdata, species=="lyrata",
                        select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                 leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                 fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(lyrata_subset)
summary(lyrata_subset)


macrocarpa_subset <- subset(analysisdata, species=="macrocarpa",
                            select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                     leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                     fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(macrocarpa_subset)
summary(macrocarpa_subset)


marilandica_subset <- subset(analysisdata, species=="marilandica",
                             select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                      leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                      fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(marilandica_subset)
summary(marilandica_subset)


michauxii_subset <- subset(analysisdata, species=="michauxii",
                           select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                    leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                    fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(michauxii_subset)
summary(michauxii_subset)


montana_subset <- subset(analysisdata, species=="montana",
                         select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                  leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                  fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(montana_subset)
summary(montana_subset)


muehlenbergii_subset <- subset(analysisdata, species=="muehlenbergii",
                               select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                        leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                        fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(muehlenbergii_subset)
summary(muehlenbergii_subset)


palustris_subset <- subset(analysisdata, species=="palustris",
                           select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                    leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                    fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(palustris_subset)
summary(palustris_subset)


petraea_subset <- subset(analysisdata, species=="petraea",
                         select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                  leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                  fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(petraea_subset)
summary(petraea_subset)


phellos_subset <- subset(analysisdata, species=="phellos",
                         select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                  leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                  fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(phellos_subset)
summary(phellos_subset)


prinoides_subset <- subset(analysisdata, species=="prinoides",
                           select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                    leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                    fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(prinoides_subset)
summary(prinoides_subset)


pyrenaica_subset <- subset(analysisdata, species=="pyrenaica",
                           select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                    leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                    fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(pyrenaica_subset)
summary(pyrenaica_subset)


robur_subset <- subset(analysisdata, species=="robur",
                       select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(robur_subset)
summary(robur_subset)


rubra_subset <- subset(analysisdata, species=="rubra",
                       select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(rubra_subset)
summary(rubra_subset)


shumardii_subset <- subset(analysisdata, species=="shumardii",
                           select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                    leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                    fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(shumardii_subset)
summary(shumardii_subset)


stellata_subset <- subset(analysisdata, species=="stellata",
                          select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                   leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                   fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(stellata_subset)
summary(stellata_subset)


subfalcata_subset <- subset(analysisdata, species=="subfalcata",
                            select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                     leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                     fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(subfalcata_subset)
summary(subfalcata_subset)


velutina_subset <- subset(analysisdata, species=="velutina",
                          select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                   leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                   fruit_observed, fruit_ripe_observed, fruit_drop_observed))
View(velutina_subset)
summary(velutina_subset)

dateBlock = unlist(strsplit(as.character(analysisdata$date_observed),"/"))
month = dateBlock[seq(1, length(dateBlock),3)]
analysisdata$month = month
View(analysisdata)
analysisdata$month <- as.numeric(as.character(analysisdata$month))
max(analysisdata$month)
min(analysisdata$month)

subfalcata_subset1 = subset(analysisdata, species=="subfalcata")
View(subfalcata_subset1)
results_subfalcata = data.frame()
for ( mn in unique(subfalcata_subset1$month) )
{
  sub2 = subset(subfalcata_subset1, month==mn)
  mean = mean(sub2$leaf_breaking_bud_observed)
  results_subfalcata = rbind(results_subfalcata, data.frame(mn, mean))
}


velutina_subset1 = subset(analysisdata, species=="velutina")
View(velutina_subset1)
results_velutina = data.frame()
for ( mn in unique(velutina_subset1$month) )
{
  sub3 = subset(velutina_subset1, month==mn)
  mean = mean(sub3$leaf_observed)
  results_velutina = rbind(results_velutina, data.frame(mn, mean))
}

shumardii_subset1 = subset(analysisdata, species=="shumardii")

results_shumardii = data.frame()
for ( mn in unique(shumardii_subset1$month) )
{
  sub4 = subset(shumardii_subset1, month==mn)
  mean = mean(sub4$leaf_breaking_bud_observed)
  results_shumardii = rbind(results_shumardii, data.frame(mn, mean))
}

rubra_subset1 = subset(analysisdata, species=="rubra")

results_rubra = data.frame()
for ( mn in unique(rubra_subset1$month) )
{
  sub5 = subset(rubra_subset1, month==mn)
  mean = mean(sub5$leaf_breaking_bud_observed)
  results_rubra = rbind(results_rubra, data.frame(mn, mean))
}


## Plots

#setworking directory
setwd("C:/Users/shashank/Documents/USA/ISQA 8086 - Data to decisions/MortonArboretum/2017-2018_Rollinson")
plotdata = read.csv("plotdata.csv")
View(plotdata)

rubra_subset_plot = subset(plotdata, species=="rubra")
View(rubra)
## Plots for leaf breaking observed, flower breaking observed and Fruit breaking observed versus Months in 2017 specifically for rubra species
## This answers the research question number 8.

library(ggplot2)
spline_int_rubra_leaf = as.data.frame(spline(rubra_subset_plot$month, rubra_subset_plot$leaf_breaking_bud_observed))
fig1 = ggplot(rubra_subset_plot, aes(rubra_subset_plot$month, rubra_subset_plot$leaf_breaking_bud_observed
)) + geom_line(data = spline_int_rubra_leaf, aes(x=x, y=y))+ scale_x_continuous(name = "month", breaks = c(2,3,4,5,6,7,8,9,10,11,12)) + scale_y_continuous(name = "Leaf budding time", limits = c(-0.01,1), breaks = c(0,1))

fig1

spline_int_rubra = as.data.frame(spline(rubra_subset_plot$month, rubra_subset_plot$flower_buds_observed))
fig2 = ggplot(rubra_subset_plot, aes(rubra_subset_plot$month, rubra_subset_plot$flower_buds_observed
)) + geom_line(data = spline_int_rubra, aes(x=x, y=y))+ scale_x_continuous(name = "month", breaks = c(2,3,4,5,6,7,8,9,10,11,12)) + scale_y_continuous(name = "Flower budding time", limits = c(-0.01,1), breaks = c(0,1))

fig2

spline_int_rubra_fruit = as.data.frame(spline(rubra_subset_plot$month, rubra_subset_plot$fruit_observed))
fig3 = ggplot(rubra_subset_plot, aes(rubra_subset_plot$month, rubra_subset_plot$fruit_observed
)) + geom_line(data = spline_int_rubra_fruit, aes(x=x, y=y))+ scale_x_continuous(name = "month", breaks = c(2,3,4,5,6,7,8,9,10,11,12)) + scale_y_continuous(name = "Fruit budding time", limits = c(-0.01,1.1), breaks = c(0,1))

fig3

## This will give an overview all the budding related phenophases during an year for a specific specie  

library(gridExtra)
grid.arrange(fig1,fig2,fig3,nrow=3)

## YOu can find all the other plots in directory
