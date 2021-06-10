# Clean mturk responses

# Desired output
# Opinion Questions would have column name as question label, values would be either 1 or 0. 
# For social media usage, 1 means the respondent has used the software; For political priority question, 1 means the issue is seen as "top priority"



# Step 1: Load MTurk survey data

### Before loading data
# - Dropped responses that did not select "I agree" on consent check
# - Dropped duplicates, responses that did not pass attention screening questions
# - Deleted MTurk worker ID, consent check, and timestamp variables
# - Rename column names 





### Load data and tidy
# - Rename responses into 1 and 0 for opinion questions
# - Rename responses to match match names in Pew benchmark and cleaned ACS data for demographics questions


library(tidyverse)
raw <- read_csv("sicss_survey.csv")

# Step 1: rename responses into 1 and 0 values
processed <- raw %>% mutate(twitter = recode(twitter,`Yes` = 1, `No` = 0), 
                            instagram = recode(instagram,`Yes` = 1, `No` = 0), 
                            facebook = recode(facebook,`Yes` = 1, `No` = 0), 
                            snapchat = recode(snapchat,`Yes` = 1, `No` = 0), 
                            youtube = recode(youtube,`Yes` = 1, `No` = 0), 
                            whatsapp = recode(whatsapp,`Yes` = 1, `No` = 0), 
                            pinterest = recode(pinterest,`Yes` = 1, `No` = 0), 
                            linkedin = recode(linkedin,`Yes` = 1, `No` = 0), 
                            reddit = recode(reddit,`Yes` = 1, `No` = 0), 
                            tiktok = recode(tiktok,`Yes` = 1, `No` = 0), 
                            nextdoor = recode(nextdoor,`Yes` = 1, `No` = 0), 
                            
                            job = recode(job, `Top priority` = 1, .default = 0),
                            bd = recode(bd, `Top priority` = 1, .default = 0),
                            cri = recode(cri, `Top priority` = 1, .default = 0),
                            cvd = recode(cvd, `Top priority` = 1, .default = 0),
                            hc = recode(hc, `Top priority` = 1, .default = 0),
                            ter = recode(ter, `Top priority` = 1, .default = 0),
                            gt = recode(gt, `Top priority` = 1, .default = 0),
                            edu = recode(edu, `Top priority` = 1, .default = 0),
                            inf = recode(inf, `Top priority` = 1, .default = 0),
                            sc = recode(sc, `Top priority` = 1, .default = 0),
                            imm = recode(imm, `Top priority` = 1, .default = 0),
                            ec = recode(ec, `Top priority` = 1, .default = 0),
                            gcc = recode(gcc, `Top priority` = 1, .default = 0),
                            jus = recode(jus, `Top priority` = 1, .default = 0),
                            poor = recode(poor, `Top priority` = 1, .default = 0),
                            mil = recode(mil, `Top priority` = 1, .default = 0),
                            pol = recode(pol, `Top priority` = 1, .default = 0),
                            ra = recode(ra, `Top priority` = 1, .default = 0),
                            da = recode(da, `Top priority` = 1, .default = 0),
                            )
## Step 2: clean demograhic

# recode race
## note: there are many ways to code these data into mutually exclusive categories
## for simplicity's sake, everyone who checked multiple races is coded as "other",
## and hispanic is added as a separate category that includes everyone who selected yes
## this is just one way to code it and not really the "right" way to deal with this data,
## and you are welcome/encouraged to try other ways
table(processed$race_ethnicity, processed$hispanic)
processed <- processed %>% mutate(race1 = ifelse(processed$hispanic == "Yes", "hispanic",
                                                 ifelse(processed$race_ethnicity == "Black or African American", "black",
                                                        ifelse(processed$race_ethnicity == "Asian or Asian-American", "asian",
                                                               ifelse(processed$race_ethnicity == "Native Hawaiian or Pacific Islander","asian",
                                                                   ifelse(processed$race_ethnicity == "White", "white", "other"))))))
processed <- processed %>% dplyr::select(-race_ethnicity, -hispanic) %>% mutate(race = race1) %>% dplyr::select(-race1)
# age into categories
processed <- processed %>% mutate(age_cat = ifelse(processed$age >= 18 & processed$age <= 29, "18 - 29", 
                                                   ifelse(processed$age >= 30 & processed$age <= 49, "30 - 49", 
                                                          ifelse(processed$age >= 50 & processed$age <= 64, "50 - 64", "65 +")))) %>%
  #drop age for privacy
  dplyr::select(-age) 
# collapse states into regions
northeast <- c("Connecticut", "Maine", "Massachusetts", "New Hampshire", "Rhode Island", 
               "Vermont", "New Jersey", "New York", "Pennsylvania")
midwest <- c("Illinois", "Indiana", "Michigan", "Ohio", "Wisconsin", "Iowa", "Kansas", 
             "Minnesota", "Missouri", "Nebraska", "North Dakota","South Dakota")
south <- c("Delaware", "Florida", "Georgia", "Maryland", "North Carolina", "South Carolina",
           "Virginia", "District of Columbia", "West Virginia", "Alabama", "Kentucky", 
           "Mississippi", "Tennessee", "Arkansas", "Louisiana", "Oklahoma", "Texas")
west <- c("Arizona", "Colorado", "Idaho", "New Mexico", "Montana", "Utah", "Nevada", "Wyoming", "Alaska", "California", "Hawaii", "Oregon", "Washington")
processed <- processed %>% mutate(region = ifelse(state %in% northeast, "northeast",
                                                  ifelse(state %in% midwest, "midwest",
                                                         ifelse(state %in% south, "south", 
                                                                ifelse(state %in% west, "west", NA))))) %>%
  # drop state for privacy
  dplyr::select(-state)


## Step 3: Remove respondents with missingness in demographics
processed <- processed %>% drop_na(region,age_cat,race,sex)

## ACS does not currently allow for an “other” response to sex
## That means that we can’t use the ACS data for post-stratification for these respondents
## You are welcome to find some other way to include these respondents if you would like
## This example helps illustrate how post-stratification depends on having population counts collected by others
processed <- processed %>% filter(sex!="other")



## Step 4: Save cleaned mturk data
write_csv(processed, "2021_clean_mturk_data.csv")
