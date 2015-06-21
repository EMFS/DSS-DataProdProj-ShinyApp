# Server side of the application
# 2. Some operation on the ui input
# 3. Some reactive output displayed as a result of server calculations

library(shiny)
library(lubridate)
library(ggplot2)

function(input, output) {
  
  # builds a reactive object that will be used by different other reactive functions
  reactiveNumber <- reactive({
    input$bananas
  })
  
  # make the output:
  output$textOut <- renderText({paste("Total number of fruits:",reactiveNumber(), '+', input$oranges,'=', reactiveNumber() + input$oranges)})
  output$CheckBoxOut <- renderText({paste(input$id2)})
  output$DeliveryOut <- renderPrint(input$DeliveryDate - Sys.Date())
  
  # pie chart
  df <- reactive({
    t <- data.frame(c("Bananas", "Oranges"), c(input$bananas, input$oranges))
    names(t) <- c('fruits', 'quantity')
    t })
  
  output$pieChart <- renderPlot({
    ggplot(df(), aes(x=1, y=quantity, fill=fruits)) +
      geom_bar(stat = "identity", color='black') + coord_polar(theta = 'y') +
      ggtitle("Pie Chart of fruits") + 
      theme(axis.ticks=element_blank(),
            axis.title=element_blank(), 
            axis.text.y=element_blank()) +
      guides(fill=guide_legend(override.aes=list(colour=NA)))
  })
  
}