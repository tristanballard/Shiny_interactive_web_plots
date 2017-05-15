library(shiny)
shinyUI(fluidPage(
  titlePanel("Specific Humidity (NCEP-DOE-Reanalysis II) vs. HadISDH Observations"),
  
  sidebarLayout(
    
    sidebarPanel(
      #Buttons("variable", label = h4("Temperature Index"), c("tmax","tmin"),
      #             selected = "tmax", inline=T),
      radioButtons("month.index", label = h4("Month"), c("jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec"),
                   selected = "jan", inline=T)
     # sliderInput("month.index", label = h4("Month"), min = 1, 
      #            max = 12, value = 1, step=1, animate=animationOptions(interval=800)) #time in milliseconds
    ),
    
    mainPanel(
      tabsetPanel(type="tabs",
      tabPanel("Climatology",verticalLayout(imageOutput("climatology"), imageOutput("climatology.obs"))),
      tabPanel("Interannual Variability",verticalLayout(imageOutput("interannual"), imageOutput("interannual.obs"))),
      tabPanel("Trend 1979-2014",verticalLayout(imageOutput("trend"), imageOutput("trend.obs")))
      
      #fluidRow(
      #  verticalLayout(imageOutput("climatology"), imageOutput("interannual")))
    ))
  )
))
