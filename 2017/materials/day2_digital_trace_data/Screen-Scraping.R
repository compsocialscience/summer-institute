# HOW TO SCREEN-SCRAPE
# Summer Institute in Computational Social Science
# Author: Chris Bail, Duke University (www.chrisbail.net)


# 1.1 Screen-Scraping.

# Unfortunately,  we are no longer in the "Wild Wild West" of big
# data. Only several years ago one could easily mine or "scrape" vast amounts
# of data from giant archives of information such as Google or Amazon.

# Yet major corporations have become wise to the value of their data, and the
# vast majority of sites now prevent you from scraping large amounts of data.
# There are some important exceptions to this, but by in large, sites such as
# Facebook, Twitter, or JSTOR will shut you down if you try to grab too
# much text in an automated fashion.

# I should also warn you that automated collection of text-based is also 
# often not only discouraged, but illegal. Years ago, several academics
# got into considerable trouble with Facebook and Google for trying to
# scrape data from these sites. To determine whether you can safely 
# automate data collection from a site, you need to visit its "Terms 
# of Service," which is a legally binding document that describes how 
# developers (in this case, you!) may interface with a site.

# Despite all of these issues, the first technique I want to teach you today is something called "screen-scraping." 

# Screen scraping refers to a type of computer program
# that reads in a web page, finds some information on it, grabs the
# information, and puts it into a spreadsheet or other type of data
# storage format.

# When we look at a web page, we typically see something that is very easy
# to digest. There is some combination of text and images in a relatively
# small number of formats that we have been taught to digest easily.

# But this is not what a webpage looks like to a computer. And if we want
# to teach a computer to grab information from a web page for us, we need
# to assume the perspective of a computer.

# To a computer, a webpage is a long list of formatting rules, scripts, text,
# and audio-visual data that is all put together in one of two common formats:
# HTML or XML. These long lines of code tell the website how to assemble text, # images and video on the vast range of devices that might try to load the 
# page. It also generally shapes the "look" or "theme" of the website, and
# how data is stored. But none of this is very important to understand in
# detail unless you are interested in building websites.

# Let's look at an example. Consider, the following Wikipedia page about
# the World Health Organization's Ranking of Different Countries' Health
# systems: 

#https://en.wikipedia.org/wiki/World_Health_Organization_ranking_of_health_systems_in_2000

# To do screen scraping, we need to find the "Source Code," or the messy
# list of instructions that a computer needs to display this page in the 
# format we see before this.

# There are a variety of ways to see the source code of a website, but 
# the easiest way is typically to use your web browser. In Chrome, for
# example, we can go to the dropdown "View" menu, and then select 
# "Developer" and then "View Source."

# Messy, huh? At the top of the source code we can see that this document
# is an HTML file. We will need to know whether a site is in HTML or XML
# because it will determine the type of tools we use in R to scrape it.

# In order to get a better feel for how the source code relates to the website
#, let's navigate back to the wikipedia site:

#https://en.wikipedia.org/wiki/World_Health_Organization_ranking_of_health_systems_in_2000

# Let's say we want to scrape the data from the table on this page.
# To do this, we are going to need to find out where this information is
# within that messy HTML code.

# Fortunately, there are a number of useful tools we can do to find this
# type of information. In Chrome, for example, we can right click on the 
# part of the webpage we want to scrape, and click "inspect element."

# Now, when we mouse over the messy code in the text, Chrome highlights
# the part of the page that this code creates. So if we move our mouse
# around until it highlights the table, we can start to identify the part
# of the code we need to scrape it. The thing we need is called the "xpath"
# To get the xpath, we can again right click and Chrome gives us the option
# to copy it to our clipboard.

# In my view, the best R package for screenscraping at present is the "rvest"
# package, which was written by Hadley Wickham. R used to lag behind other
# languages such as Python for web scraping, but rvest basically takes all the
# best parts of these other languages and ports them into R.

# The first thing I'm going to do is set our class dropbox as my
# working directory:

setwd("/Users/christopherandrewbail/Desktop/Dropbox/Teaching/Computational Soc Fall 2015/Course Dropbox")

# note: the file path will be different on your machine!

# The first thing we need to do is install rvest:

install.packages("rvest")

# Next, we need to remember to load rvest into our r code/r session

library(rvest)

# The first thing we need to do is to pass all of that messy source code
# from the web and into r. To do this, we use the html() command:

wikipedia_page<-html("https://en.wikipedia.org/wiki/World_Health_Organization_ranking_of_health_systems_in_2000")

# Here I've created an object called "wikipedia page" that we are going
# to reference in the rest of our code. If we type "wikipedia_page" we will
# see all of that nonsense:

wikipedia_page

# HTML is broken up into sections that are called "nodes." The xpath tells
# R which section we want. To get that section, we use the html_nodes()
# command as follows:

section_of_wikipedia_html<-html_nodes(wikipedia_page, xpath='//*[@id="mw-content-text"]/table[1]')

#Once again, this object is going to be messy:

