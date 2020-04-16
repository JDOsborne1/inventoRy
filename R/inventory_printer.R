#' Inventory Printer Function
#'
#' @description Function to print a copy of the inventory in a nice tibble
#'   format.
#'
#' @param .inventory
#'
#' @return
#' @export
#'
#' @examples
inv_PrintInventory <- function(.inventory = inv_ConnectInventory()){
        test_inventory %>%
                inv_ConvertFromYAML() %>%
                .[["basic"]] %>%
                tibble::as_tibble()
}
