## code to prepare `test_recipes` dataset goes here

test_recipes <- list(
        "basic" = list(
                "tuna pasta bake" = list(
                        "ingredients" = list(

                        "pasta" = list(
                                "value" = 400
                                , "unit" = "g"
                        )
                        , "tuna" = list(
                                "value" = 400
                                , "unit" = "g"
                        )
                        , "cheddar" = list(
                                "value" = 100
                                , "unit" = "g"
                        )
                        )
                        , "Process" = list(
                                "Preheat the oven to 200C Fan / Gas Mark 7"
                                , "Boil the Kettle and fill a large saucepan"
                                , "etc add more"
                        )
                )
                , "orange pasta (test obvs)" = list(
                        "ingredients" = list(
                                "pasta" = list(
                                        "value" = 30
                                        , "unit" = "g"
                                )
                                , "oranges" = list(
                                        "value" = 1
                                        , "unit" = "count"
                                        )
                        )
                        , "Process" = list(
                                "etc add more"
                        )
                )
        )
)

usethis::use_data(test_recipes)
