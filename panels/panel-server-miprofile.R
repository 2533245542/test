output$miprofile_out_cova <- renderUI({
  selectInput("miprofile_cova", "SELECT COVA", COVA(), multiple = TRUE)
})
output$miprofile_out_conf <- renderUI({
  selectInput("miprofile_conf", "SELECT CONF", COVA(), multiple = TRUE)
})