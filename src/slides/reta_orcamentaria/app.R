#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Efeitos de variações na renda e nos preços"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("p1",
                        "Preço do bem 1:",
                        min = 1,
                        max = 3,
                        step = 0.5,
                        value = 2),
            sliderInput("p2",
                        "Preço do bem 2:",
                        min = 1,
                        max = 3,
                        step = 0.5,
                        value = 2),
            sliderInput("I",
                        "Renda:",
                        min = 10,
                        max = 50,
                        step = 5,
                        value = 40)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("budgetPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

  output$budgetPlot <- renderPlot({
    df <- data.frame(x1 = c(0, input$I/input$p1), 
                     x2 = c(input$I/input$p2, 0))
    # draw the plot with the specified 
    ggplot(df, aes(x1, x2)) +
      geom_line(color = "darkgreen", size = 2) +
      geom_hline(yintercept = 0) +
      geom_vline(xintercept = 0) +
      labs(x = 'Quantidade bem 1',
           y = 'Quantidade bem 2',
           title = 'Reta Orçamentária') +
      lims(x = c(0, 30), y = c(0, 30)) +
      theme_bw()
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
