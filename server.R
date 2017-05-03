#real Kosovo app
library(shiny)

# Define server logic required to draw a histogram
function(input, output) {
 
  output$mPlot <- renderPlot({
  #setwd("\\\\moray.jacks.local/william.alsaker/Documents and Settings/My Documents/STAT 702/Final Project")
 migrate.dat<-read.csv("migrate4.csv", header=T)
   # head(migrate.dat)
    migrate.dat$lvdt2<-as.Date(migrate.dat$lvdt2, "%m/%d/%Y")

    temp.plot<-migrate4[migrate4$mcode==input$mcode,]
    
    plot(lvcnt~lvdt2, data=temp.plot, type="l", xlab="Date", 
         ylab="Displaced Persons", main=paste(c("Municipality #", input$mcode), collapse=""))
    abline(v=temp.plot$lvdt2[which(temp.plot$bomb>0)], col="blue")
 
  })
  
}
