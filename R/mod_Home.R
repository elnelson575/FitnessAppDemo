# Module UI
  
#' @title   mod_Home_ui and mod_Home_server
#' @description  A shiny Module.
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_Home
#'
#' @keywords internal
#' @export 
#' @importFrom shiny NS tagList 
mod_Home_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidPage(
      fluidRow(
        column(width = 5,
          h2("Welcome!")),
          br(),br(),br()
        ),
      fluidRow(
        column(width = 10,
          shinydashboard::box(
            background = "blue",
            h2("You lifted XYZ xx times!"),
            title = "Congrats!"),
              br(), br(), br(), br()
          )),
      fluidRow(
          shinydashboard::box(
                 title = "Top Exercises",
                 width = 6,
                 DT::dataTableOutput(ns('data_table'))),
          shinydashboard::box(
            title = "Total Weight Lifted",
            width = 6,
            plotOutput(ns("plot"))
      )
    )
  )
  )
}
    
# Module Server
    
#' @rdname mod_Home
#' @export
#' @keywords internal
    
mod_Home_server <- function(input, output, session){
  ns <- session$ns
  
  output$data_table <- DT::renderDT({
    shinipsum::random_DT(5, 3, "numeric")
  })
  
  output$plot <- renderPlot({
    shinipsum::random_ggplot(type = "line")
  })
}
 
