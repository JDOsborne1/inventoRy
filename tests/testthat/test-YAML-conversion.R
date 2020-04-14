test_that("conversion works", {

  test_output <- inv_ConvertFromYAML(yaml_list_in = test_inventory)

  expect_equal(as.numeric(test_output[["basic"]][["pasta"]]), 500)

  expect_equal(test_inventory, inv_ConvertToYAML(inv_ConvertFromYAML(test_inventory)))

})

