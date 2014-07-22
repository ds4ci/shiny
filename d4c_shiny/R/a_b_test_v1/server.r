library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$text1 <- renderPrint({
    success <- c(input$tds_ns, input$cds_ns)
    trial <- c(input$tds_nt, input$cds_nt)
    pt <- prop.test(success, trial)
    pt
  })
})