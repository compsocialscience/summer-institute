# Lesson Plan for Organizers
## Summer Institutes in Computational Social Science 2020
Day 4, Surveys  
Prepared by Matt Salganik and Robin Lee

### Summary

In this activity, participants will work in groups to deploy an attitude survey to Amazon Mechanical Turk (MTurk).  Then, they can use a data set that we have pre-collected from MTurk and weight the data to attempt to recover estimates from a high-quality probability sample. This survey is US-centric.  

### Learning objectives

- Deploy a survey
- Develop familiarity with MTurk
- Understand strengths and weaknesses of non-probability samples
- Practice data wrangling and weighing non-probability samples
- Practice using the total survey error framework to reason about and discussion sources of errors in estimates

### Instruction preparation

To prepare for this activity you should: 
- Read the [slides](https://github.com/compsocialscience/summer-institute/blob/master/2020/materials/day4-surveys/05-intro-to-activity.pdf) that I will use to introduce the activity
- Read the [paper](https://5harad.com/papers/dirtysurveys.pdf) that inspired this activity
- Prepare one temporary MTurk account for each group that will be collecting data (if funding is available to support this data collection)
- Set up collaboration tools on programming exercise 

### Group formation

Form groups of 3 people. We changed the recommendation of groups of 5 to 3 this year because we foresee more effective remote collaboration at smaller group.  If possible, each group should have one person with experience in surveys and one person with experience in MTurk.  The more groups you have, the higher the costs of data collection because each group will collect some data.

### Schedule

2 hour and 45 minutes total: 1 hour in the morning, 1 hour and 45 minutes in the afternoon

- 60 minutes: Prepare and deploy surveys
- Break for lunch while data is being collected
- 15 minutes: Validate survey responses and pay MTurk data
- 60 minutes: Analyze data 
- 30 minutes: Discuss activity

For morning activity, there should be sufficient time when participants start with our template survey. Participants may choose to select their own questions from other survey questions and implement different set of questions on Google survey. However, they should at least allocate 30 minutes to deploy a complete survey on MTurk.

For afternoon activity, participants may choose to use our clean data to practice making comparison graphs and cell-based post-stratification. We have provided template code. We estimate it will take close to one hour to analyze data starting from a clean data and use our template code. However, if participants choose to continue with questions that are not from our template, they would need to obtain the survey benchmark estimate on their own. Also, it is likely that they would spend more time on data wrangling. 

### Key Tasks for Organizers and TA if you do use MTurk for data collection
- Double-check groups have included consent statement and Turk worker ID in the survey by 11:15 AM
- Double-check groups have paid Turk workers by 2PM


### Potential Discussion Questions
- What do you think is the trade-off of using non-probability survey?
- What are some trade-offs of using Mechanical Turk to recruit survey participants? Take a look at tasks available for MTurk workers. You don’t need to provide your name or address to view the tasks list. 
- What would be the trade-offs between using self-administration survey and telephone interviewing?
- What issues have you noticed while you’re implementing survey in Google Form that might affect how respondents answered the questions?

### Notes

- Participants may choose to use questions from our template survey or implement their own. 
- If you are collecting data when many people in the United States might be asleep (or not on MTurk), the data collection might be slower.  You can relax the location requirement if you wish.  The data we collected was from people in the United States, and your participants can do their analysis on that dataset.
- If you do not have money for MTurk fees, you can have participants take the surveys that were created by other groups. You can also ask participants to distribute surveys with their friends and family since this activity is about recovering estimates from non-probability sampling. 
- Due to constraint in time and change towards remote collaboration, the survey activity will not ask participants to archive and release of data. However, we will provide short tutorial to cover the concept and steps. 
- Please help participants have realistic expectations of what can be completed during this activity. It is likely that participants do not have time to complete model-based post-stratification. 

### Sources of Survey Questions

We draw the questions from Pew Research. To minimize the need to do data wrangling, we only picked questions that yield binary responses. Below is a summary of the methodology. Read more about the methodology [here](https://www.pewresearch.org/methods/u-s-survey-research/american-trends-panel/). 

#### Recruitment
The current respondents were recruited through both phone call survey and mail-in forms.

Pew Research created the American Trends Panel in 2014. Between 2014 and 2017, the panelists are invited to join the panel at the end of a large, national, landline and cellphone random-digit-dial survey that was conducted in both English and Spanish.

In August 2018, the ATP switched from telephone to address-based recruitment. Invitations were sent to a random, address-based sample (ABS) of households selected from the U.S. Postal Service’s Delivery Sequence File. In each household, the adult with the next birthday was asked to go online to complete a survey, at the end of which they were invited to join the panel. Households without internet access were instructed to return a postcard. These households were contacted by telephone and sent a tablet and free internet service if they agreed to participate. 

The U.S. Postal Service’s Delivery Sequence File has been estimated to cover as much as 98% of the population, although some studies suggest that the coverage could be in the low 90% range.

![Recruitment methods for the panel respondents](https://www.pewresearch.org/methods/wp-content/uploads/sites/10/2019/12/12.12.19_ATP-update.png?resize=640,510)

#### Administration of the survey

ATP is done by self-administration. It is not administered over phone interviewing. When a survey becomes available, panelists were notified via text messages, email or tablet notification depending on their consent options. Panelists can fill out the survey using smartphone, laptops/desktops or tablets. 
