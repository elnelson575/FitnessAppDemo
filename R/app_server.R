#' @import shiny
app_server <- function(input, output,session) {
  # List the first level callModules here
  callModule(mod_Home_server, "Home_ui_1")
  callModule(mod_Exercises_server, "Exercises_ui_1")
  callModule(mod_MuscleGroup_server, "MuscleGroup_ui_1")
}
