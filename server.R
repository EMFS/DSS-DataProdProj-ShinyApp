# Server side of the application
# 2. Some operation on the ui input
# 3. Some reactive output displayed as a result of server calculations

library(shiny)

function(input, output) {
  
  # builds a reactive object that will be used by different other reactive functions
  reactiveNumber <- reactive({
    input$num1
  })
  
  # make the output:
  output$textOut <- renderText(paste(reactiveNumber(), '+', input$num2,'=', reactiveNumber() + input$num2))
}