# Module UI
  
#' @title   mod_Exercises_ui and mod_Exercises_server
#' @description  A shiny Module.
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_Exercises
#'
#' @keywords internal
#' @export 
#' @importFrom shiny NS tagList 
mod_Exercises_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidPage(
      fluidRow(
          h2("Exercise Progress for "),
          selectizeInput(
            inputId = ns("exercises"), 
            label = "", 
            choices = c("Dumbell Bicep Curl", "Deadlift"),
            selected = "Dumbell Bicep Curl",
            width = '50%',
            multiple = FALSE)
      ),
      fluidRow(
        column(width = 10,
               shinydashboard::box(
                 background = "blue",
                 h2("Your current projected 1 rep max is x!"),
                 title = "Congrats!")
        )),
      fluidRow(
        shinydashboard::box(
          title = "Total Weight Per Workout",
          width = 6,
          plotOutput(ns("plot2"))),
        shinydashboard::box(
          title = "Max Weight Per Workout",
          width = 6,
          plotOutput(ns("plot3"))
          )
      )
      )
    )
}
    
# Module Server
    
#' @rdname mod_Exercises
#' @export
#' @keywords internal
    
mod_Exercises_server <- function(input, output, session){
  ns <- session$ns
  
  output$plot2 <- renderPlot({
    shinipsum::random_ggplot(type = "line")
  })
  
  output$plot3 <- renderPlot({
    shinipsum::random_ggplot(type = "line")
  })
}