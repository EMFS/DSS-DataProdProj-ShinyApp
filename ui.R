
# User Interface
# 1. Some form of input (widget: textbox, radio button, checkbox, ...)
# 4. You must also include enough documentation so that a novice user could use your application.

# Idea: use the crimes DB from Chicago; do some basic analysis and visualization...
# Problem => needs to import too much data! Better stick to the internal data sets.


# Documentation: enough documentation on the shiny site for a user to get started using the application.

library(shiny)

fluidPage(
  sliderInput(inputId = "num1", 
              label = "Choose first operand", 
              value = 5, min = 1, max = 10),
  sliderInput(inputId = "num2", 
              label = "Choose second operand", 
              value = 5, min = 1, max = 10),
  textOutput(outputId = "textOut")
)