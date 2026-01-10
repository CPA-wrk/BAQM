# test-print.sumry.regsubsets.R
test_options <- list(scipen = 0, digits = 4, width = 90)

test_that("Weak model -  best 3 subsets (swiss)", {
  withr::local_options(test_options)
  names(swiss) <- substr(names(swiss), 1, 4) # Narrows output
  sumry_regs <- sumry(leaps::regsubsets(Fert ~ ., data = swiss, nbest = 3))
  expect_snapshot(print.sumry.regsubsets(sumry_regs))
})

test_that("Better model -  best 2 subsets (mtcars)", {
  withr::local_options(test_options)
  sumry_regs <- sumry(leaps::regsubsets(mpg ~ ., data = mtcars, nbest = 2))
  expect_snapshot(print.sumry.regsubsets(sumry_regs))
})