section_of_wikipedia_html

#But fortunately rvest has a command that let's us grab tables within
#HTML sections, it's called "html_table()

health_rankings<-html_table(section_of_wikipedia_html)

# ..And voila. We have now scraped the health rankings data from Wikipedia

health_rankings

# It's still in a somewhat messy format though. In fact, let's check to
# see what type of format it is in:

class(health_rankings)

# It's a list. To convert this to a data frame that we could easily
# work with, we can simply write:

test<-as.data.frame(health_rankings)

# Unfortunately, many sites are not as "friendly" to automated text
# collection as Wikipedia, which is not only decidely "open" to anyone
# but also very consistent in the way it formats information.

# On messier sites, the "inspect element" trick in Chrome might not work.
# But there is another way around this. Instead of getting the "xpath" we
# can get something called the "css selector." 

# The easiest way to do this it to download a plugin for chrome called 
# Selector Gadget. This is a tool that you can load when you look at a 
# webpage in order to find the css selector in the html code.

# This website explains how to use it:

#http://cran.r-project.org/web/packages/rvest/vignettes/selectorgadget.html

# If you drag the link on this page onto the bookmarks bar, you can load the
# selectorgadget anytime you are on a website you want to scrape.

# The next step is to click on the stuff you want to scrape, and then click
# on something you DO NOT want to scrape. This helps the tool figure out
# exactly how to describe what you want on the page. IT IS NOT PERFECT THOUGH.
# Once again, different pages use different formats, but some combination
# of this method with the Chrome/Inspect Element method should work for
# most webpages.

# Why don't we scrape a list of the 100 Twitter Users with the largest
# numbers of followers so that we can use it when we work with Twitter in 
# just a bit.

# Here is the link to the page:

# http://twittercounter.com/pages/100"

# After using the SelectorGadget tool, I determined that the 
# css Selector for the data we want is called ".name-bio."

# To get the data, the process is almost identical to our
# last example, except that we replace the xpath= with css=

toptwitter<-html("http://twittercounter.com/pages/100")
toptwitternodes<-html_nodes(toptwitter, css=".name-bio")
names<-html_text(toptwitternodes)

#Unfortunately, the html_table does not work, because the node
#we selected is not a table, but just plain text, so we need to
# run the code using the "html_text()" command:

toptwitter<-html("http://twittercounter.com/pages/100")
toptwitternodes<-html_nodes(toptwitter, css=".name-bio")
names<-html_text(toptwitternodes)

#Let's take a look

names

# The data we want is in there, but it's surround by a bunch of odd
# characters. These characters are telling the webpage how many spaces to
# put in between the text.

# Cleaning up messy text like this in R is a very common challenge.
# One can approach the problem in a variety of different ways, but 
# I am fond of using the "gsub()" command.

# The gsub command finds one character string and replaces it with another.
# This line tells R to find the "\n"s and replace the with "" which means
# nothing.

names<-gsub("\n","", names)

# THe last argument simply tells R the name of the object we want to apply
# this text transformation to.

names

# This got rid of the "\n"s but not the "\t"s but to get rid of those,
# we can just add another line of code:

names<-gsub("\t","", names)

#Let's check it out:

names

#Getting closer, but we are going to want to split up the names and the
# Twitter addresses, which begin with "@"

# To do this, we can use the "strsplit" command:
names_data<-(strsplit(names,"@"))

#This command simply tells R to split each string into two when it
# encounters the "@" character

names_data

# It's split, but it's still in a funky format. Let's find out which
# one:

class(names_data)

# It's a list, and we are going to want a data frame once again. Let's
# use an apply function to extract the names and twitter handles in
# separate steps:

twitter_names<-sapply(names_data,"[",1)
twitter_handles<-sapply(names_data, "[", 2)

#Let's just make sure that they are now character vectors:
class(twitter_names)

# now we can simply bind them together using "cbind" and 
# as.data.frame()

twitter_data<-as.data.frame(cbind(twitter_names, twitter_handles))

# Now you know the basics of screen scraping. But there are two
# more things you need to know about. First of all, if you are scraping
# an XML website you can use other functions such as XML2R. There is
# A nice tutorial on this here:

#http://cpsievert.github.io/slides/web-scraping/#1

# One more thing. Often, you don't want to scrape just one website,
# but many websites. This means you need to generate a list of website
# that you can then pass through a "for" loop and extract whatever 
# type of data that you are searching for.

# IF you are trying to repeatedly scrape one website for lots of sub
# pages, you may be able to recognize patterns in the way that the 
# URLs are formed, and then use "gsub" or "paste" commands to change
# your url calls to collect HTML or XML.

# By now you can probably tell that some screen scraping exercises
# are much easier than others. It simply depends upon the structure
# of the website, and its overarching structure.

# As I mentioned earlier, many sites now have functions that stop
# you from scraping them. If you try to request to many different
# sub-sections of the same site, for example, you will eventually
# get an error that says something about "authentication" or an'
# "SSL" error, or an "OAuth" error.