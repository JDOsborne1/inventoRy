
# Check recipe is valid ---------------------------------------------------

inv_CheckRecipe <- function(.recipe_to_check, .inventory_to_check_against) {
        ingred_list <- names(.recipe_to_check$ingredients)
        rc_ing <- .recipe_to_check$ingredients
        inv_chk <- .inventory_to_check_against[["basic"]]

        rc_units <- rc_ing[ingred_list] %>% purrr::map(inv_Unitify)
        inv_units <- inv_chk[ingred_list] %>% purrr::map(inv_Unitify)

        number_of_batches <- purrr::map2(rc_units, inv_units, function(x, y) y %/% x) %>% unlist() %>% min()

        number_of_batches
}

inv_Unitify <- function(list_to_unit){
        units::as_units(list_to_unit[["value"]], list_to_unit[["unit"]])
}

inv_SelectRecipe <- function(.recipe_book = test_recipes, .inventory = test_inventory){
        .recipe_book[["basic"]] %>%
                purrr::map(inv_CheckRecipe, .inventory_to_check_against = .inventory) %>%
                tibble::as_tibble() %>%
                tidyr::pivot_longer(cols = everything()) %>%
                dplyr::filter(value > 0) %>%
                dplyr::pull(name) %>%
                sample(1)
}
