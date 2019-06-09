
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

.wrap-url pre code {
  word-wrap:break-word;
}

</style>


Part of Speech Tagging, Sentence Parsing, and Named-Entity Recognition
========================================================
author: Chris Bail 
date: Duke University
autosize: true
transition: fade  
  website: https://www.chrisbail.net  
  github: https://github.com/cbail  
  Twitter: https://www.twitter.com/chris_bail

<<<<<<< Updated upstream
=======
========================================================
>>>>>>> Stashed changes

Outline For Today
========================================================
&nbsp;

1) Part of Speech Tagging;  
2) Sentence Parsing;  
3) Named-Entity Recognition

========================================================

## **Part of Speech Tagging**

<<<<<<< Updated upstream

=======
========================================================

What is Part of Speech (POS) Tagging?
========================================================
>>>>>>> Stashed changes

What is Part of Speech (POS) Tagging?
========================================================

Examples from the Penn Tree Bank
========================================================
&nbsp;

<img src="examplestreebank.png" height="400" />

What is the the Penn Tree Bank?
========================================================
&nbsp;

Hand-coded POS annotations for:

1) 1 Million words of 1989 Wall Street Journal Material  
2) Fully-tagged version of the Brown Corpus (~ 1 mill works published in U.S. since 1961)  
3) Other samples



How does POS-Tagging work?
========================================================




<<<<<<< Updated upstream
Backend Options for POS Tagging
========================================================
&nbsp;

Stanford CoreNLP   
NLTK Module (in Python)  
UDPipe (new)
=======
Software Options for POS Tagging
========================================================
&nbsp;

CoreNLP   
NLTK Module in Python  
UDPipe (new)
cleanNLP (also new)
>>>>>>> Stashed changes


POS Tagging in CleanNLP
========================================================
&nbsp;

CleanNLP is a relatively new package in R that handles a variety of NLP tasks including POS tagging. It supports a variety of different backends for this purpose, including CoreNLP, Spacy, and udpipe. We are going to use udpipe because it does not require Java or Python to be installed.  

<<<<<<< Updated upstream
Here's how we initialize cleanNLP with udpipe:
=======
Here's how we initialize clean NLP with udpipe:
>>>>>>> Stashed changes


```r
library(cleanNLP)
#cnlp_download_udpipe()
cnlp_init_udpipe()
```


POS Tagging in CleanNLP
========================================================
class: wrap-url
&nbsp;
Next, let's conduct part of speech tagging on the first tweet from our elected official twitter data:

```r
load(url("https://cbail.github.io/Elected_Official_Tweets.Rdata"))
elected_official_tweets$text[1]
```

```
[1] "Mortally wounded, Ari Fuld heroically pursued the Palestinian terrorist who took his life, ensuring he didn’t harm others. My thoughts and prayers are with his family. https://t.co/ycdNed6FwK"
```

POS Tagging in CleanNLP
========================================================
&nbsp;

First, we annotate the sentence, then we use the `cnlp_get_token` function to extract the part of speech tags for the first 10 words in the first sentence:

<<<<<<< Updated upstream
```r
annotation <- cnlp_annotate(elected_official_tweets$text[1])
pos<-cnlp_get_token(annotation)
head(pos, 10)
```

```
     id sid tid        word       lemma  upos pos cid pid case definite
1  doc1   1   1    Mortally    Mortally   ADV  RB   0   1 <NA>     <NA>
2  doc1   1   2     wounded     wounded   ADJ  JJ   9   1 <NA>     <NA>
3  doc1   1   3           ,           , PUNCT   ,  16   1 <NA>     <NA>
4  doc1   1   4         Ari         Ari PROPN NNP  18   1 <NA>     <NA>
5  doc1   1   5        Fuld        Fuld PROPN NNP  22   1 <NA>     <NA>
6  doc1   1   6  heroically  heroically   ADV  RB  27   1 <NA>     <NA>
7  doc1   1   7     pursued      pursue  VERB VBD  38   1 <NA>     <NA>
8  doc1   1   8         the         the   DET  DT  46   1 <NA>      Def
9  doc1   1   9 Palestinian palestinian   ADJ  JJ  50   1 <NA>     <NA>
10 doc1   1  10   terrorist   terrorist  NOUN  NN  62   1 <NA>     <NA>
   degree gender mood number person poss pron_type tense verb_form
1    <NA>   <NA> <NA>   <NA>   <NA> <NA>      <NA>  <NA>      <NA>
2     Pos   <NA> <NA>   <NA>   <NA> <NA>      <NA>  <NA>      <NA>
3    <NA>   <NA> <NA>   <NA>   <NA> <NA>      <NA>  <NA>      <NA>
4    <NA>   <NA> <NA>   Sing   <NA> <NA>      <NA>  <NA>      <NA>
5    <NA>   <NA> <NA>   Sing   <NA> <NA>      <NA>  <NA>      <NA>
6    <NA>   <NA> <NA>   <NA>   <NA> <NA>      <NA>  <NA>      <NA>
7    <NA>   <NA>  Ind   <NA>   <NA> <NA>      <NA>  Past       Fin
8    <NA>   <NA> <NA>   <NA>   <NA> <NA>       Art  <NA>      <NA>
9     Pos   <NA> <NA>   <NA>   <NA> <NA>      <NA>  <NA>      <NA>
10   <NA>   <NA> <NA>   Sing   <NA> <NA>      <NA>  <NA>      <NA>
```

