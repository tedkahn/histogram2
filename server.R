library(shiny)
library(ggplot2)
library(Cairo)   # For nicer ggplot2 output when deployed on Linux
library(ggthemes)

source('helper.R')

shinyServer(
     function(input, output) {
          output$myHist <- renderPlot({
               xLabel= 'Number of at-bats for the 2002 US baseball season.'
               bin <- input$bin
               ggplot(myData, aes(x= myData$AtBatts, ..density..)) + 
                    geom_histogram(binwidth= bin, color= 'black', fill= 'lightblue') + 
                    geom_density(fill= NA, color= 'red', size= 1.25) +
                    labs(x= xLabel) +
                    theme_classic()
                    })
     }
)
