## Task 1 - Data collection via API (First Week: Monday - Wednesday)

In the digital age, collecting data is more accessible than conventional social science methods. You can literally gather [digital trace data](https://www.youtube.com/watch?v=uuSWQN7uYhk) while you are sleeping! The Internet is full of data and waiting for you to collect them.

One of the common data collection methods is using [Application Programming Interfaces](https://www.youtube.com/watch?v=jde_c7pB5U8&feature=youtu.be). Most of the 
social networking platforms such as [Twitter](https://developer.twitter.com/en), [YouTube](https://developers.google.com/youtube) and [Facebook](https://developers.facebook.com/) provides their data with an API. To use an [API](https://compsocialscience.github.io/summer-institute/2020/materials/day2-digital-trace-data/apis/Rpres/APIs.html#/), you should obtain credentials and comply with the terms of service.


What should you do in this task?

• First of all, it is always quite exciting to start a new project, so congratulations! We expect you to collect data from Twitter API in this task. You should be 
able to finish this task in two days.

• Twitter: If you don’t have Twitter API, please apply from [here](https://developer.twitter.com/en/use-cases/academic-researchers) as soon as possible.

• Sign in to your Twitter developer account and create a new application you later use to crawl tweets.

• [Authenticate your account](https://cran.r-project.org/web/packages/rtweet/vignettes/auth.html)

• Read [here](https://developer.twitter.com/en/docs/basics/rate-limiting) what are the limitations of Twitter API’s

• Decide on some interesting hashtag and use is as a search term to crawl 20K tweets and store them in a [data.table](https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html). You should decide whether you want to use Streaming API or Search API and understand the 
difference!

• Save your data.

### Here are some tutorials to collect social media data with R:

- [Twitter API](https://mkearney.github.io/nicar_tworkshop/#1)
- [YouTube API](https://www.rpubs.com/statscol/youtube_data_in_r)

### Required packages:
- Twitter API v1: [rtweet](https://www.rdocumentation.org/packages/rtweet/versions/0.7.0)
- Twitter API v2: [academictwitteR](https://cran.r-project.org/web/packages/academictwitteR/index.html)
