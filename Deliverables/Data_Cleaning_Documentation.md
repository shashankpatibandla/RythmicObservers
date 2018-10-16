# Data Cleaning & Documentation 
## Morton Arboretum 
### Description of the data source 
We received the data from one of the staff from the Morton Arboretum, Dr. Christine Rollinson. The data we received has three files: one is the metadata, the other two are data for the year 2017 and 2018. The data is about the ongoing project: Phenology of Oaks from Around the World. The data has 31 columns that contain the budding, leafing, flowering, and acorn/ fruit process.  

### Specifically identify any intellectual policy constraints, or lack thereof (licensing). 

### Description of the metadata
The project was started in March 2017 and is an ongoing process. The metadata contains a spreadsheet that describes the other two excel sheet (data for 2017 and 2018) that was provided. The spreadsheet describes what each column is, description of what is included in each column and clarification of the units that were provided. The provided spreadsheet clearly summarized what this project/research is all about and their data collection method. The brief description that was provided for each column was helpful for us to understand what each column meant. 

### Issues with the data
The 2018 data is not complete: data from 2017 is from March-Dec. But we only have data from March to August for 2018. The data we received is good overall, but there were some issues that we encountered. The issues we encountered in each year's data are as follows:   
#### 2017  
Leaf_breaking_bud_observed: 10 missing value.   
Leaf_breaking_bud_intensity: few values were as 10-March instead of count estimate. And most of the values were missing  
Leaf_observed: 40 missing values  
Leaf_intensity: 686 blank   
Leaf_increasing_size observed: 12 missing field  
Leaf_increasing_size intensity: 1954 missing field  
leaf_color_observed: 43 blanks and one ‘?’ (does have a note for ?)  
leaf_color_intensity: 233 blank.   
leaf_falling observed: 45 blank and 5 ‘?’ (no notes)  
leaf_falling_intensity: mentioned in metadata but cannot find this column  
flower_buds_observed: 13 blanks and two ‘?’ (note for only one)  
flower_buds_intensity: 722 blank and 10 ‘10-mar’  
flower_open_observed: 13 blank and one ‘?’ (does have  note for ‘?’)  
flower_open_intensity: 741 blank  
flower_pollen_release_observed: 14 blank and 177 ‘?’ and only 7 has notes  
flower_pollen_release_intensity: 157 blank and notes on only 22  
fruit_observed: 16 blank and 16 ‘?’ and only 2 has notes  
fruit_intensity: 626 blank and 71 has ‘10-mar’  
fruit_ripe _observed: 21 blank and 6 “?” only three has notes  
fruit_ripe_intensity: 611 blanks (only 173 has notes)  
fruit_drop_observed: 17 blank and 6 “?” only three has notes  
fruit_drop_intensity: 568 blank and 71 has ‘10-Mar’  
	
#### 2018  
In 2018 there are few new units in each column like there is “did not look” and “NA” but there is only “Yes” “No” “blank” and “?’ in the 2017 data and in the metadata. And there is also no notes in the 2018 data so there is no way to know the reason behind the missing data or why the did not look. There is NA instead of blank in the 2018 data.     
Leaf_breaking_bud_observed: 30 ‘did not look’, and 21 ‘?’  
Leaf_breaking_bud_intensity: 2627 ‘NA’ and two ‘10-Mar’  
Leaf_observed: 20 did not look,  25 ‘?’ and 28 “NA”  
Leaf_intensity: 1684 ‘NA’  
Leaf_increasing_size observed: 30 ‘did not look’, 42 ‘?’and 29 ‘NA’  
Leaf_increasing_size intensity: 2493 ‘NA’  
leaf_color_observed: 67 ‘did not look’, 21 ‘?’and 29 ‘NA’  
leaf_color_intensity: 2819 ‘NA’  
leaf_falling observed: 67 ‘did not look’, 14 ‘?’and 29 ‘NA’  
leaf_falling_intensity: mentioned in metadata but cannot find this column  
flower_buds_observed: 27 ‘did not look’, 24 ‘?’and 29 ‘NA’  
flower_buds_intensity: 2642 ‘NA’ and 6 ‘10-Mar’  
flower_open_observed: 60 ‘did not look’, 38 ‘?’and 29 ‘NA’  
flower_open_intensity: 2725 ‘NA’  
flower_pollen_release_observed: 74 ‘did not look’, 48 ‘?’and 29 ‘NA’  
flower_pollen_release_intensity: have totally different units : little, lots, NA, none ,some   
fruit_observed: 21 ‘did not look’, 96 ‘?’and 29 ‘NA’  
fruit_intensity: 3212 ‘NA’   
fruit_ripe _observed: 21 ‘did not look’, 21 ‘?’and 29 ‘NA’  
fruit_ripe_intensity: 2847 ‘NA’  
fruit_drop_observed: 37 ‘did not look’, 18 ‘?’and 29 ‘NA’  
fruit_drop_intensity: 2867 ‘NA’  

### Description of your rationale for the steps you’re taking to remediate data. For example, if you need to fill in empty fields, specify what value you chose and why.  
10-Mar was actually the range from 3-10, so we changed all ‘10-Mar’ to 3-10.     
There are ‘?’ in some places. If there is note we kept is as it is. We deleted the ones that do not have notes.     
In the columns “observed”, there is a binary question: Y or N. If there is Y then the value is assigned accordingly for the “intensity” column.  If it is N then the value would be 0 in “intensity” column.  We added ‘0’ on intensity column if the observed column has N.  


### A script or step-by-step textual description (or a combination) that documents your data cleaning process with enough detail for replication.


### A contributorship statement.  
1. Sujana - Worked on the issue and the rational to solve the issue part of this assignment  
2. Goutam - Worked on the description od data and metadata part of this assignment  
3. Shashank - Worked on textual description  

Proofread by - Shashank Patibandla on 10/16/2018











