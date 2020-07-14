#' @import shiny
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    #mod_Exercises_ui("Exercises_ui_1"),
    #mod_MuscleGroup_ui("MuscleGroup_ui_1"),
    fluidPage(
      titlePanel("Fitbod Tracking Application"),
      fluidRow(
        column(3, navlistPanel(
          tabPanel("Home", h1("home")),
          tabPanel("Exercises", h1("first")),
          tabPanel("Muscle Group View", h2("second"))
          ))
      )
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
