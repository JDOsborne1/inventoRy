## code to prepare `test_recipes` dataset goes here

test_recipes <- list(
        "basic" = list(
                "tuna pasta bake" = list(
                        "pasta" = list(
                                "value" = 200
                                , "unit" = "g"
                        )
                )
        )
)

usethis::use_data(test_recipes)
