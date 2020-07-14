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
    h1("Hi I'm muscle group tab")
  )
}
    
# Module Server
    
#' @rdname mod_MuscleGroup
#' @export
#' @keywords internal
    
mod_MuscleGroup_server <- function(input, output, session){
  ns <- session$ns
}
 
