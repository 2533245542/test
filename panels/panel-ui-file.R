file = fluidPage(
  sidebarPanel(
    uiOutput("phyloseqDataset"),
    fileInput('filebiom', "Upload .BIOM", multiple = TRUE),
    fileInput('treefile', "Upload .tre", multiple = FALSE),

    # fileInput("filebiom", "Upload .BIOM", multiple = TRUE),
    fileInput("fileOTU", "Upload OUT file (.txt)", multiple = TRUE),
    fileInput("filemetadata", "Upload metadata (.txt)", multiple = TRUE),
    fileInput('file1', "Upload .RDdata file")

    # fileInput("filetree", "Upload .tre", multiple = TRUE)
  ),
  
  mainPanel(
  	h4("Files uploaded"),
  	tableOutput("filebiome_info"),
  	tableOutput("file1_info"),
  	tableOutput("treefile_info_info")
  	# tableOutput("filetree_info")
  )
)
