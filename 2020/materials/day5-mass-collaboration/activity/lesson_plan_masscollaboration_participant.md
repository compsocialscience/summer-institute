# Lesson Plan for Participants
## Summer Institutes in Computational Social Science 2020
## Day 5, Mass collaboration
## Prepared by Matt Salganik and Ian Lundberg

### Summary

In this activity, you will take part in a simulated Fragile Families Challenge. You will use the Fragile Families and Child Wellbeing Study data collected from a child's birth to age 9 to predict 6 outcomes at child age 15: 1) child grade point average (GPA), 2) child grit, 3) household eviction, 4) household material hardship, 5) caregiver layoff, and 6) caregiver participation in job training.

### Learning objectives

- Practice converting raw survey data to a suitable format
- Practice machine learning for predictive modeling
- Experience the common task method

### Preparation

Well in advance of the activity, you will need to apply for data access.

- Register for an account on the [OPR data archive](https://opr.princeton.edu/archive/restricted/Default.aspx)
- Visit your [switchboard](https://opr.princeton.edu/archive/restricted/Switchboard.aspx) and sign up for access to the Fragile Families and Child Wellbeing Study. When asked about your plans for using the data, write "I will be participating in the Fragile Families Challenge as part of SICSS." You may also include any additional plans for using the data.
- We approve these applications manually. Wait for an email from us.
- Once approved, we will email you a zipped folder containing the Challenge files. These data are available on the [OPR data archive](https://opr.princeton.edu/archive/restricted/Default.aspx), but the folder we will email you contains additional helper files.
- To open the zipped folder, you will need a password that we will post on Slack. Contact your local organizer or Ian Lundberg with questions.

Shortly before the activity, watch the video in which Matt introduces the activity (see the [curriculum](https://compsocialscience.github.io/summer-institute/curriculum) page)

### Ethics: A brief note

The Fragile Families and Child Wellbeing Study is a dataset of real people who have selflessly opened up their lives to us for the last 15 years so that their experiences can contribute to scientific research. By participating in the Fragile Families Challenge, you become a collaborator in this project. It is of the utmost importance that you respect the families in the data by using what they have told us responsibly.

You can read more about our approach to ethical data access in our [paper](https://doi.org/10.1177%2F2378023118813023) on the topic.

### Rough schedule

- 1 hour: Prepare a data file for analysis
- Break. If you are not happy with your prepared data file, we recommend using the cleaned file that we provided in the folder we emailed you. This will allow you to proceed to the next step.
- 2 hours: In groups, build predictive models and submit to the [submission site](https://codalab.fragilefamilieschallenge.org/competitions/28)
- 15 minutes: Whole group debrief for your site

AT THE END OF THE ACTIVITY, DELETE THE DATA FILES. It is important that the data not sit on a local machine unnecessarily. If you would like access to the data for future research, you can download the data at any time from the OPR Data Archive.

### Notes

- Do not expect to try many different sophisticated models in the time available. A good approach would be to focus on just one outcome of interest and try models of increasing complexity after successfully submitting a basic linear model to the leaderboard.
- This activity requires a lot of data wrangling and R fluency.
- Here are some tips about [data preparation](https://github.com/compsocialscience/summer-institute/blob/master/2020/materials/day5-mass-collaboration/activity/SICSS_FFC_datacleaning_tips.pdf).
- If you have trouble submitting, note that a basic submission file with the correct structure is provided in the files we sent: ffchallenge_SICSS_2020/example_submission/example_for_upload.zip

### Acknowledgments

This lesson plan draws on a previous version prepared with Alex Kindel. The [Fragile Families Challenge](https://doi.org/10.1073/pnas.1915006117) is a mass collaboration organized by Matt Salganik, Ian Lundberg, Alex Kindel, and Sara McLanahan, conducted with an additional 108 authors.
