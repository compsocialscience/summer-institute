
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
wikipedia_scrape<- "Class of 2018: Senior Stories of Discovery, Learning and Serving\n\n\t\t\t\t\t\t\t" 
```

grepl
========================================================
&nbsp;

```r
grepl("Class", wikipedia_scrape)
```

```
[1] TRUE
```


gsub
========================================================
&nbsp;

```r
gsub("\t", "", wikipedia_scrape)
```

```
[1] "Class of 2018: Senior Stories of Discovery, Learning and Serving\n\n"
```

gsub (2 patterns)
========================================================
&nbsp;

```r
gsub("\t|\n", "", wikipedia_scrape)
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

































```
Error in library(tm) : there is no package called 'tm'
```
