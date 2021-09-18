# Lesson Plan for Participants
## Summer Institutes in Computational Social Science 2021
## Day 5, Mass collaboration
## Prepared by Emily Cantrell and Matt Salganik

### Summary

In this activity, you will take part in a simulated Fragile Families Challenge. You will use the Fragile Families and Child Wellbeing Study data collected from a child's birth to age 9 to predict 6 outcomes at child age 15: 1) child grade point average (GPA), 2) child grit, 3) household eviction, 4) household material hardship, 5) caregiver layoff, and 6) caregiver participation in job training.

### Learning objectives

- Practice converting raw survey data to a suitable format
- Practice creating machine learning for predictive modeling
- Experience the common task method

### Preparation

Well in advance of the activity, you will need to apply for data access. Your location's organizers will provide a deadline for the application based on the timing of your location's event. To apply for access:

- Register for an account on the [OPR data archive](https://opr.princeton.edu/archive/restricted/Default.aspx).
- Visit your [switchboard](https://opr.princeton.edu/archive/restricted/Switchboard.aspx) and sign up for access to the Fragile Families and Child Wellbeing Study. When asked about your plans for using the data, write: “I will be participating in the Fragile Families Challenge activity as part of the 2021 Summer Institute in Computational Social Science (SICSS) at the _________ location.” You may also include any additional plans for using the data.
- We approve these applications manually, so there will be a lag before the next steps. Once approved, you will receive an email from the Fragile Families Study. They will direct you to the files stored on the [OPR data archive](https://opr.princeton.edu/archive/restricted/Default.aspx), but for our activity we are going to use a tailored set of files instead (see below).
- Prior to the day of your location's FFC activity, you will receive an email from Emily Cantrell with the data tailored to this activity. Emily's email will come through Princeton's Secure Send system. You will have to make an account to download; it will walk you through the steps. Then download the zipped data folder. To open the zipped folder, you will need a password that we will post on Slack. 
- Contact your local organizer or Emily Cantrell (e.cantrell@princeton.edu) with any questions.

Before the activity, watch the video in which Matt introduces the activity, which will be posted on the [curriculum section of the SICSS website](https://compsocialscience.github.io/summer-institute/curriculum).

### Ethics: A brief note

The Fragile Families and Child Wellbeing Study is a dataset of real people who have selflessly opened up their lives to us for the last 15 years so that their experiences can contribute to scientific research. By participating in the Fragile Families Challenge, you become a collaborator in this project. It is of the utmost importance that you respect the families in the data by using what they have told us responsibly.

You can read more about our approach to ethical data access in our [paper](https://doi.org/10.1177%2F2378023118813023) on the topic.

### Rough schedule

- 1 hour: In groups, prepare a data file for analysis. **Before you do any coding, spend at least 5 minutes discussing your plans as a group**. 
- Break. If you are not happy with your prepared data file, we recommend using the cleaned file that we provided in the folder we emailed you. This will allow you to proceed to the next step.
- 1 hour & 40 minutes: In groups, build predictive models and submit to the [submission site](https://codalab.fragilefamilieschallenge.org/competitions/36).    
      - Again, before you do any coding, spend at least 5 minutes discussing your plans as a group.    
      - Tip: Do not expect to try many different sophisticated models in the time available. A good approach would be to focus on just one outcome of interest and try models of increasing complexity after successfully submitting a basic linear model to the leaderboard.     
- 5 minutes: Reflect with your small group: What are you taking away from this activity? 
- 15 minutes: Whole group debrief for your site


### Deleting the files after use
AT THE END OF THE ACTIVITY, DELETE THE DATA FILES. It is important that the data not sit on a local machine unnecessarily. If you would like access to the data for future research, you can download the data at any time from the OPR Data Archive.

### Resources

There are three sets of resources that may be helpful.

Resources about preparing data and making a submission:
- [Submission site](https://codalab.fragilefamilieschallenge.org/competitions/36)
- Here are some tips about [data preparation](https://github.com/compsocialscience/summer-institute/blob/master/2021/materials/day5-mass-collaboration/activity/SICSS_FFC_datacleaning_tips.pdf).
- To learn about the variables included in the data files, you might use: the [metadata explorer](http://metadata.fragilefamilies.princeton.edu/), use the accompanying [R](https://cran.r-project.org/web/packages/ffmetadata/index.html) and [Python](https://github.com/fragilefamilieschallenge/ffmetadata-py) packages, and/or refer to survey [questionnaires and other documentation](https://fragilefamilies.princeton.edu/data-and-documentation/public-data-documentation).
- This [blog post](https://www.fragilefamilieschallenge.org/upload-your-contribution/) shows step-by-step how to zip and upload a submission.
- If you have trouble submitting, compare the file you are attempting to submit to our [example for upload](https://github.com/compsocialscience/summer-institute/blob/master/2020/materials/day5-mass-collaboration/activity/example_for_upload.zip). Often errors occur when the numbers are in a different format, the column names are incorrect, or the directory structure of the zipped folder is incorrect. It is important that the zipped folder has no subdirectories.

Resources about the Fragile Families Challenge:
- The [published paper](https://doi.org/10.1073/pnas.1915006117)
- The [project website](http://www.fragilefamilieschallenge.org/)
- Videos from the [Fragile Families Challenge Scientific Workshop](https://www.youtube.com/channel/UCjluzrRT8fqXCx3qHjQAb5A)
- A [Special Collection of _Socius_](https://journals.sagepub.com/topic/collections-srd/srd-1-fragile_families/srd) in which participants summarize the approaches they used in the Challenge.

Resources about the broader Fragile Families and Child Wellbeing Study:
- Study [website](https://fragilefamilies.princeton.edu/)
- Database of [research papers](https://ffpubs.princeton.edu/) using the data

### Acknowledgments

This activity was designed with input from participants and TAs from SICSS 2017 - 2020, especially Yo-Yo Chen, Janet Xu, Alex Kindel, and Ian Lundberg as well as participants at many Fragile Families Challenge Getting Started Workshops. The [Fragile Families Challenge](https://doi.org/10.1073/pnas.1915006117) is a mass collaboration organized by Matt Salganik, Ian Lundberg, Alex Kindel, and Sara McLanahan involving hundreds of researchers.
