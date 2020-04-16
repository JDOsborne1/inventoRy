
# Check recipe is valid ---------------------------------------------------

#' Recipe Checker
#'
#' @description This function takes a recipe specification and a reference
#'   inventory and returns the number of batches of that recipe which are
#'   possible. We can use this to determine which recipes in the book are
#'   possible with the current state of the inventory.
#'
#'   Currently the specification simply checks that there is at least enough of
#'   every ingredient. When moving forward to potential repice planning or
#'   optimisation, it may become necessary to have the recipes expressed in a
#'   more complex data.type or as a function, to allow for multiple recipes to
#'   be solved at once, and to understand the interference with one another.
#'
#' @param .recipe_to_check
#' @param .inventory_to_check_against
#'
#' @return
#' @export
#'
#' @examples
inv_CheckRecipe <- function(.recipe_to_check, .inventory_to_check_against) {
        ingred_list <- names(.recipe_to_check$ingredients)
        rc_ing <- .recipe_to_check$ingredients
        inv_chk <- .inventory_to_check_against[["basic"]]

        rc_units <- rc_ing[ingred_list] %>% purrr::map(inv_Unitify)
        inv_units <- inv_chk[ingred_list] %>% purrr::map(inv_Unitify)

        number_of_batches <- purrr::map2(rc_units, inv_units, function(x, y) y %/% x) %>% unlist() %>% min()

        number_of_batches
}

#' Fundamental Specification to Unit Transform
#'
#' @description This function encodes the transformation from the conventional
#'   storage model used in this project into a unit rich value which can be used
#'   in the internal calculations of the inventoRy package.
#'
#' @param list_to_unit
#'
#' @return
#' @export
#'
#' @examples
inv_Unitify <- function(list_to_unit){
        units::as_units(list_to_unit[["value"]], list_to_unit[["unit"]])
}

#' Recipe Selection
#'
#' @description This function takes the recipe book and the inventory provided
#'   and returns the name of a recipe in the recipe book which will be possible
#'   when considering the ingredients required and the stock in the provided
#'   inventory.
#'
#' @param .recipe_book
#' @param .inventory
#'
#' @return
#' @export
#'
#' @examples
inv_SelectRecipe <- function(.recipe_book = test_recipes, .inventory = test_inventory){
        .recipe_book[["basic"]] %>%
                purrr::map(inv_CheckRecipe, .inventory_to_check_against = .inventory) %>%
                tibble::as_tibble() %>%
                tidyr::pivot_longer(cols = everything()) %>%
                dplyr::filter(value > 0) %>%
                dplyr::pull(name) %>%
                sample(1)
}
