Datacleaning\_Rmarkdown
================
Shashank Patibandla
2018-16-10

-   [Data Cleaning & Documentation](#data-cleaning-documentation)
    -   [Morton Arboretum](#morton-arboretum)
        -   [Description of the data source](#description-of-the-data-source)
        -   [Any intellectual policy constraints, or lack thereof (licensing)](#any-intellectual-policy-constraints-or-lack-thereof-licensing)
        -   [Description of the metadata](#description-of-the-metadata)
        -   [Issues with the data](#issues-with-the-data)
        -   [Description of your rationale for the steps you???re taking to remediate data](#description-of-your-rationale-for-the-steps-youre-taking-to-remediate-data)
        -   [Data cleaning process](#data-cleaning-process)
        -   [A contributorship statement](#a-contributorship-statement)

Data Cleaning & Documentation
=============================

Morton Arboretum
----------------

### Description of the data source

We received the data from one of the staff at the Morton Arboretum, Dr. Christine Rollinson. The data we received had three files:
- Metadata of the dataset
- Oak Trees data collection for the year 2017
- Oak Trees data collection for the year 2018

The dataset has information about the Oak tree Collection from around the world. The idea in here is to observe all the different trees on how do they respond to the climatic conditions at the Arboretum.

The dataset has 32 columns and around 3000 observations for each year. We are highlighting the important columns below: 
- Genus
- Species
- date\_observed
- id (uniquely identifies a tree)
- Data about leaves such as
- Leaf\_breaking\_bud\_observed 
    - Leaf\_breaking\_bud\_intensity 
    - Leaf\_size\_increased 
    - Leaf\_color\_observed 
    - Leaf\_color\_intensity 
    - Leaf\_Falling\_Observed 
    - Data about Flowers
- Data about Fruits (acorns)

With the data, we have, we will be able to do a research and identify how different species respond to the climatic conditions. Provided the data about the native behaviour of all those species, our team will be able to provide more insight into this topic but that is out of scope as of now.

### Any intellectual policy constraints, or lack thereof (licensing).

The dataset was provided by our client and we did not look for any external sources for data, because of which it will be covered by the Licensing terms and conditions of Morton Arboretum. We are using the data with the consent of the client which is Morton Arboretum.

For Licensing terms and conditions of Morton Arboretum [Click Here](http://www.mortonarb.org/visit-explore/about-arboretum/terms-and-conditions)  
Adding to that, our team will update the licensing terms upon referring the data from any external source.

### Description of the metadata

The project was started in March 2017 and is an ongoing process. The metadata contains a spreadsheet that describes the other two excel sheet (data for 2017 and 2018) that was provided. The spreadsheet describes what each column is, description of what is included in each column and clarification of the units that were provided. The provided spreadsheet clearly summarized what this project/research is all about and their data collection method. The brief description that was provided for each column was helpful for us to understand what each column meant.  

We have around 40 different species of Oak as a part of our study. Each species has its native from somewhere around the world. Only unique thing about all the species is that they belong to the same Genus “Quercus”.  

Metadata about the dataset helped us to clarify couple of things stated below:
- Do we need additional information to proceed further with the research? Yes, 
    - If yes, What Data?
        - Climatic data and Soil Conditions
    - Did we get that?
        - Yes
    - Where did you get the soil conditions data?
        - Morton Arboretum Website
    - What about the license?
        - As stated in point 2, we are working on the dataset with the consent of the client.  
        
 - Are the values defined for the columns are valid?  
    - If Yes, what percent of data are valid?
        - 90%
    - What about the rest? Did we keep them or remove them?
        - We had cleaned the data and kept them.  
        
 - Can there be an enhancement in the future to this research by getting additional information about the Oak trees.?
      - Yes/No
          - Yes
      - How?
            - Getting to know of the native behaviour of each species will help us analyze it better.
       
      
### Issues with the data

The 2018 data is not complete: data from 2017 is from March-Dec. But we only have data from March to August for 2018. The data we received is good overall, but there were some issues that we encountered. The issues we encountered in each year's data are as follows:

#### 2017

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
flower\_open\_observed: 13 blank and one - ? (does have note for ???????)  
flower\_open\_intensity: 741 blank  
flower\_pollen\_release\_observed: 14 blank and 177 - ? and only 7 has notes  
flower\_pollen\_release\_intensity: 157 blank and notes on only 22  
fruit\_observed: 16 blank and 16 - ? and only 2 has notes  
fruit\_intensity: 626 blank and 71 has 10-mar  
fruit\_ripe \_observed: 21 blank and 6 - ? only three has notes  
fruit\_ripe\_intensity: 611 blanks (only 173 has notes)  
fruit\_drop\_observed: 17 blank and 6 ? only three has notes  
fruit\_drop\_intensity: 568 blank and 71 has 10-Mar  

#### 2018

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
fruit\_ripe \_observed: 21 - did not look, 21 - ? and 29 - NA  
fruit\_ripe\_intensity: 2847 - NA  
fruit\_drop\_observed: 37 - did not look, 18 - ? and 29 - NA  
fruit\_drop\_intensity: 2867 - NA  

### Description of your rationale for the steps you???re taking to remediate data.

10-Mar was actually the range from 3-10, so we changed all 10-Mar to 3-10

There are ? in some places. If there is note we kept is as it is. We deleted the ones that do not have notes

In the columns observed, there is a binary question: Y or N. If there is Y then the value is assigned accordingly for the intensity column. If it is N then the value would be 0 in intensity column. We added 0 on intensity column if the observed column has N.

### Data cleaning process

#### Setting the working directory

<p>
we set the directory where we will be doing all the work and saving our files

``` r
knitr::opts_chunk$set(cache=TRUE)
knitr::opts_knit$set(root.dir = "C:/Users/shashank/Documents/USA/ISQA 8086 - Data to decisions/MortonArboretum/2017-2018_Rollinson") 
```

#### Load Data for Observations in 2017

<p>
you should have the original .csv file in the working directory.

``` r
arboretum_data <- read.csv("PhenologyObservations_2017_LC_Oaks.csv")
```

#### Removing Unnessary Columns

<p>
We will be removing all the unnecessary columns which are not required for the analysis

``` r
unwanted_columns_removed = subset(arboretum_data, select = -c(site, observer, date_entered, data_entry, data_entered_NPN, flower_pollen_release_observed, flower_pollen_release_intensity) )
```

#### Writing the semi-cleaned data into a csv file

<p>
we write this to a .csv file which will now have cleaned data in terms of the columns required

``` r
write.csv(unwanted_columns_removed,'arboretumcolumnscleaned.csv')
```

#### Cleaning unwanted rows

<p>
Now we switch to column cleaned data in Excel which is called "arboretumcolumnscleaned.csv" and will begin cleaning the unwanted rows based on some conditions using in Excel

<td>
Step 1. filter on "leaf\_color\_observed" field in the excel with "?" and find if their is any valid notes in the "notes\_observer" field.
</td>
<td>
Step 2. If the "notes\_observer" field is filled, then leave the row containing the "?" as-is.
</td>
<td>
Step 3. If the "notes\_observer" field is not filled, then remove the whole row which contains the "?"
</td>
<td>
Step 4. Repeat steps 1 to 3 for all the fields listed here - "leaf\_breaking\_bud\_observed", "leaf\_observed", "leaf\_increasing\_size\_observed", "leaf\_falling\_observed", "flower\_buds\_observed", "flower\_open\_observed", "fruit\_observed", "fruit\_ripe\_observed" and "fruit\_drop\_observed"
</td>
#### Saving the cleaned rows .csv file

<p>
Now we should have a .csv file which contains cleaned data with respect to rows and columns.

<p>
we will save this manually using the name "arboretumcolumnsandrowscleaned.csv" in the working directory

#### Replacing data with blank fields based on a condition

<p>
Now we switch to column and row cleaned data in Excel which is called "arboretumcolumnsandrowscleaned.csv" and will begin cleaning the blank values based on some conditions using in Excel

<td>
Step 1. filter on "leaf\_breaking\_bud\_observed" field in the excel with "N" and find if the corresponding intensity field(in this case it is the "leaf\_breaking\_bud\_intensity" field) has a "0" or a blank.
</td>
<td>
Step 2. If the corresponding intensity field is "0", then leave the it as-is.
</td>
<td>
Step 3. If the corresponding intensity field is blank, then fill the same field with a "0". so that troughout the sheet we have similar data, meaning a no is corresponding to a "0" intensity level
</td>
<td>
Step 4. Repeat steps 1 to 3 for all the fields listed here - "leaf\_color\_observed", "leaf\_observed", "leaf\_increasing\_size\_observed", "leaf\_falling\_observed", "flower\_buds\_observed", "flower\_open\_observed", "fruit\_observed", "fruit\_ripe\_observed" and "fruit\_drop\_observed"
</td>
<p>
For some of the intensity fields. The value is "10-Mar" instead of "10-03". For this we filter on such values and change them to "10-3". All such values are only found in "intensity" fields such as "leaf\_breaking\_bud\_intensity". Repeat this step for all the intesity fields

#### Saving the cleaned rows .csv file

<p>
Now we should have a .csv file which contains fully cleaned data with respect to rows and columns and values.

<p>
we will save this manually using the name "arboretumfullycleaned.csv" in the working directory

#### Load Data for Observations in 2018

<p>
you should have the original .csv file in the working directory.

``` r
arboretum_data_2018 <- read.csv("PhenologyObservations_2018_LC_Oaks.csv")
```

#### Removing Unnessary Fields

<p>
We will be removing all the unnecessary columns which are not required for the analysis

``` r
unwanted_columns_removed_2018 = subset(arboretum_data_2018, select = -c(Timestamp, Observer, Email.Address, Leaf.falling.observed, Flower.pollen.release.observed, Flower.pollen.release.intensity) )
```

#### Renaming fields for consistency in both 2017 and 2018 data

<p>
We will rename the columns so that both the 2017 and 2018 data have similiar column names

``` r
colnames(unwanted_columns_removed_2018)[colnames(unwanted_columns_removed_2018)=="PlantNumber"]<-"id"
colnames(unwanted_columns_removed_2018)[colnames(unwanted_columns_removed_2018)=="Notes"]<-"Notes.Observer"
```

#### Writing the semi-cleaned/column cleaned data into a csv file

<p>
we write this to a .csv file which will now have cleaned data in terms of the columns required

``` r
write.csv(unwanted_columns_removed_2018,'arboretumcolumnscleaned2018.csv')
```

#### Diferentiating the species from the Genus

<p>
Now we switch to column cleaned data in Excel which is called "arboretumcolumnscleaned2018.csv" and can differentiate the species from the genus. In the current sheet we have both the genus and species in the same field i.e "Species".

<td>
create a new field called "genus" just before the "species" field and we will seperate the genus from the species. This will help us have consistent columns in 2017 and 2018 data.

#### Saving the cleaned rows .csv file

<p>
Now we should have a .csv file which contains consistent data and columns with respect 2017 data.

<p>
we will save this manually using the name "arboretum2018consistent.csv" in the working directory

#### Cleaning unwanted rows

<p>
Now we switch to column cleaned data in Excel which is called "arboretum2018consistent.csv" and will begin cleaning the unwanted rows based on some conditions using in Excel

<td>
Step 1. filter on "leaf.color.observed" field in the excel with "?" or "did not look for" and find if their is any valid notes in the "notes.observer" field.
</td>
<td>
Step 2. If the "Notes.Observer" field is filled, then leave the row containing the "?" or "did not look for" as-is.
</td>
<td>
Step 3. If the "Notes.Observer" field is not filled, remove the whole row which contains the "?" or "did not look for"
</td>
<td>
Step 4. Repeat steps 1 to 3 for all the fields listed here - "leaf.breaking.bud.observed", "leaf.observed", "leaf.increasing.size.observed", "leaf.falling.observed", "flower.buds.observed", "flower.open.observed", "fruit.observed", "fruit.ripe.observed" and "fruit.drop.observed"
</td>
#### Saving the cleaned rows .csv file

<p>
Now we should have a .csv file which contains cleaned data with respect to rows and columns.

<p>
we will save this manually using the name "arboretumcolumnsandrowscleaned2018.csv" in the working directory

#### Replacing data with blank fields based on a condition

<p>
Now we switch to column cleaned data in Excel which is called "arboretumcolumnsandrowscleaned.csv" and will begin cleaning the unwanted rows based on some conditions using in Excel

<td>
Step 1. filter on "leaf.breaking.bud.observed" field in the excel with "N" and find if the corresponding intensity field(in this case it is the "leaf.breaking.bud.intensity" field has a "0" or a blank.
</td>
<td>
Step 2. If the corresponding intensity field is "0", then leave the it as-is.
</td>
<td>
Step 3. If the corresponding intensity field is blank, then fill the same field with a "0". so that troughout the sheet we have similar data, meaning a no is corresponding to a "0" intensity level
</td>
<td>
Step 4. Repeat steps 1 to 3 for all the fields listed here - "leaf.color.observed", "leaf.observed", "leaf.increasing.size.observed", "leaf.falling.observed", "flower.buds.observed", "flower.open.observed", "fruit.observed", "fruit.ripe.observed" and "fruit.drop.observed"
</td>
<p>
For some of the intensity fields. The value is "10-Mar" instead of "10-03". For this we filter on such values and change them to "10-3". All such values are only found in "intensity" fields such as "leaf\_breaking\_bud\_intensity". Repeat this step for all the intesity fields

#### Saving the cleaned file to .csv file

<p>
Now we should have a .csv file which contains cleaned data with respect to rows and columns.

<p>
we will save this manually using the name "arboretumfullycleaned2018.csv" in the working directory

#### To view any files created/written in R we use

View(filename)

#### Results

<p>
Now we have a excel sheet for 2017 cleaned data and 2018 cleaned data. The 2017 cleaned data has 25 columns and 2874 rows. The 2018 cleaned data has 24 columns and 4261 rows
</p>
<p>
we need to futher clean some of the values like n/a or anomolies. As we know cleaning of data is a evergoing process.
</p>

### A contributorship statement.

1.  Sujana - Worked on the issue and the rational to solve the issue part of this assignment
2.  Goutam - Worked on the description of data and metadata part of this assignment
3.  Shashank - Worked on data cleaning process

Proofread by - Shashank Patibandla on 10/16/2018
