inv_PrintInventory <- function(.inventory = inv_ConnectInventory()){
        test_inventory %>%
                inv_ConvertFromYAML() %>%
                .[["basic"]] %>%
                tibble::as_tibble()
}
