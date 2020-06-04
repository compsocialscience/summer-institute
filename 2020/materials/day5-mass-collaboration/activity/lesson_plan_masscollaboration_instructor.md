# Lesson Plan for Instructors
## Summer Institutes in Computational Social Science 2020
## Day 5, Mass collaboration
## Prepared by Matt Salganik and Ian Lundberg

### Summary

In this activity, participants will take part in a simulated Fragile Families Challenge.  They will use the Fragile Families and Child Wellbeing Study data collected from a child's birth to age 9 to predict 6 outcomes at child age 15: 1) child grade point average (GPA), 2) child grit, 3) household eviction, 4) household material hardship, 5) caregiver layoff, and 6) caregiver participation in job training.

### Learning objectives

- Practice converting raw survey data to a suitable format
- Practice machine learning for predictive modeling
- Experience the common task method

### Instruction preparation

Well in advance of the activity (we recommend at least one full day), participants will need to apply for data access. We recommend that you go through these steps in advance to understand the process.

- Register for an account on the [OPR data archive](https://opr.princeton.edu/archive/restricted/Default.aspx)
- Visit your [switchboard](https://opr.princeton.edu/archive/restricted/Switchboard.aspx) and sign up for access to the Fragile Families and Child Wellbeing Study. When asked about your plans for using the data, write "I will be participating in the Fragile Families Challenge as part of SICSS." You may also include any additional plans for using the data.
- We approve these applications manually. Wait for an email from us.
- Once approved, we will email you a zipped folder containing the Challenge files. These data are available on the [OPR data archive](https://opr.princeton.edu/archive/restricted/Default.aspx), but the folder we will email you contains additional helper files.
- To open the zipped folder, you will need a password that we will post on Slack. Contact Ian Lundberg with questions.

Familiarize yourself with the files. They include components to support participants who may be falling behind, including a pre-prepared data file.

As the local organizer, you may optionally want to learn more about the Challenge.

- Watch the video in which Matt introduces the activity (see the [curriculum](https://compsocialscience.github.io/summer-institute/curriculum) page)
- Learn more about the Fragile Families Challenge from the [published paper](https://doi.org/10.1073/pnas.1915006117) or from the [project website](http://www.fragilefamilieschallenge.org/).
- Watch videos from the [Fragile Families Challenge Scientific Workshop](https://www.youtube.com/channel/UCjluzrRT8fqXCx3qHjQAb5A)

### Ethics: A brief note

The Fragile Families and Child Wellbeing Study is a dataset of real people who have selflessly opened up their lives to us for the last 15 years so that their experiences can contribute to scientific research. By participating in the Fragile Families Challenge, you become a collaborator in this project. It is of the utmost importance that you respect the families in the data by using what they have told us responsibly.

You can read more about our approach to ethical data access in our [paper](https://doi.org/10.1177%2F2378023118813023) on the topic.

### Group formation

Form groups of roughly 3 people randomly. You might consider distributing those with the most predictive modeling experience across groups.

### Rough schedule

At least one day in advance of the activity, direct your participants to complete the terms and conditions (see preparation above).

The schedule below assumes that 3.5 hours are allocated to the activity.

- 1 hour: Prepare a data file for analysis
- 15 minutes: Break. Many participants may not have yet prepared a clean data file. In this case, encourage them to use the cleaned file that we provided in the folder we emailed. This will allow them to proceed to the next step.
- 2 hours: In groups, participants build predictive models and submit to the [submission site](https://codalab.fragilefamilieschallenge.org/competitions/28)
- 15 minutes: Whole group debrief for your site.

In the debrief, here are some possible starter questions:

- How did you go about preparing the data file?
- Were there unexpected hurdles when preparing the data file? How did you address them? It is likely that groups took a range of approaches.
- How did you go about the predictive modeling exercise?
- What aspects of the exercise were successful from the standpoint of a participant?
- If you were organizing this mass collaboration, what would you change to make the experience better?
- Are there other questions we might tackle more successfully by working together than by working alone?

### Notes

- Participants should not expect to prepare the data and try many different sophisticated models in the time available. A good approach would be to focus on just one outcome of interest and try models of increasing complexity after successfully submitting a basic linear model to the leaderboard.
- This activity requires a lot of data wrangling and R fluency.
- Here are some tips about [data preparation](https://github.com/compsocialscience/summer-institute/blob/master/2020/materials/day5-mass-collaboration/activity/SICSS_FFC_datacleaning_tips.pdf).
- If participants have trouble submitting, note that a basic submission file with the correct structure is provided in the files we sent them: ffchallenge_SICSS_2020/example_submission/example_for_upload.zip


### A note about scoring

The online submission site scores submissions on the leaderboard set (530 cases, 1/8 of the sample). Participants are able to view their score on this set for each submission. In the original Challenge, we ultimately scored participants one time on the holdout set (1,591 cases). You may also want to score submissions on the holdout set one time at the end of the exercise. This will require manual coordination with the central organizers. If you want to do this, message Ian Lundberg to tell him the time at which your exercise will end. If we can coordinate the schedule successfully, Ian can score all submissions on the leaderboard at this time using the holdout data and email the scores to you. Because this is a manual process, it is possible that there will be problems.

If coordination is difficult, scoring on the holdout set may not be necessary. For pedagogical purposes, it may suffice for participants at SICSS to see their score on the leaderboard set, which will happen automatically in real time.

### Acknowledgments

This lesson plan draws on a previous version prepared with Alex Kindel. The [Fragile Families Challenge](https://doi.org/10.1073/pnas.1915006117) is a mass collaboration organized by Matt Salganik, Ian Lundberg, Alex Kindel, and Sara McLanahan, conducted with an additional 108 authors.
