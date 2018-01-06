COVA = reactive({
  as.list(sample_data(physeq()))
})
CONF = COVA
output$milineage_out_cova <- renderUI({
  selectInput("milineage_cova", "SELECT COVA", COVA(), multiple = TRUE)
})
output$milineage_out_conf <- renderUI({
  selectInput("milineage_conf", "SELECT CONF", COVA(), multiple = TRUE)
})