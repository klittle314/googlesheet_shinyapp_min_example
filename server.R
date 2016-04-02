
# minimal example server.R

source("global.R")


shinyServer(function(input, output, session) {
  
  df = gs_df
  options(DT.options = list(pageLength = 5))
  
  # row selection
  output$x12 = DT::renderDataTable(df, server = FALSE)
  output$y12 = renderPrint(input$x12_rows_selected)
  
 
  df_out <- reactive({
     df1 <- df[input$x12_rows_selected,]
  }
  )
  
  # download file
  output$downloadData <- downloadHandler(
      filename = function() {
        paste('data-', Sys.Date(), '.csv', sep='')
      },
      content = function(con) {
        write.csv(df_out(), con)
      }
    )
 }
)


