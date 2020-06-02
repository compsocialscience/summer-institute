# Non-probability-based Surveys in Practice
Matthew Salganik & Robin Lee [1]
Summer Institute in Computational Social Science 2020

How accurate are estimates from non-probability-based online surveys? Can results from online surveys administered to non-probability-based samples generalize to the broader population? In this activity, we will conduct a survey on MTurk workers and try a variety of estimation techniques. Then, we will compare our estimates to those that come from high-quality probability-based samples used by the Pew Research Center.
In the process, we will gain experience with writing survey questionnaires, creating surveys on Google Forms, publishing surveys on MTurk, data wrangling, implementing various weighting methods, and thinking about broader issues related to survey errors and data quality. Please read the entire activity before beginning.
Note: This assignment uses Google Forms as the survey tool because it is free. See appendix for comments about using Qualtrics, a more sophisticated platform that requires payment or institutional support.

## Before group activity
- Read Chapter 3 in Bit by Bit
- Read the paper that motivated this activity: Online, Opt-in Surveys: Fast and Cheap, but are they Accurate? by Goel et al. In this paper, the researchers conduct an opt-in, non-probability survey of people on MTurk. They compared the raw sample estimates and those made after various weighting adjustments to estimates that come from surveys using probability-based sampling methods.
We have already conducted a survey with a large MTurk sample with questions similar to the ones used by Goel et al. You are welcome to use this data to try more advanced estimation estimates. Please review the survey we used to collect these responses. You will be added as collaborators on Google Forms and can use our survey as a template for yours. We administered a selection of questions from various 2019 Pew Surveys. Because of the time constraints in the activity, we recommend you choose from, but you are welcome to administer and analyze questions from the Pew Research that we did not ask.


### Activity schedule
- 2 hour and 45 minutes
    - 1 hour in the morning: prepare and deploy surveys
    - break for lunch while data is being collected on MTurk
    - 1 hour and 45 minutes in the afternoon
      - 15 minutes: validate survey responses and pay MTurk data
      - 60 minutes: analyze a larger dataset that we collected for you
      - 30 minutes: discuss activity

## During group activity
### Morning session: 
1. Create a survey on Google Forms. 
  - You can see our template here. In designing your survey, think of ways to ensure the quality of the data collected. For example, use attention screeners, offer the "don't know" options judiciously, think about when to allow respondents to "skip" a question and when to require a response, etc. 
  - Make sure you preview the survey on Google Forms before you publish it on MTurk.
2. Deploy your survey to MTurk. We estimate that the survey will take about 6 minutes, and we would like to pay an hourly wage of $15 per hour so you should pay $1.50 per completed survey. (Getting great survey results from MTurk and Google Forms)
  - For participants of SICSS-Duke: We have created MTurk accounts for you to use. Please create your tasks from these accounts with the pre-loaded funds. If you use your own account for data collection, we won't be able to reimburse you.
  - If you do not have funds allocated for MTurk, you may ask other participants and your friends and family to fill in the survey to construct a non-probability-based sample.
  
### Afternoon session: 
1. After the data has been collected, validate survey and pay MTurk workers. 
  - Remove all personally-identifying information, i.e. the MTurk worker ID:
  - Download the CSV of responses from Google Forms.
  - If you used an attention screener, delete responses that did not meet the criteria.
  - Check to make sure that all of your MTurk workers actually took the survey by comparing the list of Worker IDs provided in the survey data against the Worker IDs recorded by the MTurk platform. [2] 
  - Pay MTurk workers that complete valid survey. 
  - Remove redundant entries, if any.
  - After you have used the Worker ID data to validate answers and to remove redundant entries, delete it from your dataset. The Worker ID is a unique string that can be used to personally identify people.
  
2. Analyze your data. 
  - Compare your raw and weighted estimates, respectively, with what’s published by the existing survey. Use this template as you work through these steps.
  - If you use the survey data we already collected on MTurk, you can see the results for those questions published by Pew here. [3]
  - Replicate Figure 1 from Goel et al.
  - Next, try different adjustment methods, and for each method you use, replicate Figure 2 from Goel et al..
  - When doing the adjustment methods, you should start with the simplest thing first. Do not jump to the most fancy technique right away. You may use post-stratification packages, but only after you have coded up at least one technique by hand (if you have coded one of these techniques as part of your earlier research that counts).
  - Start with cell-based post-stratification using a small number of cells. Hint: think about what may happen if you have empty cells.
  - Due to the time constraint, it is unlikely that there will be sufficient time for model-based stratification. We provide the instruction on how to do them in the code here. 

### Activity Checklist for Participants
  - Decide on questions to replicate based on example template
  - Type in questions in Google Form
  - Include consent statement
  - Include MTurk worker ID in Google Form
  - Include demographics questions based on American Community Survey examples [include link]
  - (Optional) Decide what validation techniques to check responses quality
  - Test run your survey to see if it can be completed in 6 minutes
  - Create an MTurk Task ($1.5 per task for a 6 minute survey to ensure $15/hour wage)
  - Pay Turk Workers
  - (Optional) Validate responses 
  - Remove personally-identifying information
  - Create comparison graphs

## Tips and additional resources
  - You might want to divide the work among group members, including creating the survey on Google Forms, reshaping data files, breaking up the analysis into modular functions, etc.
  - Here are some more resources on web surveys and here is Amazon's best practices for MTurk Requesters.
  - Here is a paper about practical tips for ethical data sharing.
  - Here is a case study of some of the issues that come up with data sharing.

## Further reading
  - Dutwin and Buskirk. "Apples to Oranges or Gala versus Golden Delicious?: Comparing Data Quality of Nonprobability Internet Samples to Low Response Rate Probability Samples"
  - Baker et al. "Summary Report of the AAPOR Task Force on Non-probability Sampling"
  - Kalton and Flores-Cervantes "Weighting methods"
  - Berinsky, Margolis, and Sances "Separating the Shirkers from the Workers? Making Sure Respondents Pay Attention on Self‐Administered Surveys"

## Appendix: Qualtrics-specific instructions
If you are using Qualtrics instead of Google Forms, you do not have to include a question on the survey asking for MTurk Worker ID. Instead, you can verify survey completion by generating a unique validation code for each survey respondent, and have them enter that on MTurk instead.
Here are detailed instructions for generating survey completion codes.
Qualtrics has more features and customizable options -- for example, you can randomize the response options to a survey question or enable more sophisticated skip logic. Try playing around with these!


[1] based on the activities from SICSS 2017 - 2019 with the input from Yo-Yo Chen, Janet Xu, and Cambria Naslund.
[2] Tip: to validate WorkerID matches, you can download a CSV of WorkerIDs from your MTurk results page and match that with your survey results data.
[3] Technical note: Most survey questions have a "don't know/refuse" residual category, but predicting the percentage of people who refused to answer may not always be substantively relevant. To omit this category from the analysis, we normalized the existing survey results by dividing by the percentage of people who responded to that question.
