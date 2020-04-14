inv_PrintInventory <- function(.inventory = test_inventory){
        test_inventory %>%
                inv_ConvertFromYAML() %>%
                .[["basic"]] %>%
                tibble::as_tibble()
}
