output$filebiome_info <- renderTable({
  input$filebiom
}) 
output$fileOTU_info <- renderTable({
  input$fileOTU
})
output$filemetadata_info <- renderTable({
  input$filemetadata
})
output$filetree_info <- renderTable({
  input$filetree
})
