---
title: "Datacleaning_Rmarkdown"
author: "Shashank Patibandla"
date: '2018-10-10'
output:
  html_document:
    code_folding: hide
    theme: cosmo
    toc: yes
  github_document:
    toc: yes
  pdf_document:
    toc: yes
  word_document: null
---


# Summary of Work on Mortem Arboretum Project

This document gives an overview of the project carried out by our team in order to derive decisions from the data given by mortem arboretum. 

### Target audience

* Our target audience is Mortem Arboretum and Dr. Christy Rollinson who work to improve how oak trees are effected by weather. As the oak trees in Mortem Arboretum are from various locations, they are interested in know when each phenophase occurs in different species and how the phenophases are interlinked. 

* The main focus of Mortem Arboretum is the health and improvements of the trees. They conduct scientific research for tree care and prevention. 

**Mission and goals of Mortem Arboretum** 

"The mission of The Morton Arboretum is &quot;to collect and study trees, shrubs, and other plants from around the world, to display them across naturally beautiful landscapes for people to study and enjoy, and to learn how to grow them in ways that enhance our environment. The goal is to encourage the planting and conservation of trees and other plants for a greener, healthier, and more beautiful world" 

### Decisions our analyisis targets

* Some of our research questions target to get results that Mortem Arboretum are interested in, like how the leaf budding time is effecting the other phonephases. Also if the no. of fruits observed are fully growing to a ripe fruit or are the fruit buds dropping even before they ripen. This helps mortem arboretum understand if any factor is influencing the ripening of the fruit. 

* Also, we have given a overview of how many records are their for each year and if the no. of species have gone up. This gives a nice overview of the data. 

* We also tried to determine if the number of budding phenophase was observed more in 2017 vs 2018. This in-turn will help mortem arboretum to determine this change was due to some significant change.

1. All Species, categorized by year, Total records?
2. In which year (2017 vs 2018) there was the highest number of buds?
3. Does the number of flower and leaf budding impact the no of fruits observed?
4. Which species has the highest number of fruit observed and riped?

**Introduction to Oak Trees**

* The usual life span of Oak Tree is around 200 years, whereas some trees live up to 1000 years. The "Pechanga Great Oak Tree" in the united states is 2000 years old and it is the oldest in the world. It belongs to the species "Quercus agrifolia" which is not a part of our study.

* Oak Trees are generally most resilient trees and only show little to no changes due to climatic changes. But as the climatic changes are increasing there are a lot of ouliers seen in the growth and other elements of a Oak tree. Some of them are really interesting and will help us in better understand some of the extreme data from our datasets about the phenological phases.

* Oak has been chosen as a national tree for many countries such as USA in the year 2004, Germany, England, etc., it is considered as a common symbol of strength.

* Oak Tree has more strength and hardness. It has a high tannin content which makes it very resistant to fungal and insect attacks. Adding to that, they are used to manufacture ships, furniture's, etc.

### Brief description of the Data source (Dataset) 

* The dataset was given by Mortem Arboretum to analysis phenophase patterns in oak tress. It contains of two datasets, one for each year. The datasets contain all most the same variables expect for 2-3 extra variables in 2018. The dataset has around 40 species of oak trees which are originally from different countries. 

* The 2017 data has around 9 months of data which spans accross all the species. Every phenophase has a observed variable and a intensity variable, which tells us if the observer was able to distinctly observe any of the phenophase and how much of the phenophase was visible using the intensity value. The data was mostly clean, but, their were a lot of observers data entry issues which had to be cleaned using various methods in data cleaning process

* The 2018 data was only for 4 months of data which spans over more species than the 2017 dataset. But, it lacks the data quality of 2017, which was a major issue in using the dataset. Also being, 4 months of data, all the phonephases was never completed. This lead to a lot of issues for plotting and statistical analysis.<br>

The dataset has 32 columns and around 3000 observations for each year. We are highlighting the important columns below:

1. Genus
2. Species
3. date_observed
4. id (uniquely identifies a tree)
5. Data about leaves such as
  * Leaf_breaking_bud_observed
  * Leaf_breaking_bud_intensity
  * Leaf_size_increased
  * Leaf_color_observed
  * Leaf_color_intensity
  * Leaf_Falling_Observed
6. Data about Flowers
7. Data about Fruits (acorns)

### Brief description of the Data Cleaning

#### Issues with the data

The 2018 data is not complete: data from 2017 is from March-Dec. But we only have data from March to August for 2018. The data we received is good overall, but there were some issues that we encountered. The issues we encountered in each year's data are as follows:

##### 2017

