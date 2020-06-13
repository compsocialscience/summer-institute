# Lesson plan for instructors
## Summer Institute in Computational Social Science 2020
## Activity, Day 4: Non-probability-based Surveys in Practice
## Matthew Salganik & Robin Lee [1]

### Instructor preparation

To prepare for this activity you should:
- Carefully read the [lesson plan for participants](lesson_plan_survey_participant.md) and the reading assignments included in it.
- If you don't have funds, you can still do many of the other parts of this activity (e.g., create the survey, analyze the dataset that we have collected).
- [Prolific](https://www.prolific.co/) is an alternative to MTurk. 
- Both MTurk and Prolific have tightened up verification and account security. Thus it would be best for organizers to ensure participants have accounts set-up and funds prepared a few days before the activity. 
- Optional: Set up collaboration tools for programming exercise

### Group formation

Form groups of about 3 people. We changed the recommendation of groups of 5 to 3 this year because we foresee more effective remote collaboration with smaller group.  If possible, each group should have one person with experience in surveys and one person with experience in MTurk.  The more groups you have, the higher the costs of data collection because each group will collect some data.

### Key Tasks for Organizers and TA if you do use MTurk for data collection

- Double-check groups have paid Turk workers by 2PM. When there is a doubt about whether the worker has completed the survey correctly, please just pay the worker.

### Potential Discussion Questions

When you come back for the group discussion, here are some possible questions:
- How close were the estimates for this activity to the estimates from Pew?  What do you think might be causing some of these differences? How could you test this speculations?
- What issues have you noticed while you’re implementing survey in Google Form that might affect how respondents answered the questions?
- How important is it to open-source data that you have collected with other researchers?
- What are things we should keep in mind when open-sourcing data?
- Does this actvity change how you think about your own research or the project you might want to do in week 2?

### Notes

- This activity is modular. You could easily do the afternoon part without doing the morning part.
- If you are collecting data when many people in the United States might be asleep (or not on MTurk), the data collection might be slower.  You can relax the location requirement if you wish.  The data we collected was from people in the United States, and your participants can do their analysis on that dataset.
- If you do not have money for MTurk fees, you can have participants take the surveys that were created by other groups. You can also ask participants to distribute surveys with their friends and family since this activity is about recovering estimates from non-probability sampling.
- Due to constraint in time and change towards remote collaboration, the survey activity will not ask participants to archive and release their data.  However, this is a good change to remind participants that they should think about open and reproducible research and they will be expected to use those practices for the projects they start in week 2.
- Please help participants have realistic expectations of what can be completed during this activity. It is likely that participants do not have time to complete model-based post-stratification.

### More information about Pew Research Center methodology

We draw the questions from Pew Research Center. To minimize the need to do data wrangling, we only picked questions that yield binary responses. Below is a summary of the methodology. Read more about the methodology [here](https://www.pewresearch.org/methods/u-s-survey-research/american-trends-panel/).

#### Recruitment

The current respondents were recruited through both phone call survey and mail-in forms.

Pew Research created the American Trends Panel (ATP) in 2014. Between 2014 and 2017, the panelists are invited to join the panel at the end of a large, national, landline and cellphone random-digit-dial survey that was conducted in both English and Spanish.

In August 2018, the ATP switched from telephone to address-based recruitment. Invitations were sent to a random, address-based sample (ABS) of households selected from the U.S. Postal Service’s Delivery Sequence File. In each household, the adult with the next birthday was asked to go online to complete a survey, at the end of which they were invited to join the panel. Households without internet access were instructed to return a postcard. These households were contacted by telephone and sent a tablet and free internet service if they agreed to participate.

The U.S. Postal Service’s Delivery Sequence File has been estimated to cover as much as 98% of the population, although some studies suggest that the coverage could be in the low 90% range.

![Recruitment methods for the panel respondents](https://www.pewresearch.org/methods/wp-content/uploads/sites/10/2019/12/12.12.19_ATP-update.png?resize=640,510)

#### Administration of the survey

ATP is done by self-administration. It is not administered over phone interviewing. When a survey becomes available, panelists were notified via text messages, email or tablet notification depending on their consent options. Panelists can fill out the survey using smartphone, laptops/desktops or tablets.
