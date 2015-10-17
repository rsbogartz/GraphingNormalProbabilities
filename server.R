 library(shiny)
 library(httr)

# runApp("/Users/bogartz/Desktop/- shiny/My.Shiny.apps/ShinyGraphingNormalProbabilities/")


shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
  xv<-seq(input$range[1], input$range[2], 0.01)  #We create a vector of x values over the range of values
yv<-dnorm(xv, input$mu, input$standardDeviation)  #We create the corresponding vector of normal densities
curve(dnorm(x, input$mu, input$standardDeviation), from = input$mu - 4*input$standardDeviation, to = input$mu + 4*input$standardDeviation, n = 200);  #We draw the normal curve
polygon(c(
input$range[1], 
xv[   (xv <= input$range[2])  &  (xv >= input$range[1])], input$range[2]    ),       
c(0,   
yv[   (xv <=input$range[2])   &   (xv >= input$range[1])    ]
, 
0) ,
 col="dark gray") 
 text((input$range[1]+input$range[2])/2, .005,
 as.character(
 round(pnorm(input$range[2], input$mu,input$standardDeviation ) - pnorm(input$range[1], input$mu,input$standardDeviation ), 3), lwd = 2
 ))   
   
  }) 
   
  })
  



 
   


