library(shiny)

#real Kosovo app

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Kosovo plot"),
  sidebarLayout(
   
      
      sidebarPanel(
       
        selectInput("mcode", label="Choose a Municipality:", 
                    choices = 1:29)
      ) ,
      
      
      
  # Sidebar with a slider input for the number of bins

    # Show a plot of the generated distribution
    mainPanel(
      h1("Migrations by Municipality", align="center"),
      plotOutput(outputId="mPlot"),
      h2("The blue vertical lines represent bombings", align="center")
    )
  )
)