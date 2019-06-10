
<style>
.reveal section p {
  color: black;
  font-size: .7em;
  font-family: 'Helvetica'; #this is the font/color of text in slides
}


.section .reveal .state-background {
    background: white;}
.section .reveal h1,
.section .reveal p {
    color: black;
    position: relative;
    top: 4%;}



</style>


Basic Text Analysis
========================================================
author: Chris Bail 
date: Duke University
autosize: true
transition: fade  
  website: https://www.chrisbail.net  
  github: https://github.com/cbail  
  Twitter: https://www.twitter.com/chris_bail

========================================================

# **CLEANING TEXT**

Character Encoding
========================================================

Character Encoding
========================================================
&nbsp;
<img src="character-viewer.png" height="400" />


GREP
========================================================

GREP
========================================================
&nbsp;

```r
duke_web_scrape<- "Class of 2018: Senior Stories of Discovery, Learning and Serving\n\n\t\t\t\t\t\t\t" 
```

grepl
========================================================
&nbsp;

```r
grepl("Class", duke_web_scrape)
```

```
[1] TRUE
```


gsub
========================================================
&nbsp;

```r
gsub("\t", "", duke_web_scrape)
```

```
[1] "Class of 2018: Senior Stories of Discovery, Learning and Serving\n\n"
```

gsub (2 patterns)
========================================================
&nbsp;

```r
gsub("\t|\n", "", duke_web_scrape)
```

```
[1] "Class of 2018: Senior Stories of Discovery, Learning and Serving"
```

More GREP
========================================================
&nbsp;

```r
some_text<-c("This","Professor","is","not","so","great")
some_text[grep("^[P]", some_text)]
```

```
[1] "Professor"
```

Regex Cheat Sheet
========================================================
&nbsp;

http://www.rstudio.com/wp-content/uploads/2016/09/RegExCheatsheet.pdf


Escaping Text
========================================================
&nbsp;

```r
text_chunk<-c("[This Professor is not so Great]")
gsub("\","", text_chunk)
```


Escaping Text
========================================================
&nbsp;

```r
text_chunk<-c("[This Professor is not so Great]")
gsub('\\[|\\]',"", text_chunk)
```

```
[1] "This Professor is not so Great"
```

========================================================

# **UNITS OF ANALYSIS**

Tokenization
========================================================

Tokenization
========================================================

<img src="token.png" height="400" />

N-grams
========================================================


N-grams
========================================================

<img src="8ARA1.png" height="400" />

========================================================

# **CREATING TEXT DATABASES**

What is a Corpus?
========================================================


Creating a Corpus
========================================================
&nbsp;

```r
load(url("https://cbail.github.io/Trump_Tweets.Rdata"))
head(trumptweets$text)
```

```
[1] "Just met with UN Secretary-General António Guterres who is working hard to “Make the United Nations Great Again.” When the UN does more to solve conflicts around the world, it means the U.S. has less to do and we save money. @NikkiHaley is doing a fantastic job! https://t.co/pqUv6cyH2z"           
[2] "America is a Nation that believes in the power of redemption. America is a Nation that believes in second chances - and America is a Nation that believes that the best is always yet to come! #PrisonReform https://t.co/Yk5UJUYgHN"                                                                     
[3] "RT @SteveForbesCEO: .@realDonaldTrump speech on drug costs pays immediate dividends. New @Amgen drug lists at 30% less than expected. Middl…"                                                                                                                                                             
[4] "We grieve for the terrible loss of life, and send our support and love to everyone affected by this horrible attack in Texas. To the students, families, teachers and personnel at Santa Fe High School – we are with you in this tragic hour, and we will be with you forever... https://t.co/LtJ0D29Hsv"
[5] "School shooting in Texas. Early reports not looking good. God bless all!"                                                                                                                                                                                                                                 
[6] "Reports are there was indeed at least one FBI representative implanted, for political purposes, into my campaign for president. It took place very early on, and long before the phony Russia Hoax became a “hot” Fake News story. If true - all time biggest political scandal!"                         
```

Creating a Corpus
========================================================
&nbsp;

```r
install.packages("tm")
```

Creating a Corpus
========================================================
&nbsp;

```r
library(tm)
trump_corpus <- Corpus(VectorSource(as.vector(trumptweets$text))) 
trump_corpus
```

```
<<SimpleCorpus>>
Metadata:  corpus specific: 1, document level (indexed): 0
Content:  documents: 3196
```

TidyText
========================================================




TidyText
========================================================
&nbsp;

```r
library(tidytext)
library(dplyr)
tidy_trump_tweets<- trumptweets %>%
    select(created_at,text) %>%
    unnest_tokens("word", text)
head(tidy_trump_tweets)
```

