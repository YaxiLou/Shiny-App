library(shiny)

fluidPage(
  titlePanel("Word Cloud"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("freq",
                  "Minimum Frequency:",
                  min = 1,  max = 500, value = 15),
      sliderInput("max",
                  "Maximum Number of Words:",
                  min = 1,  max = 200,  value = 100)
    ),
    
    mainPanel(
      plotOutput("plot")
    )
  )
)