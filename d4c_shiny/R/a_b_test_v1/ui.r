library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("A/B Test Stats"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      h4("Test Labels"),
        textInput("tl_name", "Test Description:", "A/B Test"),
        textInput("tl_treatment", "Trail Description", "Mailed"),
        textInput("tl_success", "Success Description", "Sold"),
      h4("Test Data Set"),
        textInput("tds_name", "Name:", "Test"),
        numericInput("tds_nt", "# Trial", 10000, min=10),
        numericInput("tds_ns", "# Success", 1000, min=0),
      h4("Control Data Set"),
        textInput("cds_name", "Name:", "Control"),
        numericInput("cds_nt", "# Trial", 1000, min=10),
        numericInput("cds_ns", "# Success", 70, min=0)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      verbatimTextOutput("text1"),
      plotOutput("sigplot")
    )
  )
))