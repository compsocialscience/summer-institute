# Clean mturk responses

# Desired output
# Opinion Questions would have column name as question label, values would be either 1 or 0. 
# 1 represents the response according to the label in the following file.
# https://github.com/compsocialscience/summer-institute/blob/master/2020/materials/day4-surveys/activity/pew_benchmark_question_source_sicss_2020.csv
# For example, an 1 in COVIDSM.1 means that the respondent answered "Yes, I get news about coronavirus outbreak on social media". 
# 
# Demographic
# Follow Cambria's Example


# Step 1: Load MTurk survey data

### Before downloading data
# - Dropped responses that did not select "I agree" on consent check
# - Dropped duplicates, responses that did not pass attention screening questions
# - Deleted MTurk worker ID, consent check, and timestamp variables
# - Rename column names 

### Load data and tidy
# - Download responses (as .csv) from Google Forms and load
# - Rename responses into 1 and 0 for opinion questions
# - Rename responses to match match names in Pew benchmark and cleaned ACS data for demographics questions


library(tidyverse)
raw <- read_csv("raw_mturk_data.csv")

# Step 1: rename responses into 1 and 0 values
processed <- raw %>% mutate(COVIDNEWSSWITCH.1 = recode(COVIDNEWSSWITCH.1, 
                                                       `Yes, I have` = 1, `No, I have not` = 0), 
                            COVIDSM.1 = recode(COVIDSM.1, Yes = 1, No = 0),
                            COVIDINFO.1 = recode(COVIDINFO.1,  `Yes, I feel like I have a handle on the issues and developments` = 1,
                                                 `No, I feel like I can't get a handle on the issues and developments` = 0),
                            COVIDINFODIFF.1 = recode(COVIDINFODIFF.1, `Difficult to determine what is true and what is not` = 1,
                                                     `Easy to determine what is true and what is not` = 0), 
                            COVIDWORN.1 = recode(COVIDWORN.1, `I feel the need to take breaks from the news about the coronavirus outbreak` = 1,
                                                 `I feel the need to stay tuned in to news about the coronavirus outbreak` = 0),
                            COVIDAVOID.1 = recode(COVIDAVOID.1, `Yes, I have` = 1, `No, I have not` = 0), 
                            DISCRIM.1 = recode(DISCRIM.1, `People seeing racial discrimination where it really does NOT exist` = 1,
                                               `People NOT seeing racial discrimination where it really DOES exist` = 0), 
                            WORLDAFF.1 = recode(WORLDAFF.1, `It’s best for the future of our country to be active in world affairs.` = 1, 
                                                `We should pay less attention to problems overseas and concentrate on problems here at home.` = 0),
                            GOVTSIZE.1 = recode(GOVTSIZE.1, `Smaller government, fewer services` = 1, `Bigger government, more services` = 0),
                            EMERGFUND.1 = recode(EMERGFUND.1, `Yes` = 1, `No` = 0), 
                            COVIDIGGOV.1 = recode(COVIDIGGOV.1, `Yes, the federal government has this responsibility` = 1, 
                                                  `No, the federal government does not have this responsibility` = 0),
                            COVIDIGGOV.2 = recode(COVIDIGGOV.2, `Yes, the federal government has this responsibility` = 1, 
                                                  `No, the federal government does not have this responsibility` = 0),
                            COVWEBSOC.1 = recode(COVWEBSOC.1, `Good thing` = 1, `Bad thing` = 0),
                            COVWEBSOC.2 = recode(COVWEBSOC.2, `Good thing` = 1, `Bad thing` = 0),
                            ALG.1 = recode(ALG.1, `It is possible for computer programs to make decisions without human bias` = 1,
                                           `Computer programs will always reflect the biases of the people who designed them` = 0), 
                            SOCIALMEDIA_LOOKFEEL.1 = recode(SOCIALMEDIA_LOOKFEEL.1, `Acceptable` = 1, 
                                                   `Not Acceptable` = 0),
                            SOCIALMEDIA_REMINDTOVOTE.1 = recode(SOCIALMEDIA_REMINDTOVOTE.1, `Acceptable` = 1, 
                                                   `Not Acceptable` = 0),
                            SOCIALMEDIA_HAPPYSADPOSTS.1 = recode(SOCIALMEDIA_HAPPYSADPOSTS.1, `Acceptable` = 1, 
                                                   `Not Acceptable` = 0),
                            ALG_PAROLE.1 = recode(ALG_PAROLE.1, `Acceptable` = 1, 
                                                        `Not Acceptable` = 0),
                            ALG_PERSONALFINANCE_ALG.1 = recode(ALG_PERSONALFINANCE_ALG.1, `Acceptable` = 1, 
                                                        `Not Acceptable` = 0),
                            ALG_SCREENRESUME = recode(ALG_SCREENRESUME, `Acceptable` = 1, 
                                                        `Not Acceptable` = 0),
                            ALG_JOBCANDIDATE.1 = recode(ALG_JOBCANDIDATE.1, `Acceptable` = 1, 
                                                        `Not Acceptable` = 0))
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
                                                 ifelse(processed$race_ethnicity == "White", "white", "other")))))
processed <- processed %>% select(-race_ethnicity, -hispanic) %>% mutate(race = race1) %>% select(-race1)
# age into categories
processed <- processed %>% mutate(age_cat = ifelse(processed$age >= 18 & processed$age <= 29, "18 - 29", 
                                     ifelse(processed$age >= 30 & processed$age <= 49, "30 - 49", 
                                            ifelse(processed$age >= 50 & processed$age <= 64, "50 - 64", "65 +")))) %>%
  #drop age for privacy
  select(-age) 
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
  select(-state)
# recode educ to match categories in cleaned ACS data
processed <- processed %>% mutate(educ = recode_factor(educ, "No schooling completed" = "no high school diploma", 
                                         "Nursery or Preschool through Grade 12 (no high school diploma)" = "no high school diploma", 
                                         "High school graduate (including GED or alternative credential)" = "high school graduate",
                                         "Some college or Associate's Degree (for example: AA, AS)" = "some college or associate's degree",
                                         "Bachelor's degree (for example: BA, BS)" = "bachelor's degree",
                                         "Postgraduate or professional degree, including Master's, Doctorate, medical, or law degree (for example: MA, MS, MEng, MEd, MSW, MBA, MD, DDS, DVM, LLB, JD, PhD, EdD)" = "postgraduate or professional degree"))
## Step 3: Save cleaned mturk data
write_csv(processed, "2020_06_clean_mturk_data.csv")