Leaf_breaking_bud_observed: 10 missing value  
Leaf_breaking_bud_intensity: few values were as 10-March instead of count estimate. And most of the values were missing  
Leaf_observed: 40 missing values  
Leaf_intensity: 686 blank  
Leaf_increasing_size observed: 12 missing field  
Leaf_increasing_size intensity: 1954 missing field  
leaf_color_observed: 43 blanks and one - ? (does have a note for ?)  
leaf_color_intensity: 233 blank  
leaf_falling observed: 45 blank and 5 - ? (no notes)  
leaf_falling_intensity: mentioned in metadata but cannot find this column  
flower_buds_observed: 13 blanks and two - ? (note for only one)  
flower_buds_intensity: 722 blank and 10 - 10-mar  
flower_open_observed: 13 blank and one - ? (does have note for ?)  
flower_open_intensity: 741 blank  
flower_pollen_release_observed: 14 blank and 177 - ? and only 7 has notes  
flower_pollen_release_intensity: 157 blank and notes on only 22  
fruit_observed: 16 blank and 16 - ? and only 2 has notes  
fruit_intensity: 626 blank and 71 has 10-mar  
fruit_ripe_observed: 21 blank and 6 - ? only three has notes  
fruit_ripe_intensity: 611 blanks (only 173 has notes)  
fruit_drop_observed: 17 blank and 6 ? only three has notes  
fruit_drop_intensity: 568 blank and 71 has 10-Mar  

##### 2018

In 2018 there are few new units in each column like there is did not look and NA but there is only Yes No blank and ? in the 2017 data and in the metadata. And there is also no notes in the 2018 data so there is no way to know the reason behind the missing data or why the did not look. There is NA instead of blank in the 2018 data.  

Leaf_breaking_bud_observed: 30 - did not look, and 21 - ?  
Leaf_breaking_bud_intensity: 2627 - NA and two 10-Mar  
Leaf_observed: 20 - did not look, 25 - ? and 28 - NA  
Leaf_intensity: 1684 - NA  
Leaf_increasing_size observed: 30 - did not look, 42 - ? and 29 - NA  
Leaf_increasing_size intensity: 2493 - NA  
leaf_color_observed: 67 - did not look, 21 - ? and 29 - NA  
leaf_color_intensity: 2819 - NA  
leaf_falling observed: 67 - did not look, 14 - ? and 29 - NA  
leaf_falling_intensity: mentioned in metadata but cannot find this column  
flower_buds_observed: 27 - did not look, 24 - ?and 29 - NA  
flower_buds_intensity: 2642 - NA and 6 - 10-Mar  
flower_open_observed: 60 - did not look, 38 - ? and 29 - NA  
flower_open_intensity: 2725 - NA  
flower_pollen_release_observed: 74 - did not look, 48 - ? and 29 - NA  
flower_pollen_release_intensity: have totally different units : little, lots, NA, none ,some  
fruit_observed: 21 - did not look, 96 - ? and 29 - NA  
fruit_intensity: 3212 - NA  
fruit_ripe_observed: 21 - did not look, 21 - ? and 29 - NA  
fruit_ripe_intensity: 2847 - NA  
fruit_drop_observed: 37 - did not look, 18 - ? and 29 - NA  
fruit_drop_intensity: 2867 - NA  

#### Description of your rationale for the steps you're taking to remediate data.

10-Mar was actually the range from 3-10, so we changed all 10-Mar to 3-10

There are ? in some places. If there is note we kept is as it is. We deleted the ones that do not have notes

In the columns observed, there is a binary question: Y or N. If there is Y then the value is assigned accordingly for the intensity column. If it is N then the value would be 0 in intensity column. We added 0 on intensity column if the observed column has N.

We also had Ordinal scales for many of the intensity values like Ranking 1 to 6 for Leaf_breaking_bud_intensity values. 

### Overview  summary  of  answers  to  our  research  questions  with  supporting  plots 


1. In which year (2017 vs 2018) there was the highest number of buds?
2. Does the number of flower and leaf budding impact the no of fruits observed?
3. Which species has the highest number of fruit observed and riped?

### Decisions which can be derived from our analysis and plots





### References
http://www.mortonarb.org/science-conservation/scientists-and-staff/christine-rollinson
http://www.mortonarb.org/visit-explore/about-arboretum
http://www.mortonarb.org/visit-explore/about-arboretum/mission-and-history
https://github.com/Goutham2591/8086DTD-Assignments/tree/master/Assignment3
https://github.com/shashankpatibandla/RythmicObservers/blob/master/Deliverables/DataCleaningDocumentation/Datacleaning.md
https://github.com/shashankpatibandla/RythmicObservers/blob/master/Deliverables/Workplan%26ResearchQuestions/Work_Plan_and_Research_Questions.md


**Sign-off**
Shashank Patibandla - 12/04/2018
Goutam Viswanathan  - 12/04/2018
Sujana Panta        - 12/04/2018