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
  
  )
}
    
# Module Server
    
#' @rdname mod_Exercises
#' @export
#' @keywords internal
    
mod_Exercises_server <- function(input, output, session){
  ns <- session$ns
}