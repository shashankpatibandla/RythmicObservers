-   [1. Executive Summary](#executive-summary)
-   [2. Data cleaning on 2017 Dataset](#data-cleaning-on-2017-dataset)
-   [3. Find the Range of Intensities based on
    Species](#find-the-range-of-intensities-based-on-species)
-   [4. Discriptive statistics](#discriptive-statistics)
-   [5. Conclusion](#conclusion)
-   [6. Contributorship Statement](#contributorship-statement)

### 1. Executive Summary

-   In this document, team “Morton Arboretum” has covered the
    descriptive analysis performed on the Oak Tree Phenology Data Set,
    for the year 2017. Going forwards, our team will work and provide
    more insights on the dataset by generating plots.

### 2. Data cleaning on 2017 Dataset

#### Step 1: Read the CSV File into a dataframe

-   Set up the Working Directory

-   Read the data from the CSV file into the Dataframe named
    “analysisdata”

-   Our dataset has records which has values as “NA”. Exclude them from
    the analysis so as to focus on the ones which has accurate values

-   Go through the dataframe to understand the data

<!-- -->

    analysisdata = read.csv("MortonArboretum2017.csv", header = TRUE, stringsAsFactors = FALSE)

     na.exclude(analysisdata)

    View(analysisdata)

#### Step 2: To understand more about the data

-   We ran the below command to get an insight onto the data

<!-- -->

    str(analysisdata)

    ## 'data.frame':    2874 obs. of  26 variables:
    ##  $ X                             : int  1 2 3 4 5 6 7 8 9 10 ...
    ##  $ date_observed                 : chr  "3/8/2017" "3/9/2017" "3/9/2017" "3/9/2017" ...
    ##  $ genus                         : chr  "Acer" "Quercus" "Quercus" "Quercus" ...
    ##  $ species                       : chr  "x freemanii" "acutissima" "acutissima" "bicolor" ...
    ##  $ id                            : chr  "321-56*3" "644-33*1" "644-33*1" "135-U*1" ...
    ##  $ leaf_breaking_bud_observed    : int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ leaf_breaking_bud_intensity   : chr  "0" "0" "0" "0" ...
    ##  $ leaf_observed                 : int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ leaf_intensity                : chr  "0" "0" "0" "0" ...
    ##  $ leaf_increasing_size_observed : int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ leaf_increasing_size_intensity: chr  "0" "0" "0" "0" ...
    ##  $ leaf_color_observed           : int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ leaf_color_intensity          : chr  "0" "0" "0" "0" ...
    ##  $ leaf_falling_observed         : int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ flower_buds_observed          : int  1 0 0 0 0 0 0 0 0 1 ...
    ##  $ flower_buds_intensity         : chr  "11-100" "0" "0" "0" ...
    ##  $ flower_open_observed          : int  1 0 0 0 0 0 0 0 0 1 ...
    ##  $ flower_open_intensity         : chr  "" "0" "0" "0" ...
    ##  $ fruit_observed                : int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ fruit_intensity               : chr  "0" "0" "0" "0" ...
    ##  $ fruit_ripe_observed           : int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ fruit_ripe_intensity          : chr  "0" "0" "0" "0" ...
    ##  $ fruit_drop_observed           : int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ fruit_drop_intensity          : chr  "0" "0" "0" "0" ...
    ##  $ notes_observer                : chr  "" "" "" "" ...
    ##  $ notes_entry                   : chr  "" "" "" "" ...

#### Step 3: Perform Data Cleaning using the below steps

-   The data looked clean when we did step 2, but we wanted to take a
    close look at the dataset to understand if needs to be cleaned

-   Looking at the dataset, we figured out that we had a mix up with
    Date and percentage values. Date had replaced some of the columns
    which had percentages. In our cleaning exercise, we had replaced the
    required fields with percentage values using the below mentioned
    steps.

<!-- -->

    analysisdata$leaf_breaking_bud_intensity[analysisdata$leaf_breaking_bud_intensity == "10-Mar"] <- "03-10"
    analysisdata$flower_buds_intensity[analysisdata$flower_buds_intensity == "10-Mar"] <- "03-10"
    analysisdata$fruit_intensity[analysisdata$fruit_intensity == "10-Mar"] <- "03-10"
    analysisdata$fruit_drop_intensity[analysisdata$fruit_drop_intensity == "10-Mar"] <- "03-10"
    analysisdata$flower_buds_intensity[analysisdata$flower_buds_intensity == "43169.00"] <- "03-10"
    analysisdata[analysisdata == ""] <- "0"

### 3. Find the Range of Intensities based on Species

-   After cleaning the data, we went ahead to find the range of
    intensities on specific columns based on Oak tree species by
    following the below mentioned steps.

-   Why Range?

    -   Our intention is to predict how the trees are responding over
        time to the climatic conditions.
    -   Right now, we do not have the **weather data** included in the
        dataset. Going forwards, our team will work on the weather data
        to provide **insightful visualizations**.

1.  Range between leaf\_breaking\_bud\_intensity against Species

    -   This helps us understand the estimate of how many leaf buds are
        breaking based on species.

<!-- -->

    library(doBy)

    summaryBy(leaf_breaking_bud_intensity ~ species, data = analysisdata, FUN = range)

    ##          species leaf_breaking_bud_intensity.FUN1
    ## 1         lyrata                                0
    ## 2     acutissima                                0
    ## 3           alba                           >10000
    ## 4        bicolor                           >10000
    ## 5       coccinea                                0
    ## 6    dalechampii                           >10000
    ## 7  ellipsoidalis                           >10000
    ## 8       gambelii                                0
    ## 9      georgiana                                0
    ## 10  hartwissiana                           >10000
    ## 11    ilicifolia                           >10000
    ## 12    imbricaria                           >10000
    ## 13        lobata                                0
    ## 14        lyrata                           >10000
    ## 15    macrocarpa                           >10000
    ## 16   marilandica                           >10000
    ## 17     michauxii                           >10000
    ## 18       montana                           >10000
    ## 19 muehlenbergii                           >10000
    ## 20     palustris                           >10000
    ## 21       petraea                                0
    ## 22       phellos                                0
    ## 23     prinoides                           >10000
    ## 24     pyrenaica                                0
    ## 25         robur                              <5%
    ## 26         rubra                           >10000
    ## 27     shumardii                           >10000
    ## 28      stellata                           >10000
    ## 29    subfalcata                           >10000
    ## 30      velutina                           >10000
    ## 31   x freemanii                                0
    ##    leaf_breaking_bud_intensity.FUN2
    ## 1                                 0
    ## 2                                 0
    ## 3                            11-100
    ## 4                            11-100
    ## 5                            11-100
    ## 6                            11-100
    ## 7                            11-100
    ## 8                            11-100
    ## 9                          101-1000
    ## 10                           11-100
    ## 11                           11-100
    ## 12                           11-100
    ## 13                       1001-10000
    ## 14                                2
    ## 15                           11-100
    ## 16                           11-100
    ## 17                           11-100
    ## 18                           11-100
    ## 19                           11-100
    ## 20                       1001-10000
    ## 21                           11-100
    ## 22                         101-1000
    ## 23                           11-100
    ## 24                           11-100
    ## 25                           11-100
    ## 26                           11-100
    ## 27                           11-100
    ## 28                           11-100
    ## 29                       1001-10000
    ## 30                           11-100
    ## 31                                0

1.  Range between leaf\_intensity against Species

    -   This helps us understand the estimate of potential canopy space
        based on species, ignoring the dead branches.

<!-- -->

    summaryBy(leaf_intensity ~ species, data = analysisdata, FUN = range)

    ##          species leaf_intensity.FUN1 leaf_intensity.FUN2
    ## 1         lyrata                >95%                >95%
    ## 2     acutissima                   0                   0
    ## 3           alba                 <5%              75-94%
    ## 4        bicolor                >95%              75-94%
    ## 5       coccinea                <95%              75-94%
    ## 6    dalechampii                >95%              75-94%
    ## 7  ellipsoidalis                >95%              75-94%
    ## 8       gambelii                 <5%              75-94%
    ## 9      georgiana                >95%                   0
    ## 10  hartwissiana                >95%              75-94%
    ## 11    ilicifolia                >95%              75-94%
    ## 12    imbricaria                >95%              75-94%
    ## 13        lobata                >95%              25-49%
    ## 14        lyrata                >95%              75-94%
    ## 15    macrocarpa                 <5%              75-94%
    ## 16   marilandica                >95%              75-94%
    ## 17     michauxii                >95%              75-94%
    ## 18       montana                <95%              75-94%
    ## 19 muehlenbergii                >95%              75-94%
    ## 20     palustris                >95%              50-74%
    ## 21       petraea                >95%              75-94%
    ## 22       phellos                >95%               5-24%
    ## 23     prinoides                 <5%              75-94%
    ## 24     pyrenaica                >95%              75-94%
    ## 25         robur                >95%              75-94%
    ## 26         rubra                 <5%              75-94%
    ## 27     shumardii                >95%              75-94%
    ## 28      stellata                >95%              75-94%
    ## 29    subfalcata                >95%              50-74%
    ## 30      velutina                 <5%              75-94%
    ## 31   x freemanii                   0                   0

1.  Range between leaf\_increasing\_size\_intensity against Species

    -   This helps us understand the estimate of the number of leaves
        that are fully grown

<!-- -->

    summaryBy(leaf_increasing_size_intensity ~ species, data = analysisdata, FUN = range)

    ##          species leaf_increasing_size_intensity.FUN1
    ## 1         lyrata                                >95%
    ## 2     acutissima                                   0
    ## 3           alba                                <25%
    ## 4        bicolor                                >95%
    ## 5       coccinea                                   0
    ## 6    dalechampii                                >95%
    ## 7  ellipsoidalis                                <25%
    ## 8       gambelii                                >95%
    ## 9      georgiana                                   0
    ## 10  hartwissiana                                <25%
    ## 11    ilicifolia                                <25%
    ## 12    imbricaria                                >95%
    ## 13        lobata                                   0
    ## 14        lyrata                                <25%
    ## 15    macrocarpa                                <25%
    ## 16   marilandica                                <25%
    ## 17     michauxii                                >95%
    ## 18       montana                                <25%
    ## 19 muehlenbergii                                <25%
    ## 20     palustris                                   0
    ## 21       petraea                                <25%
    ## 22       phellos                                <25%
    ## 23     prinoides                                <25%
    ## 24     pyrenaica                                   0
    ## 25         robur                                <25%
    ## 26         rubra                                <25%
    ## 27     shumardii                                   0
    ## 28      stellata                                >95%
    ## 29    subfalcata                                >95%
    ## 30      velutina                                <25%
    ## 31   x freemanii                                   0
    ##    leaf_increasing_size_intensity.FUN2
    ## 1                                 >95%
    ## 2                                    0
    ## 3                               75-94%
    ## 4                               75-94%
    ## 5                                5-24%
    ## 6                               75-94%
    ## 7                               75-94%
    ## 8                               75-94%
    ## 9                               75-94%
    ## 10                              75-94%
    ## 11                              75-94%
    ## 12                              50-74%
    ## 13                              50-74%
    ## 14                              75-94%
    ## 15                              75-94%
    ## 16                              75-94%
    ## 17                              75-94%
    ## 18                              75-94%
    ## 19                              50-74%
    ## 20                              50-74%
    ## 21                              75-94%
    ## 22                              25-49%
    ## 23                              75-94%
    ## 24                              75-94%
    ## 25                              75-94%
    ## 26                              75-94%
    ## 27                              75-94%
    ## 28                              75-94%
    ## 29                              75-94%
    ## 30                              75-94%
    ## 31                                   0

1.  Range between leaf\_color\_intensity against Species

    -   This helps us understand the estimate of the potential canopy
        space is full with non-green leaf color, ignoring dead branches.

<!-- -->

    summaryBy(leaf_color_intensity ~ species, data = analysisdata, FUN = range)

    ##          species leaf_color_intensity.FUN1 leaf_color_intensity.FUN2
    ## 1         lyrata                         0                         0
    ## 2     acutissima                         0                         0
    ## 3           alba                       <5%                    75-94%
    ## 4        bicolor                      >95%                    75-94%
    ## 5       coccinea                       <5%                    75-94%
    ## 6    dalechampii                       <5%                    75-94%
    ## 7  ellipsoidalis                       <5%                    75-94%
    ## 8       gambelii                       <5%                    75-94%
    ## 9      georgiana                      >95%                    50-74%
    ## 10  hartwissiana                       <5%                     5-24%
    ## 11    ilicifolia                       <5%                    75-94%
    ## 12    imbricaria                       <5%                    50-74%
    ## 13        lobata                      >95%                    75-94%
    ## 14        lyrata                       <5%                    75-94%
    ## 15    macrocarpa                       <5%                    75-94%
    ## 16   marilandica                       <5%                    75-94%
    ## 17     michauxii                       <5%                    50-74%
    ## 18       montana                      >95%                    75-94%
    ## 19 muehlenbergii                       <5%                    75-94%
    ## 20     palustris                       <5%                    75-94%
    ## 21       petraea                       <5%                    75-94%
    ## 22       phellos                      >95%                     5-24%
    ## 23     prinoides                       <5%                    75-94%
    ## 24     pyrenaica                      >95%                    50-74%
    ## 25         robur                       <5%                    75-94%
    ## 26         rubra                       <5%                    75-94%
    ## 27     shumardii                      >95%                    75-94%
    ## 28      stellata                       <5%                    75-94%
    ## 29    subfalcata                      >95%                     5-24%
    ## 30      velutina                       <5%                    75-94%
    ## 31   x freemanii                         0                         0

1.  Range between flower\_buds\_intensity against Species

    -   This helps us understand the estimate of the number of flower
        buds that are present on each species

<!-- -->

    summaryBy(flower_buds_intensity ~ species, data = analysisdata, FUN = range)

    ##          species flower_buds_intensity.FUN1 flower_buds_intensity.FUN2
    ## 1         lyrata                          0                          0
    ## 2     acutissima                          0                          0
    ## 3           alba                     >10000                   101-1000
    ## 4        bicolor                     >10000                     11-100
    ## 5       coccinea                          0                     11-100
    ## 6    dalechampii                          0                   101-1000
    ## 7  ellipsoidalis                     >10000                     11-100
    ## 8       gambelii                          0                     11-100
    ## 9      georgiana                     >10000                     11-100
    ## 10  hartwissiana                     >10000                   101-1000
    ## 11    ilicifolia                     >10000                   101-1000
    ## 12    imbricaria                     >10000                     11-100
    ## 13        lobata                          0                          0
    ## 14        lyrata                          0                     11-100
    ## 15    macrocarpa                     >10000                     11-100
    ## 16   marilandica                     >10000                     11-100
    ## 17     michauxii                     >10000                     11-100
    ## 18       montana                     >10000                   101-1000
    ## 19 muehlenbergii                     >10000                 1001-10000
    ## 20     palustris                     >10000                     11-100
    ## 21       petraea                          0                     11-100
    ## 22       phellos                          0                          0
    ## 23     prinoides                     >10000                   101-1000
    ## 24     pyrenaica                          0                          0
    ## 25         robur                          0                      03-10
    ## 26         rubra                     >10000                   101-1000
    ## 27     shumardii                     >10000                     11-100
    ## 28      stellata                     >10000                     11-100
    ## 29    subfalcata                     >10000                 1001-10000
    ## 30      velutina                     >10000                  101-10000
    ## 31   x freemanii                          0                     11-100

1.  Range between flower\_open\_intensity against Species

    -   This helps us understand the estimate of the number of flower
        that are visible on each species

<!-- -->

    summaryBy(flower_open_intensity ~ species, data = analysisdata, FUN = range)

    ##          species flower_open_intensity.FUN1 flower_open_intensity.FUN2
    ## 1         lyrata                          0                          0
    ## 2     acutissima                          0                          0
    ## 3           alba                       >95%                     75-94%
    ## 4        bicolor                       >95%                     25-49%
    ## 5       coccinea                       >95%                     50-74%
    ## 6    dalechampii                       >95%                     75-94%
    ## 7  ellipsoidalis                       >95%                     75-94%
    ## 8       gambelii                       >95%                     25-49%
    ## 9      georgiana                       >95%                          0
    ## 10  hartwissiana                       >95%                      5-24%
    ## 11    ilicifolia                       >95%                     75-94%
    ## 12    imbricaria                        <5%                      5-24%
    ## 13        lobata                          0                          0
    ## 14        lyrata                       >95%                          0
    ## 15    macrocarpa                       >95%                     75-94%
    ## 16   marilandica                        <5%                     75-94%
    ## 17     michauxii                       >95%                          0
    ## 18       montana                       >95%                     75-94%
    ## 19 muehlenbergii                        <5%                     25-49%
    ## 20     palustris                       >95%                     75-94%
    ## 21       petraea                       >95%                     75-94%
    ## 22       phellos                          0                          0
    ## 23     prinoides                        <5%                     75-94%
    ## 24     pyrenaica                          0                          0
    ## 25         robur                          0                          0
    ## 26         rubra                       >95%                     75-94%
    ## 27     shumardii                       >95%                          0
    ## 28      stellata                        <5%                     25-49%
    ## 29    subfalcata                       >95%                     25-49%
    ## 30      velutina                       >95%                     75-94%
    ## 31   x freemanii                          0                          0

1.  Range between fruit\_intensity against Species

    -   This helps us understand the estimate of the number of fruit
        that are present on each species

<!-- -->

    summaryBy(fruit_intensity ~ species, data = analysisdata, FUN = range)

    ##          species fruit_intensity.FUN1 fruit_intensity.FUN2
    ## 1         lyrata                    0                    0
    ## 2     acutissima                    0                    0
    ## 3           alba                   <3               11-100
    ## 4        bicolor               >10000               11-100
    ## 5       coccinea               >10000                    0
    ## 6    dalechampii               >10000               11-100
    ## 7  ellipsoidalis                    0               11-100
    ## 8       gambelii                   <3               11-100
    ## 9      georgiana               >10000             101-1000
    ## 10  hartwissiana                    0               11-100
    ## 11    ilicifolia               >10000               11-100
    ## 12    imbricaria               >10000             101-1000
    ## 13        lobata                    0                    0
    ## 14        lyrata                   <3               11-100
    ## 15    macrocarpa                   <3               11-100
    ## 16   marilandica                   <3               11-100
    ## 17     michauxii               >10000             101-1000
    ## 18       montana               >10000               11-100
    ## 19 muehlenbergii                    0             101-1000
    ## 20     palustris               >10000             101-1000
    ## 21       petraea                    0               11-100
    ## 22       phellos                    0                    0
    ## 23     prinoides                   <3               11-100
    ## 24     pyrenaica                    0                    0
    ## 25         robur                    0               11-100
    ## 26         rubra                   <3               11-100
    ## 27     shumardii               >10000               11-100
    ## 28      stellata                    0               11-100
    ## 29    subfalcata                    0             101-1000
    ## 30      velutina                   <3               11-100
    ## 31   x freemanii                    0                    0

1.  Range between fruit\_ripe\_intensity against Species

    -   This helps us understand the estimate of the number of fruit
        that are present on each species which are ripe

<!-- -->

    summaryBy(fruit_ripe_intensity ~ species, data = analysisdata, FUN = range)

    ##          species fruit_ripe_intensity.FUN1 fruit_ripe_intensity.FUN2
    ## 1         lyrata                         0                         0
    ## 2     acutissima                         0                         0
    ## 3           alba                      >95%                    75-94%
    ## 4        bicolor                      >95%                    75-94%
    ## 5       coccinea                         0                         0
    ## 6    dalechampii                         0                         0
    ## 7  ellipsoidalis                         0                         0
    ## 8       gambelii                         0                     5-24%
    ## 9      georgiana                      >95%                    75-94%
    ## 10  hartwissiana                         0                     5-24%
    ## 11    ilicifolia                      >95%                     5-24%
    ## 12    imbricaria                      >95%                    75-94%
    ## 13        lobata                         0                         0
    ## 14        lyrata                      >95%                    75-94%
    ## 15    macrocarpa                      >95%                         0
    ## 16   marilandica                      >95%                    75-94%
    ## 17     michauxii                         0                         0
    ## 18       montana                         0                    75-94%
    ## 19 muehlenbergii                       <5%                    75-94%
    ## 20     palustris                      >95%                    75-94%
    ## 21       petraea                         0                         0
    ## 22       phellos                         0                         0
    ## 23     prinoides                      >95%                    75-94%
    ## 24     pyrenaica                         0                         0
    ## 25         robur                         0                         0
    ## 26         rubra                      >95%                    75-94%
    ## 27     shumardii                         0                    75-94%
    ## 28      stellata                       <5%                     5-24%
    ## 29    subfalcata                      >95%                    75-94%
    ## 30      velutina                      >95%                    50-74%
    ## 31   x freemanii                         0                         0

1.  Range between fruit\_drop\_intensity against Species

    -   This helps us understand the estimate of the number of fruit
        that have dropped seeds since last time on each species

<!-- -->

    summaryBy(fruit_drop_intensity ~ species, data = analysisdata, FUN = range)

    ##          species fruit_drop_intensity.FUN1 fruit_drop_intensity.FUN2
    ## 1         lyrata                         0                         0
    ## 2     acutissima                         0                         0
    ## 3           alba                    >10000                    11-100
    ## 4        bicolor                         0                1001-10000
    ## 5       coccinea                         0                         0
    ## 6    dalechampii                        <3                     03-10
    ## 7  ellipsoidalis                        <3                     03-10
    ## 8       gambelii                         0                     03-10
    ## 9      georgiana                         0                    11-100
    ## 10  hartwissiana                         0                    11-100
    ## 11    ilicifolia                         0                    11-100
    ## 12    imbricaria                         0                    11-100
    ## 13        lobata                         0                         0
    ## 14        lyrata                        <3                     03-10
    ## 15    macrocarpa                         0                     03-10
    ## 16   marilandica                         0                    11-100
    ## 17     michauxii                         0                         0
    ## 18       montana                         0                  101-1000
    ## 19 muehlenbergii                         0                    11-100
    ## 20     palustris                    >10000                  101-1000
    ## 21       petraea                         0                         0
    ## 22       phellos                         0                         0
    ## 23     prinoides                         0                    11-100
    ## 24     pyrenaica                         0                         0
    ## 25         robur                         0                     03-10
    ## 26         rubra                         0                    11-100
    ## 27     shumardii                         0                    11-100
    ## 28      stellata                         0                    11-100
    ## 29    subfalcata                         0                    11-100
    ## 30      velutina                         0                    11-100
    ## 31   x freemanii                         0                         0

### 4. Discriptive statistics

#### Understand which species shows what kind of phenophase

-   Our agenda in here is to understand how each species respond
    throughout the entire year. With the results whcih we obtain with
    the below commands helps us to understand whether is there a
    significant change that happens throughout the year for a particular
    species.

-   Adding weather data to the results will help us anlayze based on the
    seasonsal outcomes.

-   We will be adding the weather data sooner.

<!-- -->

    rubra_subset <- subset(analysisdata, species=="rubra",
                           select=c(leaf_breaking_bud_observed, leaf_observed, leaf_increasing_size_observed, 
                                    leaf_color_observed, leaf_falling_observed, flower_buds_observed, flower_open_observed, 
                                    fruit_observed, fruit_ripe_observed, fruit_drop_observed))

    View(rubra_subset)

    summary(rubra_subset)

    ##  leaf_breaking_bud_observed leaf_observed    leaf_increasing_size_observed
    ##  Min.   :0.0000             Min.   :0.0000   Min.   :0.0000               
    ##  1st Qu.:0.0000             1st Qu.:1.0000   1st Qu.:0.0000               
    ##  Median :0.0000             Median :1.0000   Median :0.0000               
    ##  Mean   :0.1466             Mean   :0.8087   Mean   :0.1652               
    ##  3rd Qu.:0.0000             3rd Qu.:1.0000   3rd Qu.:0.0000               
    ##  Max.   :1.0000             Max.   :1.0000   Max.   :1.0000               
    ##                             NA's   :1        NA's   :1                    
    ##  leaf_color_observed leaf_falling_observed flower_buds_observed
    ##  Min.   :0.0000      Min.   :0.0000        Min.   :0.0         
    ##  1st Qu.:0.0000      1st Qu.:0.0000        1st Qu.:0.0         
    ##  Median :0.0000      Median :0.0000        Median :0.0         
    ##  Mean   :0.4087      Mean   :0.3391        Mean   :0.2         
    ##  3rd Qu.:1.0000      3rd Qu.:1.0000        3rd Qu.:0.0         
    ##  Max.   :1.0000      Max.   :1.0000        Max.   :1.0         
    ##  NA's   :1           NA's   :1             NA's   :1           
    ##  flower_open_observed fruit_observed   fruit_ripe_observed
    ##  Min.   :0.0000       Min.   :0.0000   Min.   :0.00       
    ##  1st Qu.:0.0000       1st Qu.:0.0000   1st Qu.:0.00       
    ##  Median :0.0000       Median :1.0000   Median :0.00       
    ##  Mean   :0.1897       Mean   :0.5862   Mean   :0.25       
    ##  3rd Qu.:0.0000       3rd Qu.:1.0000   3rd Qu.:0.25       
    ##  Max.   :1.0000       Max.   :1.0000   Max.   :1.00       
    ##                                                           
    ##  fruit_drop_observed
    ##  Min.   :0.0000     
    ##  1st Qu.:0.0000     
    ##  Median :0.0000     
    ##  Mean   :0.3621     
    ##  3rd Qu.:1.0000     
    ##  Max.   :1.0000     
    ## 

-   We had performed the same operation for all the species but aren't
    mentioning it here.

### 5. Conclusion

In the coming week, our team will work on adding the weather data and
developing plots to provide insightful visualizations.

### 6. Contributorship Statement

-   Goutham - RMarkdown document, RHTML, Push to Git
-   Shashank - Performed Data Cleaning, Finding the Range of Intensities
-   Sujana - Performed analysis on understanding the phenophase for all
    species

-   **Proofread** : Everyone
