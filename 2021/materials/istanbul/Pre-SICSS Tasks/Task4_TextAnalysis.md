## Task 4 - Text Analysis (Second Week: Wednesday - Thursday)

If you are a social scientist, one of the most crucial variables in your projects would be text. To apply a fancy text analysis, you must have the ability to clean text. Text analysis is a long and adventurous journey, and it always starts with basic string operations. You should start learning string functions with [stringr](https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html) and [stringi](https://cran.r-project.org/web/packages/stringi/stringi.pdf) packages.
On the other hand, you should learn a little bit [regular expressions](https://cran.r-project.org/web/packages/stringr/vignettes/regular-expressions.html) and test [your expressions](https://regexr.com/) before using them. You could develop very complex expressions to solve your problem quickly when string libraries are not enough.
Once you finished with strings in your dataset, you go beyond and discover your data. Our number one suggestions would be [quanteda](https://quanteda.io/) and [quanteda.textmodels](https://cran.r-project.org/web/packages/quanteda.textmodels/quanteda.textmodels.pdf) packages. It is quite easy and fun working with these packages.

What should you do in this task?

• Create a quanteda corpus object based on Twitter dataset text column. Assign date and tweet ID as metadata

• Clean all punctuation except hashtags and mentions in the text variable. It is quite easy and well documented on the Internet; however, I suggest you should think about the problem. Instead of thinking it as a whole, divide it into small pieces and start bit by bit! For example, think about removing only one type of character and create a pattern.

• Create a document feature matrix from your corpus and find top 10 frequent terms.

• Weight your dfm by using tf-idf scheme

### Here are some tutorials to collect web data with R:

• [Automated Text Analysis](https://www.youtube.com/watch?v=TAlO-5NJB7I&list=PL9UNgBC7ODr4M1_4RLr4IYcXbHPUWYMrZ&index=12)

### Required Packages: 

• [stringr](https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html)
   
• [quanteda](https://quanteda.io/)
   
• [quanteda.textmodels](https://cran.r-project.org/web/packages/quanteda.textmodels/quanteda.textmodels.pdf)

