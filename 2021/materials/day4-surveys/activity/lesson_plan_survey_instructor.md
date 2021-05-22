# Lesson plan for instructors
## Summer Institute in Computational Social Science 2021
## Activity, Day 4: Non-probability-based Surveys in Practice
## Prepared by Lai Wei and Matt Salganik

### Instructor preparation

To prepare for this activity you should:
- Carefully read the [lesson plan for participants](lesson_plan_survey_participant.md) and the reading assignments included in it.
- This activity has three main elements: 1) creating the questionnaire; 2) collecting some data; and 3) analyzing a larger dataset that we have pre-collected for you. From the instructor perspective, step 2 can be the most complicated. At SICSS-Princeton, we will have participants deploy their survey to MTurk, and we will provide them with accounts pre-loaded with funds (say $50 per account). If you don't have funds to support this you are welcome to skip the data collection step and just focus on steps (1) and (3). Also, if you have funds and you want to use an alternative platform, such as [Prolific](https://www.prolific.co/), that is OK; this activity is not specific to MTurk.
- If you want to provide your participants pre-loaded accounts, both MTurk and Prolific have tightened up verification and account security. Therefore, we recommend that you create these accounts a few days before the activity and we expect that your participants may run into problems accessing them.
- This activity will involve each group doing some programming.  You could explore setting up some kind of collaborative coding environemnt, but don't have plans to do that at SICSS-Princeton.

### Group formation

Form groups of about 3 people. We think small groups are better for remote collaboration (when doing this activity in person we often have groups of 4 or 5).  If possible, each group should have one person with experience with MTurk and one person with experience in surveys.  

If you are going to fund data collection for your participants, please note that the more groups you have, the higher the costs of data collection.

### Key Tasks for intructors and TA if you do use MTurk for data collection

- The organizer should double-check that groups have paid Turk workers by 2PM. Sometimes there is a question about whether the worker should be paid or not. When in doubt, we encourage you to just pay the worker.

### Potential Discussion Questions

When you come back for the group discussion, here are some possible questions:
- How close were the estimates for this activity to the estimates from Pew? What do you think might be causing some of these differences? How could you test this speculations?
- What issues have you noticed while you’re implementing survey in Google Form that might affect how respondents answered the questions?
- How important is it to open-source data that you have collected with other researchers?
- What are things we should keep in mind when open-sourcing data?
- Does this activity change how you think about your own research or the project you might want to do in week 2?

### Notes

- This activity is modular. You could easily do the afternoon part without doing the morning part.
- If you are collecting data when many people in the United States might be asleep (or not on MTurk), the data collection might be slower.  You can relax the location requirement if you wish.  The data we collected was from people in the United States, and your participants can do their analysis on that pre-collected dataset.
- If you do not have money for MTurk fees, you can have participants take the surveys that were created by other groups. You can also ask participants to distribute surveys with their friends and family since this activity is about recovering estimates from non-probability sampling.
- Due to constraint in time and change towards remote collaboration, the survey activity will not ask participants to archive and release their data.  You can review those materials from previous years [here](https://github.com/compsocialscience/summer-institute/blob/master/2019/materials/day4-surveys/06-intro-to-open-sourcing-data.pdf).  However, this is a good change to remind participants that they should think about open and reproducible research and they will be expected to use those practices for the projects they start in week 2.
- Please help participants have realistic expectations of what can be completed during this activity. It is likely that participants do not have time to complete model-based post-stratification.

### More information about Pew Research Center methodology

We draw the questions from Pew Research Center. To minimize the need to do data wrangling, we only picked questions that yield binary responses. Below is a summary of the methodology, and you can read about it more detail [here](https://www.pewresearch.org/methods/u-s-survey-research/american-trends-panel/).

#### Recruitment

The current respondents were recruited through both phone call survey and mail-in forms.

Pew Research created the American Trends Panel (ATP) in 2014. Between 2014 and 2017, the panelists are invited to join the panel at the end of a large, national, landline and cellphone random-digit-dial survey that was conducted in both English and Spanish.

In August 2018, the ATP switched from telephone to address-based recruitment. Invitations were sent to a random, address-based sample (ABS) of households selected from the U.S. Postal Service’s Delivery Sequence File. In each household, the adult with the next birthday was asked to go online to complete a survey, at the end of which they were invited to join the panel. Households without internet access were instructed to return a postcard. These households were contacted by telephone and sent a tablet and free internet service if they agreed to participate.

The U.S. Postal Service’s Delivery Sequence File has been estimated to cover as much as 98% of the population, although some studies suggest that the coverage could be in the low 90% range.

![Recruitment methods for the panel respondents](https://www.pewresearch.org/methods/wp-content/uploads/sites/10/2019/12/12.12.19_ATP-update.png?resize=640,510)

#### Administration of the survey

ATP is done by self-administration. It is not administered over phone interviewing. When a survey becomes available, panelists were notified via text messages, email or tablet notification depending on their consent options. Panelists can fill out the survey using smartphone, laptops/desktops or tablets.
