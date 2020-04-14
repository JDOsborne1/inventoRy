## code to prepare `test_inventory` dataset goes here

test_inventory <- list(
        "basic" = list(
                "pasta" = list(
                        "value" = 500
                        , "unit" = "g"
                )
                , "oranges" = list(
                        "value" = 5
                        , "unit" = "count"
                )
                , "tuna" = list(
                        "value" = 0
                        , "unit" = "g"
                        )
                , "cheddar" = list(
                        "value" = 0
                        , "unit" = "g"
                )
        )
)

usethis::use_data(test_inventory)
