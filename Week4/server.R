#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
qog <- read_rds("./data/qog.rds")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$regPlot <- renderPlot({
        
        if(input$logTrans == TRUE) {
            qog %>% ggplot(aes(iiag_edu,log(mad_gdppc)))+
                geom_point()+
                geom_smooth(method="lm")+
                labs(y="log transformed GDP per Capita",
                     y = "Level of education")
            
        }else {
            qog %>% ggplot(aes(iiag_edu,mad_gdppc))+
                geom_point()+
                geom_smooth(method="lm")+
                labs(y="GDP per Capita",
                     y = "Level of education")
            
        }


    })

})
