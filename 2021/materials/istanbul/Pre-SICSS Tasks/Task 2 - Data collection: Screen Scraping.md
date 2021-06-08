## Task 2 - Data collection: Screen Scraping (First Week: Wednesday - Friday)

In most of the cases, websites you would like to obtain data from may not have APIs. One of the alternative data collection methods is using [web scraping](https://www.youtube.com/watch?v=LjTZNmBjC5Q&feature=youtu.be). Web scraping is the “[free](https://en.wikipedia.org/wiki/Free_software)” way of obtaining data 
from the Internet. However, still, you should be careful about ethical and legal issues. You should leave some time between page requests to prevent an unintended 
DoS attack.

What should you do in this task?

In this task, you should get data from your favourite website. You should read the terms of the website before scraping data and be careful; you should allocate 
enough time between new requests while scraping the web!

To understand web scraping and be successful at it, you should know at least [basic HTML structure](https://www.w3schools.com/html/html_intro.asp). In addition, 
you need to learn what are [a tag - HTML element-](https://www.learn-html.org/en/Basic_Elements), [css selector](https://www.w3schools.com/cssref/css_selectors.asp) and [xpath](https://www.w3schools.com/xml/xpath_syntax.asp). Note you don’t have to write xpath, you can 
simply copy it from your browser. However, you should open the [inspector](https://developer.mozilla.org/en-US/docs/Tools/Page_Inspector/How_to/Open_the_Inspector)!

• HTML Scrape: Go to a page you are interested in and scrape it by using rvest.

• Copy the URL address and start crawling the page.

• After you downloaded one page inspect it with rvest functions

• Write a while loop to trace all related pages.

• Extract information from the pages.

• Assign each < p > element to a row in a data.table. 
   
• Create date, group, title and URL variables in your data. 
   
• Repeat this step for at least 5 different pages of the web site and combine all data into one single dataset.

• Save your data.

### Here are some tutorials to collect web data with R:

• [Web Scraping with rvest](https://www.dataquest.io/blog/web-scraping-in-r-rvest/)

### Required Packages: 
• [rvest](https://rvest.tidyverse.org/articles/rvest.html)
   
• [RSelenium](https://cran.r-project.org/web/packages/RSelenium/vignettes/basics.html)
   
• [data.table](https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html)
