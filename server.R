library(shiny)
shinyServer(function(input, output, session) {
  months=c("jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec")
  scale=.9
  # Send a pre-rendered image, and don't delete the image after sending it
  output$climatology <- renderImage({
    #filename <- normalizePath(file.path('./plots',
   #                           paste('plot.shum.climatology.',months[input$month.index],'.png',sep='')))
    filename <- normalizePath(file.path('./plots',
                                        paste('plot.shum.mean.climatology.',input$month.index,'.png',sep='')))
    
    # Return a list containing the filename and alt text
    list(src = filename,
         width=scale*750,
         height=scale*500)
    
  }, deleteFile = FALSE)
  
  #Next image:
  output$climatology.obs <- renderImage({
    #filename <- normalizePath(file.path('./plots',
    #                           paste('plot.shum.climatology.',months[input$month.index],'.png',sep='')))
    filename <- normalizePath(file.path('./plots',
                                        paste('plot.shum.obs.climatology.na.rm.F.1979.2014',input$month.index,'.png',sep='')))
    
    # Return a list containing the filename and alt text
    list(src = filename,
         width=scale*750,
         height=scale*500)
    
  }, deleteFile = FALSE)
  
  #Next image:
    output$interannual <- renderImage({
    #filename <- normalizePath(file.path('./plots',
    #                          paste('plot.shum.interannual.variability.',months[input$month.index],'.png',sep='')))
    filename <- normalizePath(file.path('./plots',
                                        paste('plot.shum.mean.interannual.variability.',input$month.index,'.png',sep='')))
    
    # Return a list containing the filename and alt text
    list(src = filename,
         width=scale*750,
         height=scale*500)
    
  }, deleteFile = FALSE)
    
    #Next image:
    output$interannual.obs <- renderImage({
      #filename <- normalizePath(file.path('./plots',
      #                          paste('plot.shum.interannual.variability.',months[input$month.index],'.png',sep='')))
      filename <- normalizePath(file.path('./plots',
                                          paste('plot.shum.obs.interannual.variability.na.rm.F.1979.2014',input$month.index,'.png',sep='')))
      
      # Return a list containing the filename and alt text
      list(src = filename,
           width=scale*750,
           height=scale*500)
      
    }, deleteFile = FALSE)
    
    #Next image:
    output$trend <- renderImage({
      #filename <- normalizePath(file.path('./plots',
      #                          paste('plot.shum.interannual.variability.',months[input$month.index],'.png',sep='')))
      filename <- normalizePath(file.path('./plots',
                                          paste('plot.shum.trend.',input$month.index,'.png',sep='')))
      
      # Return a list containing the filename and alt text
      list(src = filename,
           width=scale*750,
           height=scale*500)
      
    }, deleteFile = FALSE)
    
    #Next image:
    output$trend.obs <- renderImage({
      #filename <- normalizePath(file.path('./plots',
      #                          paste('plot.shum.interannual.variability.',months[input$month.index],'.png',sep='')))
      filename <- normalizePath(file.path('./plots',
                                          paste('plot.shum.obs.trend.',input$month.index,'.png',sep='')))
      
      # Return a list containing the filename and alt text
      list(src = filename,
           width=scale*750,
           height=scale*500)
      
    }, deleteFile = FALSE)
})