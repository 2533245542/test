################################################################################
miprofile = fluidPage(fluidRow(
  # Sidebar Panel default is 4-column.
  sidebarPanel(
    actionButton("action_miprofile", "RUN", icon("filter")),
    selectInput("miprofile_cova", "SELECT COVA", list("NULL")),
    selectInput("miprofile_conf", "SELECT CONF", list("NULL")),
    
    checkboxInput("miprofile_bcd", "Bray-Curtis Distance"),
    selectInput("miprofile_bcd_norm", "DIST_NORM", list("NULL")),
    checkboxInput("miprofile_jcd", "Jaccard Distance"),
    selectInput("miprofile_jcd_norm", "DIST_NORM", list("NULL")),
    
    
    checkboxInput("miprofile_uwu", "UnWeighted UniFrac"),
    selectInput("miprofile_uwu_norm", "DIST_NORM", list("NULL")),
    
    checkboxInput("miprofile_gu", "Generalized UniFrac"),
    selectInput("miprofile_gu_norm", "DIST_NORM", list("NULL")),
    numericInput("miprofile_gu_alpha", "alpha", 0),
    
    checkboxInput("miprofile_pwu", "Presence Weighted UniFrac"),
    selectInput("miprofile_pwu_norm", "DIST_NORM", list("NULL")),
    numericInput("miprofile_pwu_alpha", "alpha", 0),
    
    fileInput("filedistance", "Upload DIST_IFILE", multiple = TRUE),
    
    checkboxInput("miprofile_outfiles", "OUTPUT DISTANCES INTO FILES")
    
  )
))
################################################################################
