# Module UI
  
#' @title   mod_MuscleGroup_ui and mod_MuscleGroup_server
#' @description  A shiny Module.
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_MuscleGroup
#'
#' @keywords internal
#' @export 
#' @importFrom shiny NS tagList 
mod_MuscleGroup_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidPage(
      fluidRow(
        h2("Muscle Group Progress for "),
        selectizeInput(
          inputId = ns("muscles"), 
          label = "", 
          choices = c("Back", "Hamstrings"),
          selected = "Back",
          width = '50%',
          multiple = FALSE)
      ),
      fluidRow(
        shinydashboard::box(
          title = "Max Weight Over Time",
          width = 6,
          plotOutput(ns("plot4"))),
        shinydashboard::box(
          title = "Top Exercises",
          width = 6,
          DT::dataTableOutput(ns('data_table2'))
          )
        )
    )
  )
}
    
# Module Server
    
#' @rdname mod_MuscleGroup
#' @export
#' @keywords internal
    
mod_MuscleGroup_server <- function(input, output, session){
  ns <- session$ns
  
  output$plot4 <- renderPlot({
    shinipsum::random_ggplot(type = "line")
  })
  
  output$data_table2 <- DT::renderDT({
    shinipsum::random_DT(5, 3, "numeric")
  })
}
 
