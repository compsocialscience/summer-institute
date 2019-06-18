
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


Screenscraping
========================================================
author: Chris Bail 
date: Duke University
autosize: true
transition: fade  
  website: https://www.chrisbail.net  
  github: https://github.com/cbail  
  Twitter: https://www.twitter.com/chris_bail


What is Screen-Scraping?
========================================================



What is Screen-Scraping?
========================================================

<img src="Screen-Scraping.png" height="400" />



Is Screen-Scraping Legal?
========================================================



Warning: Screen-Scraping is Frustrating
========================================================



Reading a Web-Page into R
========================================================


Reading a Web-Page into R
========================================================
&nbsp; 


```r
install.packages("rvest")
library(rvest)
```

Scraping a Wikipedia Page
========================================================
&nbsp; 

We are going to begin by scraping [this very simple web page from Wikipedia](https://en.wikipedia.org/wiki/World_Health_Organization_ranking_of_health_systems_in_2000).


Scraping a Wikipedia Page
========================================================

<img src="1 WHO Rankings.png" height="600" />


What a Web Page Looks like to a Computer
========================================================





What a Web Page Looks like to a Computer
========================================================
&nbsp; 
<img src="source_code.png" height="600" />



Downloading HTML
========================================================
class: wrap-url
&nbsp;





```r
wikipedia_page<-read_html("https://en.wikipedia.org/wiki/World_Health_Organization_ranking_of_health_systems_in_2000")
```


Downloading HTML
========================================================
&nbsp;


```r
wikipedia_page
```

```
{xml_document}
<html class="client-nojs" lang="en" dir="ltr">
[1] <head>\n<meta http-equiv="Content-Type" content="text/html; charset= ...
[2] <body class="mediawiki ltr sitedir-ltr mw-hide-empty-elt ns-0 ns-sub ...
```

Parsing HTML
========================================================
&nbsp;

<img src="html_tree.png" height="300" />


Parsing HTML
========================================================
&nbsp;
<img src="developer_tools.png" height="600" />



Parsing HTML
========================================================
&nbsp;
<img src="using_developer.png" height="600" />


Right Click "Inspect"
========================================================
&nbsp;
<img src="inspected.png" height="600" />


The XPath (Right Click, copy XPath)
========================================================
&nbsp;
<img src="xpath.png" height="600" />


Using the XPath
========================================================
&nbsp;

```r
section_of_wikipedia<-html_node(wikipedia_page, xpath='//*[@id="mw-content-text"]/div/table[2]')
head(section_of_wikipedia)
```

```
$node
<pointer: 0x7fdd9808a2f0>

$doc
<pointer: 0x7fdd9557c430>
```

Extracting the Table
========================================================
&nbsp;


```r
health_rankings<-html_table(section_of_wikipedia)
head(health_rankings[,(1:2)])
```

```
              Country Attainment of goals / Health / Level (DALE)
1         Afghanistan                                         168
2             Albania                                         102
3             Algeria                                          84
4             Andorra                                          10
5              Angola                                         165
6 Antigua and Barbuda                                          48
```

When the XPath Fails...
========================================================


A More Complicated Page: www.duke.edu
========================================================
&nbsp; 
<img src="First_CSS.png" height="600" />


Selector Gadget
========================================================
&nbsp;

http://selectorgadget.com/

Parsing With the CSS Selector
========================================================
<img src="Second_CSS.png" height="600" />



Parsing With the CSS Selector
========================================================
&nbsp; 


```r
duke_page<-read_html("https://www.duke.edu")
duke_events<-html_nodes(duke_page, css="li:nth-child(1) .epsilon")
html_text(duke_events)
```

```
[1] "Is There a Limit to Human Endurance? Science Says Yes\n\n\t\t\t\t\t\t\t"      
[2] "ADF Musicians Concert "                                                       
[3] "Duke Fuqua Insights: What Your Digital Footprint Says About Credit Worthiness"
```



Browser Automation
========================================================
&nbsp; 



RSelenium
========================================================
&nbsp; 


```r
install.packages("ropensci/RSelenium")
library(Rselenium)
```
&nbsp; 

Note: you may need to install Java to get up and running see [this](http://rpubs.com/johndharrison/RSelenium-Basics) tutorial. Also, you will need to install [Docker](http://www.docker.com).

Installing RSelenium from Docker
========================================================
&nbsp;

```r
system('docker run -d -p 4445:4444 selenium/standalone-chrome')
```

RSelenium
========================================================
&nbsp;


```r
library(RSelenium)
rD <- rsDriver()
remDr <- rD$client
```


Launch a Webpage
========================================================
&nbsp;


```r
remDr$navigate("https://www.duke.edu")
```


Navigate to the Search Bar
========================================================
&nbsp;


```r
search_box <- remDr$findElement(using = 'css selector', 'fieldset input')
```

Input a Search
========================================================
&nbsp;


```r
search_box$sendKeysToElement(list("data science", "\uE007"))
```


Screenscraping Within a Loop
========================================================


Screenscraping Within a Loop 
========================================================

Example (non-functional) code:


```r
#create list of websites to scrape
my_list_of_websites<-c("www.duke.edu","www.penn.edu")

#create place to store text data
text_data<-as.data.frame(NULL)

#loop
for(i in 1: length(my_list_of_websites)){
  
  #read in page and extract text
  page<-read_html("https://www.duke.edu")
  events<-html_nodes(page, css="li:nth-child(1) .epsilon")
  text<-html_text(events)
  
  #store text in dataset created above
  text_data<-rbind(text_data,text)
  
  #print iteration for de-bugging
  print(i)
}
```



When Should I Use Screen-Scraping?
========================================================









