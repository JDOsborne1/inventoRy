test_that("conversion works", {
  test_YAML <- list(
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

  test_output <- inv_ConvertFromYAML(test_YAML)
  expect_equal(as.numeric(test_output[["basic"]][["pasta"]]), 500)
  expect_equal(test_YAML, inv_ConvertToYAML(inv_ConvertFromYAML(test_YAML)))

})

