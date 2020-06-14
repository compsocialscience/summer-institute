# SICSS Group Exercise Week 2, Day 3

## Quantitative Text Analysis

Today the videos covered a broad range of techniques for analysing unstructured text. Yesterday, the exercise was designed to help you explore possible topics by designing a study that would employ digital trace data. Today, the exercise designed to compare the strengths and weaknesses of different text analysis techniques when they are applied to the same dataset.

- Load the dataframe of tweets by President Trump that was analyzed during the discussion of Dictionary-Based text methods (use the following command):

`load(url("https://cbail.github.io/Trump_Tweets.Rdata"))`

Note that this data frame also includes counts of the number of times each of his tweets were retweeted or 'liked.'

- Use at least two of the techniques discussed in the videos to pull out features from the text of Trump's tweets (e.g. substantive themes, topics, sentiment).

- Identify whether any features of Trump's Twitter language predict the number of retweets or likes his messages receive.

- Load the dataframe of daily approval ratings for President Trump from the five-thirty-eight website’s github (use the following command):

`trump_approval<-read_csv("https://projects.fivethirtyeight.com/trump-approval-data/approval_topline.csv")`

- Determine whether there are any features of Trump's Twitter language that have an association with his overall approval ratings.
- Produce a visualisation that describes the findings of your analysis.
- Share the results of your analyses on slack.
