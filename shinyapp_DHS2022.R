#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#

library(shiny)
library(shinydashboard)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("DHS 2022"),

    # Sidebar with input and output definitions
    sidebarLayout(
        sidebarPanel(
          # This adds the dropdown list of the indicators on the sidebar
          selectInput("vis", "List of Indicators",
                      c("Interview Response Rates"="vis1",
                        "Characteristics of Respondents"="vis2",
                        "Health Insurance Coverage"="vis3",
                        "Disability among the household population"="vis4",
                        "Household population"="vis5",
                        "Teenage pregnancy"="vis6",
                        "Current use of contraception"="vis7",
                        "Need and demand for family planning among married women"="vis8",
                        "Maternal care"="vis9",
                        "Vaccinations"="vis10",
                        "Nutritional status"="vis11",
                        "Household possession of insecticide-treated nets"="vis12",
                        "Knowledge about HIV prevention methods among youth"="vis13",
                        "Coverage of prior HIV testing"="vis14",
                        "Ownership and documentation of agricultural land"="vis15",
                        "Ownership and documentation of non-agricultural land"="vis16",
                        "Experience of physical violence"="vis17"
                        ))
          
          
        ),

        # Show a plot of the generated distribution
        mainPanel(
           #include the tabs in the application
         tabsetPanel(type = "tabs",
                     tabPanel("Summary", valueBoxOutput("vbox1", width = 2)),
                     tabPanel("Summary", plotOutput("summary1")),
                     tabPanel("Indicators",plotOutput("indicators") ),
                     tabPanel("Comparison of Indicators", plotOutput("comparison"))
                     
          
        )  
        
      
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
   #input$vbox1 <- shinydashboard::renderValueBox({ 
  #   d <- 42
  #   shinydashboard::valueBox( d, "Ccy")
  # })

    
}

# Run the application 
shinyApp(ui = ui, server = server)
