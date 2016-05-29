library(shiny)

shinyUI(pageWithSidebar(headerPanel("Dataset Selection"),
                        
                        sidebarPanel(
                                      selectInput('dataset',"Choose a dataset:",
                                                  choices = c("rock","pressure","cars")),
                                      numericInput('obs',"number of observation:",10),
                                     helpText("Note: while the data view will show specified number of
                                              observation, the summary will be based on the full dataset")
                          ),
                        
                        mainPanel(h3("Summarized Output Along With Details"),
                                  h4("Summary"),
                                  verbatimTextOutput("summary"),
                                  h4("Observation"),
                                  tableOutput("taboutput")
                        )))
