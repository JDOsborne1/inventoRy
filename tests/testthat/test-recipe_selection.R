test_that("recipe selection works", {
  expect_true(inv_CheckRecipe(test_recipes$basic$`orange pasta (test obvs)` , test_inventory) >0 )
  expect_false(inv_CheckRecipe(test_recipes$basic$`tuna pasta bake` , test_inventory) > 0)

 expect_length(inv_SelectRecipe(), 1)

  })
