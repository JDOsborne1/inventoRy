test_that("recipe selection works", {
  expect_true(inv_CheckRecipe(test_recipes$basic$`orange pasta (test obvs)`, test_inventory))
  expect_false(inv_CheckRecipe(test_recipes$basic$`tuna pasta bake`, test_inventory))
})
