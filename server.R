# Server side of the application
# 2. Some operation on the ui input
# 3. Some reactive output displayed as a result of server calculations

library(shiny)
library(lubridate)

function(input, output) {
  
  # builds a reactive object that will be used by different other reactive functions
  reactiveNumber <- reactive({
    input$num
  })
  
  # make the output:
  output$textOut <- renderText({paste("Total number of fruits:",reactiveNumber(), '+', input$id1,'=', reactiveNumber() + input$id1)})
  output$CheckBoxOut <- renderText({paste(input$id2)})
  output$DeliveryOut <- renderPrint(input$DeliveryDate - Sys.Date())
}