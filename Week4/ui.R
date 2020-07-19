#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("How Log Transformations affect a bivariate regression"),
    h5("This is a demonstration on how a log transformation affects a regression"),
    div("This demonstration uses Quality of Government institute data to show how a log transformation affects a regression. GDP per capita is an often skewed variable, and students often have a trouble understanding how regression assumptions acctually affect a regression. Using Gdp/c as DV and level of education as IV, this app shows how a log transformation of a skewed variable affects the bivariate regression."),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            h3("Check the checkbox to a apply a log transformation to the dependent variable"),
            checkboxInput("logTrans", 
                          "Log Transform Variable", 
                          value = FALSE),
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h3("Regression"),
            plotOutput("regPlot")
        )
    )
))
