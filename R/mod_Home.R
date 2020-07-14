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
  
  )
}
    
# Module Server
    
#' @rdname mod_Home
#' @export
#' @keywords internal
    
mod_Home_server <- function(input, output, session){
  ns <- session$ns
}
    
## To be copied in the UI
# mod_Home_ui("Home_ui_1")
    
## To be copied in the server
# callModule(mod_Home_server, "Home_ui_1")
 
