# Non-probability-based Surveys in Practice
Matthew Salganik & Robin Lee [1]
Summer Institute in Computational Social Science 2020

How accurate are estimates from non-probability-based online surveys? Can results from online surveys administered to non-probability-based samples generalize to the broader population? In this activity, we will conduct a survey on MTurk workers and try a variety of estimation techniques. Then, we will compare our estimates to those that come from high-quality probability-based samples used by the Pew Research Center.
In the process, we will gain experience with writing survey questionnaires, creating surveys on Google Forms, publishing surveys on MTurk, data wrangling, implementing various weighting methods, and thinking about broader issues related to survey errors and data quality. Please read the entire activity before beginning.

Note: This assignment uses Google Forms as the survey tool because it is free. See appendix for comments about using Qualtrics, a more sophisticated platform that requires payment or institutional support.

## Before group activity
- Read Chapter 3 in [*Bit by Bit*](https://www.bitbybitbook.com/)
- Read the paper that motivated this activity: [Online, Opt-in Surveys: Fast and Cheap, but are they Accurate?](https://5harad.com/papers/dirtysurveys.pdf) by Goel et al. In this paper, the researchers conduct an opt-in, non-probability survey of people on MTurk. They compared the raw sample estimates and those made after various weighting adjustments to estimates that come from surveys using probability-based sampling methods.
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
  - Decide on questions to replicate based on our template [here](https://docs.google.com/forms/d/1gmuJQtzZ-wPNLTnGBtVmWr5_rs2xIEhbeoKzn2gWpgo/edit). In designing your survey, think of ways to ensure the quality of the data collected. For example, use attention screeners, offer the "don't know" options judiciously, think about when to allow respondents to "skip" a question and when to require a response, etc. 
  - Include consent statement
  - Include MTurk worker ID in Google Form
  - Include demographics questions based on [American Community Survey form example](https://www2.census.gov/programs-surveys/acs/methodology/questionnaires/2020/quest20.pdf?#) 
  - (Optional) Decide what validation techniques to check responses quality
  - Make sure you preview the survey on Google Forms before you publish it on MTurk. Check if it can be completed within 6 minute. 
  
2. Deploy your survey to MTurk. We estimate that the survey will take about 6 minutes, and we would like to pay an hourly wage of $15 per hour so you should pay $1.50 per completed survey. 
  - For participants of SICSS-Duke: We have created MTurk accounts for you to use. Please create your tasks from these accounts with the pre-loaded funds. If you use your own account for data collection, we won't be able to reimburse you.
  - If you do not have funds allocated for MTurk, you may ask other participants and your friends and family to fill in the survey to construct a non-probability-based sample.
  
### Afternoon session: 
1. After the data has been collected, validate survey and pay MTurk workers. 
  - Download the CSV of responses from Google Forms.
  - Check to make sure that all of your MTurk workers actually took the survey by comparing the list of Worker IDs provided in the survey data against the Worker IDs recorded by the MTurk platform. [2] 
  - If you used an attention screener, delete responses that did not meet the criteria.
  - Pay MTurk workers that completed valid surveys. 
  - Remove redundant entries, if any.
  - After you have used the Worker ID data to validate answers and to remove redundant entries, delete it from your dataset. The Worker ID is a unique string that can be used to personally identify people.
  
2. Analyze your data. 
  - Compare your raw and weighted estimates, respectively, with what’s published by the existing survey. Use [this template](survey_activity_2020_template.Rmd) as you work through these steps.
  - If you use the survey data we already collected on MTurk, you can see the results for those questions published by Pew [here](pew_benchmark_question_source_sicss_2020.csv). [3]
  - Replicate Figure 1 from Goel et al.
  - Next, try different adjustment methods, and for each method you use, replicate Figure 2 from Goel et al..
  - When doing the adjustment methods, you should start with the simplest thing first. Do not jump to the most fancy technique right away. You may use post-stratification packages, but only after you have coded up at least one technique by hand (if you have coded one of these techniques as part of your earlier research that counts).
  - Start with cell-based post-stratification using a small number of cells. Hint: think about what may happen if you have empty cells.
  - Due to the time constraint, it is unlikely that there will be sufficient time for model-based stratification. We provide the instruction on how to do them in the code [here](survey_activity_2020_solution.Rmd). 


## Additional resources
  -   [Here](https://psrc.princeton.edu/our-services/using-mturk) are some more resources on web surveys and [here](https://mturkpublic.s3.amazonaws.com/docs/MTURK_BP.pdf) is Amazon's best practices for MTurk Requesters.
  -   [Here](https://doi.org/10.1177/2515245917747656) is a paper about practical tips for ethical data sharing.
  -   [Here](https://arxiv.org/pdf/1809.00103.pdf) is a case study of some of the issues that come up with data sharing.
  -   Dutwin and Buskirk. ["Apples to Oranges or Gala versus Golden Delicious?: Comparing Data Quality of Nonprobability Internet Samples to Low Response Rate Probability Samples"](https://academic.oup.com/poq/article/81/S1/213/3749202/Apples-to-Oranges-or-Gala-versus-Golden-Delicious)
  -   Baker et al. ["Summary Report of the AAPOR Task Force on Non-probability Sampling"](https://academic.oup.com/jssam/article/1/2/90/941418/Summary-Report-of-the-AAPOR-Task-Force-on-Non)
  -   Kalton and Flores-Cervantes ["Weighting methods"](http://www.jos.nu/Articles/abstract.asp?article=192081)
  -   Berinsky, Margolis, and Sances ["Separating the Shirkers from the Workers? Making Sure Respondents Pay Attention on Self‐Administered Surveys"](https://doi.org/10.1111/ajps.12081)


## Appendix: Qualtrics-specific instructions
-   If you are using Qualtrics instead of Google Forms, you do not have to include a question on the survey asking for MTurk Worker ID. Instead, you can verify survey completion by generating a unique validation code for each survey respondent, and have them enter that on MTurk instead.

-   Here are [detailed instructions](https://blog.mturk.com/getting-great-survey-results-from-mturk-and-qualtrics-be1704ff9786) for generating survey completion codes.

-   Qualtrics has more features and customizable options -- for example, you can randomize the response options to a survey question or enable more sophisticated skip logic. Try playing around with these!

[1] based on the activities from SICSS 2017 - 2019 with the input from Yo-Yo Chen, Janet Xu, and Cambria Naslund.  
[2] Tip: to validate WorkerID matches, you can download a CSV of WorkerIDs from your MTurk results page and match that with your survey results data.  
[3] Technical note: Most survey questions have a "don't know/refuse" residual category, but predicting the percentage of people who refused to answer may not always be substantively relevant. To omit this category from the analysis, we normalized the existing survey results by dividing by the percentage of people who responded to that question.  
