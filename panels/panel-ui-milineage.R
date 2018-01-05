################################################################################
milineage = fluidPage(
  fluidRow(
    # Sidebar Panel default is 4-column.
    sidebarPanel(
      actionButton("action_milineage", "RUN", icon("filter")),
      selectInput("milineage_subset_ranks", "SELECT COVA", list("NULL")),
      selectInput("milineage_subset_taxa", "SELECT CONF",list("NULL")),
      numericInput("milineage_mindepth", "Min depth", 10),
      numericInput("milineage_nresample", "n.resample", 1000),      
      numericInput("milineage_fdralpha", "Fdr.alpha", 0)
    ),
    # Now the Main Panel.
    column(
      width = 8, offset = 0, 
      h4("QCAT_GEE"),
      h4("QCAT"),
      h4("Graph Representation")
    )
  )
)
################################################################################
