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
        )
)

usethis::use_data(test_inventory)
