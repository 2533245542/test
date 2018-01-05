################################################################################
filter = fluidPage(
  fluidRow(
    # Sidebar Panel default is 4-column.
    sidebarPanel(
      actionButton("action_filter", "Filter", icon("filter")),
      selectInput("filter_subset_ranks", "Subset Ranks", list("NULL")),
      selectInput("filter_subset_taxa", "Subset Taxa",list("NULL")),
      selectInput("filter_subset_variables", "Subset sample variables",list("NULL")),
      selectInput("filter_subset_classes", "Subset variable classes",list("NULL")),
      numericInput("filter_OTUsums", "Select sample minimum OTU sums", 1000),
      numericInput("filter_taxasums", "Select taxa minimum counts", 10)
    ),
    # Now the Main Panel.
    column(
      width = 8, offset = 0, 
      h4("Data Summaries"),
      fluidRow(
        column(width = 6,
               h4("Original")
        ),
        column(width = 6,
               h4("Filtered Data:")
      )),
      h4("Component Table, Filtered Data")
    )
  )
)
################################################################################
