
# User Interface
# 1. Some form of input (widget: textbox, radio button, checkbox, ...)
# 4. You must also include enough documentation so that a novice user could use your application.


# Documentation: enough documentation on the shiny site for a user to get started using the application.

library(shiny)

fluidPage(
  headerPanel("Simple use of multiple inputs"),
  sidebarPanel(
    h3('How to make this work?'),
    p("There are several input objects below. Simply change any of their default values and watch the results! There won't be any fancy analysis, but the code can be reused to show diferent input/output methods, thus showing the capability of Shiny apps.")),
  
  # inputs
  numericInput(inputId = 'id1', 
               label = 'Number of bananas:',
               value = 3,min = 0,max = 10,step = 1
  ),
  
  sliderInput(inputId = "num", 
              label = "Number of oranges:", 
              value = 5, min = 1, max = 10),
  
  checkboxGroupInput(inputId = 'id2',label = "Fruit options",
                     choices = c("Peeled" = "peeled",
                                 "Mashed" = "mashed",
                                 "Fresh" = "fresh",
                                 "Imported" = "imported",
                                 "Hand picked" = "hand picked"
                     )
  ),
  dateInput(inputId = 'DeliveryDate',label = "Requested delivery date:"),
  
  # Outputs
  mainPanel(
    h3('Results Section'),
    textOutput(outputId = "textOut"),
    "Selected options:",
    textOutput(outputId = "CheckBoxOut"),
    p(),
    'Expected delivery:',
    textOutput(outputId = "DeliveryOut")
  )
)