## code to prepare `test_history` dataset goes here


test_history <- tibble::tribble(~object, ~quantity, ~unit,  ~time
                                , "pasta", "1200", "g",  lubridate::ymd_hm("2020-01-01T12:00Z")
                                )



usethis::use_data(test_history)