POS Tagging is Highly Accurate...But
========================================================
&nbsp;

POS-tagging assumes the language is reasonably well constructed... and this is not always the case on Twitter:


```r
elected_official_tweets$text[4403]
```

```
[1] "Will be speaking with CNN this morning at 8:30 am.  Tune in."
```

POS Tagging is Highly Accurate...But
========================================================
&nbsp;

```r
annotation <- cnlp_annotate(elected_official_tweets$text[4403])
pos<-cnlp_get_token(annotation)
head(pos, 10)
```

```
     id sid tid     word   lemma  upos pos cid pid num_type number
1  doc1   1   1     Will    will   AUX  MD   0   1     <NA>   <NA>
2  doc1   1   2       be      be   AUX  VB   5   1     <NA>   <NA>
3  doc1   1   3 speaking   speak  VERB VBG   8   1     <NA>   <NA>
4  doc1   1   4     with    with   ADP  IN  17   1     <NA>   <NA>
5  doc1   1   5      CNN     CNN PROPN NNP  22   1     <NA>   Sing
6  doc1   1   6     this    this   DET  DT  26   1     <NA>   Sing
7  doc1   1   7  morning morning  NOUN  NN  31   1     <NA>   Sing
8  doc1   1   8       at      at   ADP  IN  39   1     <NA>   <NA>
9  doc1   1   9     8:30    8:30   NUM  CD  42   1     Card   <NA>
10 doc1   1  10       am      am  NOUN  NN  47   1     <NA>   Sing
   pron_type tense verb_form
1       <NA>  <NA>       Fin
2       <NA>  <NA>       Inf
3       <NA>  Pres      Part
4       <NA>  <NA>      <NA>
5       <NA>  <NA>      <NA>
6        Dem  <NA>      <NA>
7       <NA>  <NA>      <NA>
8       <NA>  <NA>      <NA>
9       <NA>  <NA>      <NA>
10      <NA>  <NA>      <NA>
```


========================================================

## **Sentence Parsing**



What is Sentence Parsing?
========================================================
&nbsp;  
Sentence parsing refers to a technique used to parse sentences into their constituent parts in terms of their syntactic relation to each other.


What is Sentence Parsing?
========================================================
&nbsp;

<img src="parse.png" height="400" />

Sentence Parsing in CleanNLP
========================================================
&nbsp;

"Mortally wounded, Ari Fuld heroically pursued the Palestinian terrorist"


```r
annotation <- cnlp_annotate(elected_official_tweets$text[1])
dependency<-cnlp_get_dependency(annotation)
head(dependency, 10)
```

```
     id sid tid tid_target relation relation_full
1  doc1   1   2          1   advmod        advmod
2  doc1   1   5          2     amod          amod
3  doc1   1   2          3    punct         punct
4  doc1   1   5          4 compound      compound
5  doc1   1   7          5    nsubj         nsubj
6  doc1   1   7          6   advmod        advmod
7  doc1   1   0          7     root          root
8  doc1   1  10          8      det           det
9  doc1   1  10          9     amod          amod
10 doc1   1   7         10      obj           obj
```

Why do we need Sentence Parsing?
========================================================
%nbsp; 

Useful for extracting information from texts about named entities as well as relationships between entities mentioned within texts

========================================================

## **Named-Entity Recognition**



Named Entity Recognition
========================================================
%nbsp; 
Named entity recognition is not supported by the udpipe backend, so we need to switch to the coreNLP backend. This often raises very annoying Java issues-- particularly on OSX-- be warned! 

In most cases, you will need to install one of the latest versions of the
[java development kit](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html). You may also need to run this code to link the JDK to your version of R: 


```r
sudo R CMD javareconf
```



Named Entity Recognition
========================================================
%nbsp; 

Once we have dealt with the Java issues, we can download the coreNLP program (this will take a while, unfortunately):

```r
cnlp_download_corenlp()
```


Named Entity Recognition
========================================================
%nbsp;

Finally, we can extract named entities as follows:


```r
cnlp_init_corenlp()
annotation <- cnlp_annotate(elected_official_tweets$text[1])
entitities<-cnlp_get_entity(annotation)
entitities
```


Entities available via coreNLP
========================================================
%nbsp;  

the Stanford coreNLP can identify the following types of entities:

Dates  
Locations  
Money  
Organization  
Percent  
Person  
Time  



========================================================
%nbsp;  

## **Now YOU Try it**

1) Extract 100 random documents/texts from a text-based dataset  
2) Identify all of the proper nouns (or named entities) in each document  
3) Identify the adjectives that moderated the proper nouns or named entities  
4) Run a sentiment analysis on those adjective modifiers  
5) Produce a visual of the propoer nouns or named entities with the most positive and most negative sentiment  

========================================================
=======










```
Error in udp_tokenise_tag_parse(object$model, x, doc_id, tokenizer, tagger,  : 
  external pointer is not valid
```
>>>>>>> Stashed changes
