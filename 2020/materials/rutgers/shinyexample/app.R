## Shiny Example
## This script loads data through dropbox and conducts analysis


##################################
## SETUP
###################################

## Install packages (and dependencies) if do not have them using install.packages()
library(shiny)
library(rsconnect)
library(ggplot2)

## 1) Set the working directory to the folder that contains the .R script for the app
## Uncomment and run at beginning of session
# setwd("~/Dropbox/myapp2")

## 2) Loading app to shinyapps.io (do this after you have made the app)
## Create account here: http://shiny.rstudio.com/articles/shinyapps.html
## Copy information for your own account, token, and secret and replace the fields below for each
## Uncomment and run at beginning of R session
#rsconnect::setAccountInfo(name='xxx', token='xxxxxxxxxxxxxxxxxxxxxx',
#                          secret='xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
## Uncomment and run when you want to update the external url to the app after done coding
#rsconnect::deployApp()


##################################
## Let's get to it
###################################

## Load data 
## This is setup as a .csv inside a "data" subfolder of the current working directory
mytextdata <- read.csv("data/gma_comments.csv")

## make all text lowercase
mytextdata$textOriginal <- mytextdata$textOriginal



#######################################################
## Shiny interface. Two components: ui() and server()
#######################################################

#################
## ui
##################
ui <- fluidPage(
  
  ## text at top of page
  "Visualize how many GMA comments contained a particular keyword.",
  
  ## a short answer question
  textInput("m", label = "Keyword"),
  
  ## Indicating we will have a plot as output
  plotOutput("plot", width = "400px")
)

#################
## server
##################

server <- function(input, output, session) {

  ## output is a plot. We want to plot based on what is entered in the text input
  output$plot <- renderPlot({
    
    ## note input$m grabs the answer from the input question
    mytextdata$mentions <- ifelse(grepl(as.character(input$m), mytextdata$textOriginal), "Mentioned", 
                                  "Not Mentioned")
    
    ## barplot
    ggplot(mytextdata, aes(mentions))+
      geom_bar() +
      theme_minimal()+
      theme(axis.text.y = element_blank())+
      ylim(0,2500)+
      geom_text(stat = 'count',aes(label =..count.., vjust=-.3))+
      labs(y="Number of Comments",
           x="",
           title =paste("Comments Mentioning", input$m, sep= " "))
        })
}

## run the app locally
shinyApp(ui, server)
