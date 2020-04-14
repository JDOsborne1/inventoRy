test_that("multiplication works", {
        # Expect the existance of a function to change the pairs in the database, updating the quantity
  expect_true(exists("inv_ChangePairs"))
        # Expect the existance of a function to import a bulk set of item quantity pairs
  expect_true(exists("inv_ImportPairsBulk"))
        # Expect the existance of a function to import a set of required quantities in a recipe, along with instructions
  expect_true(exists("inv_ImportRecipe"))
        # Expect the existance of a function to display the inventory
  expect_true(exists("inv_PrintInventory"))
})