```
# A tibble: 6 x 2
  created_at          word     
  <dttm>              <chr>    
1 2018-05-18 20:41:21 just     
2 2018-05-18 20:41:21 met      
3 2018-05-18 20:41:21 with     
4 2018-05-18 20:41:21 un       
5 2018-05-18 20:41:21 secretary
6 2018-05-18 20:41:21 general  
```

TidyText is... tidy
========================================================
&nbsp;

```r
tidy_trump_tweets %>%
  count(word) %>%
    arrange(desc(n))
```

```
# A tibble: 8,690 x 2
   word      n
   <chr> <int>
 1 the    3671
 2 to     2216
 3 and    1959
 4 of     1606
 5 https  1281
 6 t.co   1258
 7 a      1248
 8 in     1213
 9 is     1045
10 for     886
# ... with 8,680 more rows
```

Corpus vs. TidyText
========================================================


========================================================

# **Now YOU Try it!!!**

1) Pick one of the text based datasets we worked with in the last class;

2) Clean the text (remove any unwanted characters);  

3) Create a corpus or Tidytext dataframe

========================================================

# **TEXT PRE-PROCESSING**

Stopwords
========================================================


Stopwords
========================================================

In `tm`:


```r
trump_corpus <- tm_map(trump_corpus, removeWords, stopwords("english"))
```

Stopwords
========================================================

In `tidytext`:


```r
 data("stop_words")
    tidy_trump_tweets<-tidy_trump_tweets %>%
      anti_join(stop_words)
```

Inspect top words again
========================================================
&nbsp;


```r
tidy_trump_tweets %>%
  count(word) %>%
    arrange(desc(n))
```

```
# A tibble: 8,121 x 2
   word          n
   <chr>     <int>
 1 https      1281
 2 t.co       1258
 3 amp         562
 4 rt          351
 5 people      302
 6 news        271
 7 president   235
 8 fake        234
 9 trump       218
10 country     213
# ... with 8,111 more rows
```

Remove Punctuation
========================================================


Remove Punctuation
========================================================

In `tm`:


```r
trump_corpus <- tm_map(trump_corpus, content_transformer(removePunctuation))
```

(punctuation marks are removed automatically in `tidytext`)

Remove Numbers
========================================================

In `tm`:


```r
trump_corpus <- tm_map(trump_corpus, content_transformer(removeNumbers))
```

In `tidytext`:


```r
tidy_trump_tweets<-tidy_trump_tweets[-grep("\\b\\d+\\b", tidy_trump_tweets$word),]
```


Word Case
========================================================


Word Case
========================================================

In `tm`:


```r
trump_corpus <- tm_map(trump_corpus,  content_transformer(tolower)) 
```

Once again, `tidytext` does this for you.


Removing whitespaces
========================================================


Removing whitespaces
========================================================

In `tm`:


```r
trump_corpus <- tm_map(trump_corpus, content_transformer(stripWhitespace))
```

In `tidytext`:


```r
tidy_trump_tweets$word <- gsub("\\s+","",tidy_trump_tweets$word)
```

Stemming
========================================================

Stemming
========================================================

In `tm`:


```r
trump_corpus  <- tm_map(trump_corpus, content_transformer(stemDocument), language = "english")
```

In `tidytext`:

```r
library(SnowballC)
  tidy_trump_tweets<-tidy_trump_tweets %>%
      mutate_at("word", funs(wordStem((.), language="en")))
```

========================================================

# **THE DOCUMENT-TERM MATRIX**

The DTM
========================================================

In `tm`:


```r
trump_DTM <- DocumentTermMatrix(trump_corpus, control = list(wordLengths = c(2, Inf)))
inspect(trump_DTM[1:5,3:8])
```

```
<<DocumentTermMatrix (documents: 5, terms: 6)>>
Non-/sparse entries: 6/24
Sparsity           : 80%
Maximal term length: 8
Weighting          : term frequency (tf)
Sample             :
    Terms
Docs around conflict fantast great guterr hard
   1      1        1       1     1      1    1
   2      0        0       0     0      0    0
   3      0        0       0     0      0    0
   4      0        0       0     0      0    0
   5      0        0       0     0      0    0
```

The DTM
========================================================

In `tidytext`:


```r
tidy_trump_DTM<-
  tidy_trump_tweets %>%
  count(created_at, word) %>%
  cast_dtm(created_at, word, n)
```

========================================================

# **Class Exercise**

1) Pick one of the Amazon review datasets from this link: http://jmcauley.ucsd.edu/data/amazon/

2) Create a tidytext dataset of these reviews

3) Count the top five words in the dataset after removing stop words;

4) Create a Document-Term Matrix


