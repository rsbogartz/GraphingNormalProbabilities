library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Graphing Normal Probabilities"),
  

  sidebarLayout(
    
    sidebarPanel(
        # Specification of range within an interval
      sliderInput("range", "Range:",
                  min = 0, max = 200, value = c(25, 45) ),
      sliderInput("mu", "Mean:",
                  min = 0, max = 160, value = 50),
      sliderInput("standardDeviation", "Standard Deviation:",
                  min = 0, max = 10, value = 10)
	),


    mainPanel(plotOutput("distPlot"))
    
   ) 
   
     
 ))
