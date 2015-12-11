library(shiny)
library(markdown)

shinyUI(pageWithSidebar(
     
     headerPanel("Histogram Shape and the Kernel Density Function"),
     sidebarPanel(
          sliderInput('bin', 'Specify the bin width:',value = 80, min = 10, max = 200, step = 10),
          includeMarkdown("instructions.md")
     ),
     mainPanel(
          tabsetPanel(type = "tabs", 
               tabPanel("Histogram & KDF", plotOutput('myHist')), 
               tabPanel("Exploring The Dataset",  includeMarkdown("usage.md")),
               tabPanel("Statistical Discussion",  includeMarkdown("explaination.md")) 
          )
     )
))

