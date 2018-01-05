################################################################################
miprofile = fluidPage(
  fluidRow(
    # Sidebar Panel default is 4-column.
    sidebarPanel(
      actionButton("action_miprofile", "RUN", icon("filter")),
      selectInput("miprofile_cova", "SELECT COVA", list("NULL")),
      selectInput("miprofile_conf", "SELECT CONF",list("NULL")),

      div(style="font-size:125%;color:blue;",checkboxInput("miprofile_bcd", "Bray-Curtis Distance")),
      selectInput("miprofile_bcd_norm", "DIST_NORM",list(Rarefaction = "Rarefaction", Proportion = "Proportion")),
      div(style="font-size:125%;color:blue;",checkboxInput("miprofile_jcd", "Jaccard Distance")),
      selectInput("miprofile_jcd_norm", "DIST_NORM",list(Rarefaction = "Rarefaction", Proportion = "Proportion")),

      
      div(style="font-size:125%;color:blue;",checkboxInput("miprofile_uwu", "UnWeighted UniFrac")),
      selectInput("miprofile_uwu_norm", "DIST_NORM",list(Rarefaction = "Rarefaction", Proportion = "Proportion")),
      
      div(style="font-size:125%;color:blue;",checkboxInput("miprofile_gu", "Generalized UniFrac")),
      selectInput("miprofile_gu_norm", "DIST_NORM",list(Rarefaction = "Rarefaction", Proportion = "Proportion")),
      numericInput("miprofile_gu_alpha", "alpha", 0),
      
      div(style="font-size:125%;color:blue;",checkboxInput("miprofile_pwu", "Presence Weighted UniFrac")),
      selectInput("miprofile_pwu_norm", "DIST_NORM",list(Rarefaction = "Rarefaction", Proportion = "Proportion")),
      numericInput("miprofile_pwu_alpha", "alpha", 0),

      fileInput("filedistance", "Upload DIST_IFILE", multiple = TRUE),

      checkboxInput("miprofile_outfiles", "OUTPUT DISTANCES INTO FILES")

    )
  )
)
################################################################################
