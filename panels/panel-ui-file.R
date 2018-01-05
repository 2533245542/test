file = fluidPage(
  sidebarPanel(
    fileInput("filebiom", "Upload .BIOM", multiple = TRUE),
    fileInput("fileOTU", "Upload OUT file (.txt)", multiple = TRUE),
    fileInput("filemetadata", "Upload metadata (.txt)", multiple = TRUE),
    fileInput("filetree", "Upload .tre", multiple = TRUE)
  ),
  
  mainPanel(
  	h4("Files uploaded"),
  	tableOutput("filebiome_info"),
  	tableOutput("fileOTU_info"),
  	tableOutput("filemetadata_info"),
  	tableOutput("filetree_info")
  )
  
)
