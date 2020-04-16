#' Convert From YAML
#'
#' @description  This function captures the key transformation of the inventory
#'   list from the YAML storage specification into the unit rich R specification
#'   which is used internally.
#'
#' @param yaml_list_in
#'
#' @return
#' @export
#'
#' @examples
inv_ConvertFromYAML <- function(yaml_list_in){
        yaml_list_out <- list()

        elements <- names(yaml_list_in[["basic"]])

        for(i in elements){

        yaml_list_out[i] <- yaml_list_in[["basic"]][[i]][["value"]]
        units(yaml_list_out[[i]]) <- yaml_list_in[["basic"]][[i]][["unit"]]
        }
        output <- list()
        output[["basic"]] <- yaml_list_out
        output
}

#' Convert To YAML
#'
#' @description This function takes the internal storage format, including
#'   units, and reformats them so that they can be encoded in the YAML storage
#'   format used by the package at present.
#'
#'   While in future alternative storage formats may be included, for the
#'   limited single user use cases which are currently present, YAML is
#'   currently sufficient, and will remain with the package for similar use
#'   cases in future.
#'
#' @param input_list
#'
#' @return
#' @export
#'
#' @examples
inv_ConvertToYAML <- function(input_list){
        output_list <- list("basic" = list())

        elements <- names(input_list[["basic"]])
        for(i in elements){
                output_list[["basic"]][[i]] <- list()
                output_list[["basic"]][[i]][["value"]] <- as.numeric(input_list[["basic"]][[i]])
                output_list[["basic"]][[i]][["unit"]]  <- units::deparse_unit(input_list[["basic"]][[i]])
        }
        output_list

}

