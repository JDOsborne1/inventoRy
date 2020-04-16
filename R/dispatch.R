#' Inventory connector
#'
#' @description This connector either serves the value, if there is no input, or
#'   writes the input to the value of the inventory.
#'
#' @param input
#' @param .inventory_dir
#' @param filename
#'
#' @return
#' @export
#'
#' @examples
inv_ConnectInventory <- function(input = NULL, .inventory_dir = get("inventory_dir"), filename = "inventory.yml"){
        if(is.null(input)){
                read_yaml( pasÉte0(.inventory_dir,  filename))
        } else {
                write_yaml(input, paste0(.inventory_dir, filename))
        }
}

#' Recipe Connector
#'
#' @description This connector either serves the value, if there is no input, or
#'   writes the input to the value of the recipe book.
#'
#' @param input
#' @param .inventory_dir
#' @param filename
#'
#' @return
#' @export
#'
#' @examples
inv_ConnectRecipes <- function(input = NULL, .inventory_dir = get("inventory_dir"), filename = "recipe_book.yml"){
        if(is.null(input)){
                read_yaml( paste0(.inventory_dir,  filename))
        } else {
                write_yaml(input, paste0(.inventory_dir, filename))
        }
}

#' History Connector
#'
#' @description This connector either serves the value, if there is no input, or
#'   writes the input to the value of the inventory history.
#'
#' @param input
#' @param .inventory_dir
#' @param filename
#'
#' @return
#' @export
#'
#' @examples
inv_ConnectHistory <- function(input = NULL, .inventory_dir = get("inventory_dir"), filename = "inventory_history.csv"){
        if(is.null(input)){
                read_csv( paste0(.inventory_dir,  filename))
        } else {
                write_csv(input, paste0(.inventory_dir, filename))
        }
}
