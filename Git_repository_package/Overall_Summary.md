Overall Summary
================
Shashank Patibandla
2018-12-06

-   [Summary of Work on Morton Arboretum Project](#summary-of-work-on-Morton-arboretum-project)
    -   [Target audience](#target-audience)
    -   [Decisions our analyisis targets](#decisions-our-analyisis-targets)
    -   [Brief description of the Data source (Dataset)](#brief-description-of-the-data-source-dataset)
    -   [Brief description of the Data Cleaning](#brief-description-of-the-data-cleaning)
    -   [Overview summary of answers to our research questions with supporting plots](#overview-summary-of-answers-to-our-research-questions-with-supporting-plots)
    -   [Decisions which can be derived from our analysis and plots](#decisions-which-can-be-derived-from-our-analysis-and-plots)
    -   [References](#references)

Summary of Work on Morton Arboretum Project
===========================================

This document gives an overview of the project carried out by our team in order to derive decisions from the data given by morten arboretum.

### Target audience

-   Our target audience is Morton Arboretum and Dr. Christine Rollinson who work to improve how oak trees are effected by weather. As the oak trees in Morton Arboretum are from various locations, they are interested in know when each phenophase occurs in different species and how the phenophases are interlinked.

-   The main focus of Morton Arboretum is the health and improvements of the trees. They conduct scientific research for tree care and prevention.

**Mission and goals of Morton Arboretum**

"The mission of The Morton Arboretum is "to collect and study trees, shrubs, and other plants from around the world, to display them across naturally beautiful landscapes for people to study and enjoy, and to learn how to grow them in ways that enhance our environment. The goal is to encourage the planting and conservation of trees and other plants for a greener, healthier, and more beautiful world"

### Decisions our analyisis targets

-   Some of our research questions target to get results that Morton Arboretum are interested in, like how the leaf budding time is effecting the other phonephases. Also if the no. of fruits observed are fully growing to a ripe fruit or are the fruit buds dropping even before they ripen. This helps Morton Arboretum understand if any factor is influencing the ripening of the fruit.

-   Also, we have given a overview of how many records are their for each year and if the no. of species have gone up. This gives a nice overview of the data.

-   We also tried to determine if the number of budding phenophase was observed more in 2017 vs 2018. This in-turn will help Morton Arboretum to determine this change was due to some significant change.

1.  All Species, categorized by year, Total records?
2.  In which year (2017 vs 2018) there was the highest number of buds?
3.  Does the number of flower and leaf budding impact the no of fruits observed?
4.  Which species has the highest number of fruit observed and riped?

**Introduction to Oak Trees**

-   The usual life span of Oak Tree is around 200 years, whereas some trees live up to 1000 years. The "Pechanga Great Oak Tree" in the united states is 2000 years old and it is the oldest in the world. It belongs to the species "Quercus agrifolia" which is not a part of our study.

-   Oak Trees are generally most resilient trees and only show little to no changes due to climatic changes. But as the climatic changes are increasing there are a lot of ouliers seen in the growth and other elements of a Oak tree. Some of them are really interesting and will help us in better understand some of the extreme data from our datasets about the phenological phases.

-   Oak has been chosen as a national tree for many countries such as USA in the year 2004, Germany, England, etc., it is considered as a common symbol of strength.

-   Oak Tree has more strength and hardness. It has a high tannin content which makes it very resistant to fungal and insect attacks. Adding to that, they are used to manufacture ships, furniture's, etc.

### Brief description of the Data source (Dataset)

-   The dataset was given by Morton Arboretum to analysis phenophase patterns in oak tress. It contains of two datasets, one for each year. The datasets contain all most the same variables expect for 2-3 extra variables in 2018. The dataset has around 40 species of oak trees which are originally from different countries.

-   The 2017 data has around 9 months of data which spans accross all the species. Every phenophase has a observed variable and a intensity variable, which tells us if the observer was able to distinctly observe any of the phenophase and how much of the phenophase was visible using the intensity value. The data was mostly clean, but, their were a lot of observers data entry issues which had to be cleaned using various methods in data cleaning process

-   The 2018 data was only for 4 months of data which spans over more species than the 2017 dataset. But, it lacks the data quality of 2017, which was a major issue in using the dataset. Also being, 4 months of data, all the phonephases was never completed. This lead to a lot of issues for plotting and statistical analysis.<br>

The dataset has 32 columns and around 3000 observations for each year. We are highlighting the important columns below:

1.  Genus
2.  Species
3.  date\_observed
4.  id (uniquely identifies a tree)
5.  Data about leaves such as

-   Leaf\_breaking\_bud\_observed
-   Leaf\_breaking\_bud\_intensity
-   Leaf\_size\_increased
-   Leaf\_color\_observed
-   Leaf\_color\_intensity
-   Leaf\_Falling\_Observed

1.  Data about Flowers
2.  Data about Fruits (acorns)

### Brief description of the Data Cleaning

#### Issues with the data

The 2018 data is not complete: data from 2017 is from March-Dec. But we only have data from March to August for 2018. The data we received is good overall, but there were some issues that we encountered. The issues we encountered in each year's data are as follows:

##### 2017

Leaf\_breaking\_bud\_observed: 10 missing value
Leaf\_breaking\_bud\_intensity: few values were as 10-March instead of count estimate. And most of the values were missing
Leaf\_observed: 40 missing values
Leaf\_intensity: 686 blank
Leaf\_increasing\_size observed: 12 missing field
Leaf\_increasing\_size intensity: 1954 missing field
leaf\_color\_observed: 43 blanks and one - ? (does have a note for ?)
leaf\_color\_intensity: 233 blank
leaf\_falling observed: 45 blank and 5 - ? (no notes)
leaf\_falling\_intensity: mentioned in metadata but cannot find this column
flower\_buds\_observed: 13 blanks and two - ? (note for only one)
flower\_buds\_intensity: 722 blank and 10 - 10-mar
flower\_open\_observed: 13 blank and one - ? (does have note for ?)
flower\_open\_intensity: 741 blank
flower\_pollen\_release\_observed: 14 blank and 177 - ? and only 7 has notes
flower\_pollen\_release\_intensity: 157 blank and notes on only 22
fruit\_observed: 16 blank and 16 - ? and only 2 has notes
fruit\_intensity: 626 blank and 71 has 10-mar
fruit\_ripe\_observed: 21 blank and 6 - ? only three has notes
fruit\_ripe\_intensity: 611 blanks (only 173 has notes)
fruit\_drop\_observed: 17 blank and 6 ? only three has notes
fruit\_drop\_intensity: 568 blank and 71 has 10-Mar

##### 2018

In 2018 there are few new units in each column like there is did not look and NA but there is only Yes No blank and ? in the 2017 data and in the metadata. And there is also no notes in the 2018 data so there is no way to know the reason behind the missing data or why the did not look. There is NA instead of blank in the 2018 data.

Leaf\_breaking\_bud\_observed: 30 - did not look, and 21 - ?
Leaf\_breaking\_bud\_intensity: 2627 - NA and two 10-Mar
Leaf\_observed: 20 - did not look, 25 - ? and 28 - NA
Leaf\_intensity: 1684 - NA
Leaf\_increasing\_size observed: 30 - did not look, 42 - ? and 29 - NA
Leaf\_increasing\_size intensity: 2493 - NA
leaf\_color\_observed: 67 - did not look, 21 - ? and 29 - NA
leaf\_color\_intensity: 2819 - NA
leaf\_falling observed: 67 - did not look, 14 - ? and 29 - NA
leaf\_falling\_intensity: mentioned in metadata but cannot find this column
flower\_buds\_observed: 27 - did not look, 24 - ?and 29 - NA
flower\_buds\_intensity: 2642 - NA and 6 - 10-Mar
flower\_open\_observed: 60 - did not look, 38 - ? and 29 - NA
flower\_open\_intensity: 2725 - NA
flower\_pollen\_release\_observed: 74 - did not look, 48 - ? and 29 - NA
flower\_pollen\_release\_intensity: have totally different units : little, lots, NA, none ,some
fruit\_observed: 21 - did not look, 96 - ? and 29 - NA
fruit\_intensity: 3212 - NA
fruit\_ripe\_observed: 21 - did not look, 21 - ? and 29 - NA
fruit\_ripe\_intensity: 2847 - NA
fruit\_drop\_observed: 37 - did not look, 18 - ? and 29 - NA
fruit\_drop\_intensity: 2867 - NA

#### Description of your rationale for the steps you're taking to remediate data.

10-Mar was actually the range from 3-10, so we changed all 10-Mar to 3-10

There are ? in some places. If there is note we kept is as it is. We deleted the ones that do not have notes

In the columns observed, there is a binary question: Y or N. If there is Y then the value is assigned accordingly for the intensity column. If it is N then the value would be 0 in intensity column. We added 0 on intensity column if the observed column has N.

We also had Ordinal scales for many of the intensity values like Ranking 1 to 6 for Leaf\_breaking\_bud\_intensity values.

### Overview summary of answers to our research questions with supporting plots

1.  Overview of the species

The plots which answer this research question can be found [here](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/Overview.png) and [here](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/Penophase%20of%20all%20the%20species.png)

1.  How are the phenophases of 4 species which are from different parts of the world respond to environment at Morton Arboretum?

The plots which answer this research question can be found [here](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/Penophase%20of%205%20different%20species.png)

1.  Does the number of flower and leaf budding impact the number of fruits observed?

The plots which answer this research question can be found [here](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/Penophase%20of%205%20different%20species.png) and a level further [Leaf breaking bud](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/Flower%20bud%20level%202.png) , [FLower bud](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/Leaf%20breaking%20bud%20level%202.png) , [Fruits](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/Fruits%20level%202.png) and the final level is [Leaf breaking bud](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/Leaf%20breaking%20bud%20level%203.png), [FLower bud](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/Flower%20buds%20level%203.png).

1.  Leaf Increasing Size Observed vs Leaf Increasing Size Intensity \[2017 vs 2018\]

The plots which answer this research question can be found [Leaf Increasing Size Observed](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/Leaf%20increasing%20level%203.png) and [Leaf Increasing Size Intensity](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/Leaf%20increasing%20level%203.png)

1.  Leaf Falling Observed \[2017 vs 2018\]

The plots which answer this research question can be found [here](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/leaf%20fall%20level%203.png)

1.  Flower Buds Observed vs Flower Buds Intensity \[2017 vs 2018\]

The plots which answer this research question can be found [Flower Buds Intensity](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/Flower%20buds%20intensity%20level%203.png) and [Flower Buds Observed](https://github.com/shashankpatibandla/RythmicObservers/blob/master/Git_repository_package/plots/Flower%20buds%20level%203.png)

### Decisions which can be derived from our analysis and plots

-   **Species Behaviour**: The North American species Prinoides responded well to the environment when compared with species around the world.
-   **Flower Buds Observed vs Intensity \[2017 vs 2018\]**: They are not the same for any species during any year
-   **Leaf Increasing Size Observed vs Intensity \[2017 vs 2018\]**: They are the same for for both the years. It is species Macrocarpa.
-   **Leaf Falling Observed \[2017 vs 2018\]**: Insufficient Data

### References

<http://www.mortonarb.org/science-conservation/scientists-and-staff/christine-rollinson> <http://www.mortonarb.org/visit-explore/about-arboretum> <http://www.mortonarb.org/visit-explore/about-arboretum/mission-and-history> <https://github.com/Goutham2591/8086DTD-Assignments/tree/master/Assignment3> <https://github.com/shashankpatibandla/RythmicObservers/blob/master/Deliverables/DataCleaningDocumentation/Datacleaning.md> <https://github.com/shashankpatibandla/RythmicObservers/blob/master/Deliverables/Workplan%26ResearchQuestions/Work_Plan_and_Research_Questions.md>

**Sign-off** Shashank Patibandla - 12/07/2018 Goutam Viswanathan - 12/07/2018 Sujana Panta - 12/07/2018
