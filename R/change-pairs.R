inv_ChangePairs <- function(pair_changes, .inventory = inv_ConnectInventory(), .history = inv_ConnectHistory() ){
        parsed_inventory <- inv_ConvertFromYAML(.inventory)



        for (i in names(pair_changes)){
                parsed_inventory[["basic"]][[i]] <- parsed_inventory[["basic"]][[i]] + pair_changes[[i]]
        }

        for(i in names(pair_changes)){
                new_history <- tibble::tribble(~object, ~quantity, ~unit,  ~time
                                               , i, as.numeric(parsed_inventory[["basic"]][[i]]), units::deparse_unit(parsed_inventory[["basic"]][[i]]), lubridate::as_datetime(Sys.time())
                )
                .history <- dplyr::bind_rows(.history, new_history)
        }
        inv_ConnectInventory(inv_ConvertToYAML(parsed_inventory))
        inv_ConnectHistory(.history)

}

