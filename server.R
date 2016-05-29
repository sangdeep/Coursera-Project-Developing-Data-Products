library(shiny)
library(UsingR)
library(datasets)


shinyServer(function(input,output) {

                                   choosedata<-reactive({switch(input$dataset,
                                                                "rock" = rock,
                                                                "pressure"=pressure,
                                                                 "cars"=cars)})
  
                                   output$summary<-renderPrint({summary(choosedata())})
  
                                   output$taboutput<-renderTable({head(choosedata(),
                                                                       input$obs)})
                                  }
)
