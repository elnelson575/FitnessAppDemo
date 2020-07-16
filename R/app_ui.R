#' @import shiny
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    #mod_Exercises_ui("Exercises_ui_1"),
    #mod_MuscleGroup_ui("MuscleGroup_ui_1"),

    shinydashboardPlus::dashboardPagePlus(
      
      header = shinydashboardPlus::dashboardHeaderPlus(
        title = "Fitbod Tracking Dashboard",
        enable_rightsidebar = FALSE
      ),
      
      
      sidebar = shinydashboard::dashboardSidebar(
        
        
        shinydashboard::sidebarMenu(
          # Setting id makes input$tabs give the tabName of currently-selected tab
          id = "tabs",
          shinydashboard::menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
          shinydashboard::menuItem("Muscle Group View", icon = icon("th"), tabName = "mg", badgeLabel = "Coming soon",
                   badgeColor = "green"),
          shinydashboard::menuItem("Exercise View", icon = icon("bar-chart-o"), tabName = "ev"
          ))
      ),
      
      
      
      body = shinydashboard::dashboardBody(
        shinydashboard::tabItems(
          shinydashboard::tabItem("dashboard", mod_Home_ui("Home_ui_1")),
          shinydashboard::tabItem("mg", mod_MuscleGroup_ui("MuscleGroup_ui_1")),
          shinydashboard::tabItem("ev", mod_Exercises_ui("Exercises_ui_1")
          )
          
        ) 
      ),
      rightsidebar = NULL,
      title = "FitBod App Monitoring Dashboard"
    )
  )
}

#' @import shiny
golem_add_external_resources <- function(){
  
  addResourcePath(
    'www', system.file('app/www', package = 'FitnessAppDemo')
  )
 
  tags$head(
    golem::activate_js(),
    golem::favicon()
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    #tags$link(rel="stylesheet", type="text/css", href="www/custom.css")
  )
}
