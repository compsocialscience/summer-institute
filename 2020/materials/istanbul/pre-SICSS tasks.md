# SICSS-Istanbul 2020 Pre-SICSS Tasks

## WELCOME

### NOTICE: All of the recommendations are based on our experience; therefore they can be highly subjective. We do not argue that the packages&approaches we are suggesting in this document are the best ones. However, we are using some of them for a long time, and they have been handy.

You could find related SICSS materials in these following links: 

- [All Lecture Materials](https://compsocialscience.github.io/summer-institute/curriculum) 
- [Digital Trace Data](https://github.com/compsocialscience/summer-institute/tree/master/2020/materials/day2-digital-trace-data)
- [Text Analysis](https://github.com/compsocialscience/summer-institute/tree/master/2020/materials/day3-text-analysis) 
- [Coding social science *by Matti*](http://codingsocialscience.org/) 

### Data Project Steps 

Every data project generally has four critical milestones. Which are:

• Data collection

• Data cleaning

• Data analysis

• Reporting Tasks 


Theory and practise rarely meet in the real world. Therefore instead of writing tutorials which are long, fancy and full with nice codes, we are going to suggest three introductory guides and two abstract case studies, and provide guidance every week till SICSS via zoom and Slack.

The tasks cover data collection, cleaning, analysis and reporting. We are leaving the analysis to SICSS week.

When you face a bug or difficulty, instead of immediately asking the TAs, we strongly suggest that you should try to solve your problems by searching on [StackOverflow](https://stackoverflow.com/questions/tagged/r) and instead of copy-pasting the correct answer you should type it!

If you still have problems, please post your questions at least one hour before zoom meetings. Ahmet will be able to organize zoom meetings on Wednesday and Friday between 19:30 - 20:30 (Turkish time) and Yunus Emre will organize zoom meetings on Slack. We will try to solve anything you ask, but we will have to prioritize due to time constraints.


## Task 1 - Data collection: API (First Week: Monday - Wednesday)

In computational science, collecting data is more accessible than conventional social science methods. You can literally gather data while you are sleeping! Internet is full of data and waiting for you to collect them.

• One of the data collection methods is using [Application Programming Interface](https://www.youtube.com/watch?v=jde_c7pB5U8&feature=youtu.be). Most of the social networking platforms such as [Twitter](https://developer.twitter.com/en), [YouTube](https://developers.google.com/youtube) and [Facebook](https://developers.facebook.com/) provides with an API. To use an [API](https://compsocialscience.github.io/summer-institute/2020/materials/day2-digital-trace-data/apis/Rpres/APIs.html#/), you should obtain credentials and comply with the terms of service.

• Using [web scraping](https://www.youtube.com/watch?v=LjTZNmBjC5Q&feature=youtu.be). Web scraping is the “[free](https://en.wikipedia.org/wiki/Free_software)” way of obtaining data from the Internet. However, still, you should be careful about ethical and legal issues. You should leave some time between page requests to prevent an unintended DoS attack.

Here are some tutorials to collect data with R:

• [Twitter API](https://mkearney.github.io/nicar_tworkshop/#1)

• [YouTube API](https://www.rpubs.com/statscol/youtube_data_in_r)


What you should do in this task?

• First of all, it is always quite exciting to start a new project, so congratulations! We expect you to collect data from Twitter API in this task. You should be able to finish this task in two days.

• Twitter: If you don’t have Twitter API, please apply from [here](https://developer.twitter.com/en/use-cases/academic-researchers) as soon as possible.

• Sign in to your Twitter developer account and create a new application you later use to crawl tweets.

• [Authenticate your account](https://cran.r-project.org/web/packages/rtweet/vignettes/auth.html)

• Read [here](https://developer.twitter.com/en/docs/basics/rate-limiting) what are the limitations of Twitter API’s

• Decide on some interesting hashtag and use is as search term crawl 20K tweets and store them in a [data.table](https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html). You should decide whether you want to use Streaming API or Search API and understand the difference!

• Save your data.


## Task 2 - Data collection: Screen Scraping (First Week: Wednesday - Friday)

In computational science, collecting data is more accessible than conventional social science methods. You can literally gather data while you are sleeping! Internet is full of data and waiting for you to collect them.

• One of the data collection methoda is using [web scraping](https://www.youtube.com/watch?v=LjTZNmBjC5Q&feature=youtu.be). Web scraping is the “[free](https://en.wikipedia.org/wiki/Free_software)” way of obtaining data from the Internet. However, still, you should be careful about ethical and legal issues. You should leave some time between page requests to prevent an unintended DoS attack.


Here are some tutorials to collect data with R:

• [Web Scraping with rvest](https://www.dataquest.io/blog/web-scraping-in-r-rvest/)


Packages: rvest, data.table, ggplot2

In this task, you should get data from your favourite website. You should read the terms of the website before scraping data and, be careful; you should allocate enough time between new requests while scraping web!

To understand web scraping and be successful at it, you should know at least [basic HTML structure](https://www.w3schools.com/html/html_intro.asp). In addition, you need to learn what are [a tag - HTML element-](https://www.learn-html.org/en/Basic_Elements), [css selector](https://www.w3schools.com/cssref/css_selectors.asp) and [xpath](https://www.w3schools.com/xml/xpath_syntax.asp). Note you don’t have to write xpath, you can simply copy it from your browser. However, you should open the [inspector](https://developer.mozilla.org/en-US/docs/Tools/Page_Inspector/How_to/Open_the_Inspector)!


What you should do in this task?

• HTML Scrape: Go to a page you are interested in and scrape it by using rvest.

• Copy the URL address and start crawling the page.

• After you downloaded one page inspect it with rvest functions

• Write a while loop to trace all related pages.

• Extract information from the pages.

• Assign each <p> element to a row in a data.table. Create date, group, title and URL variables in your data. Repeat this step for at least 5 different pages of the web site and combine all data into one single dataset.

• Save your data.

You should be able to complete this step in two days.


## Task 3 - Data Cleaning and Analysis (Second Week: Monday - Thursday)

### General Information

Package suggestions: [data.table](https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html), [dplyr](https://dplyr.tidyverse.org/), [quanteda](https://quanteda.io/articles/pkgdown/examples/twitter.html), [ggplot2](https://ggplot2.tidyverse.org/)

There are two popular libraries to handle data in the R environment. The first one is [data.table package](https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html) and the second one is [dplyr package](https://dplyr.tidyverse.org/). I am not stressing pros/cons of these two packages, but you should read [this post](https://stackoverflow.com/questions/21435339/data-table-vs-dplyr-can-one-do-something-well-the-other-cant-or-does-poorly) before learning either one. In my view, you should give both a chance and stick with the one that comes natural to you. I can disclose my preference and why I am using it in “real” big data projects during our zoom meetings!

If you are a social scientist, one of the most crucial variables in your projects would be text. To apply a fancy text analysis, you must have the ability to clean text. Text analysis is a long and adventurous journey, and it always starts with basic string operations. You should start learning string functions with [stringr](https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html) and [stringi](https://cran.r-project.org/web/packages/stringi/stringi.pdf) packages.

On the other hand, you should learn a little bit [regular expressions](https://cran.r-project.org/web/packages/stringr/vignettes/regular-expressions.html) and test [your expressions](https://regexr.com/) before using them. You could develop very complex expressions to solve your problem quickly when string libraries are not enough.

Once you finished with strings in your dataset, you go beyond and discover your data. Our number one suggestions would be [quanteda](https://quanteda.io/) and [quanteda.textmodels](https://cran.r-project.org/web/packages/quanteda.textmodels/quanteda.textmodels.pdf) packages. It is quite easy and fun working with these packages.

What you should do in this task?

• Read your Twitter and web datasets.

• Subset your data by using a keyword, a time interval, a user name for the Twitter dataset.

• Order your data alphabetically and by weekday! You can use [lubridate](https://cran.r-project.org/web/packages/lubridate/vignettes/lubridate.html) for date-time operations.

• Understand what is a merge operation and merge your datasets based on a textual trait.

• Create a quanteda corpus object based on Twitter dataset text column. Assign date and tweet ID as metadata

• Clean all punctuation except hashtags and mentions in the text variable. It is quite easy and well documented on the Internet; however, I suggest you should think about the problem. Instead of thinking it as a whole, divide it into small pieces and start bit by bit! For example, think about removing only one type of character and create a pattern.

• Create a document feature matrix from your corpus and find top 10 frequent terms.

• Weight your dfm by using tf-idf scheme


You should be able to complete this step in four days.


## Task 4 - Reporting (Second Week: Friday)

One of the most dominant sides of the R is reporting the data. [ggplot2 package](https://ggplot2.tidyverse.org/) would provide diverse options from basic scatterplots to drawing complex maps and networks. Once you understand how to build a basic plot with ggplot, it is quite easy to solve any problem and produce classy graphics. You should learn how to use it!

The second essential skill you should learn is working with [markdowns](https://rmarkdown.rstudio.com/). You could effortlessly produce documents like [this one](https://rmarkdown.rstudio.com/flexdashboard/index.html).

Last but not least, if you are fluent with basic R, you could produce great data products with [Shiny](https://shiny.rstudio.com/). It is not the most straightforward interface library, but you should give it a try once you are ready!

What you should do in this task?

• Load you datasets you created in Task 3.

• Create a new Rmd document in RStudio

• Display your results in a markdown document with explanations. In addition to quanteda’s pretty plots, you could include histograms or even a network of tweeters!

• Display your results in an HTML document

You should be able to complete this step in one day.


## READING LIST

• [Grimmer, J. (2015). We Are All Social Scientists Now: How Big Data, Machine Learning, and Causal Inference Work Together. PS: Political Science & Politics, 48(01), 80–83.](https://doi.org/10.1017/S1049096514001784)

• [Kitchin, R. (2014). Big Data, new epistemologies and paradigm shifts. Big Data & Society, 1(1),](https://doi.org/10.1177/2053951714528481)

• [Granovetter, M. S. (1973). The Strength of Weak Ties. American Journal of Sociology 78(6).](https://www.jstor.org/stable/2776392)

• [Coleman, J. S. (1986). Social Theory, Social Research, and a Theory of Action. American Journal of Sociology 91(6).](http://www.jstor.org/stable/2779798)

• [Tufekci, Z. (2014). Engineering the public: Big data, surveillance and computational politics. First Monday, 19(7).](https://doi.org/10.5210/fm.v19i7.4901)

• [Unver, A. (2019). Internet, Social Media and Conflict Studies Can Greater Interdisciplinarity Solve the Field’s Analytical Deadlocks? St. Anthony’s International Review Vol. 14, No. 3.](https://arxiv.org/abs/1905.01777)

• [Unver, A. (2019). Computational IR: What Coding, Programming and Internet Research Can Do for the Discipline? All Azimuth: A Journal of Foreign Policy and Peace Vol. 8, No. 2.](https://doi.org/10.20991/allazimuth.476433)

• [Edelmann, A., Wolff, T., Montagne, D., & Bail, C. A. (2020). Computational Social Science and Sociology. Annual Review of Sociology, 46(1).](https://doi.org/10.1146/annurev-soc-121919-054621)
