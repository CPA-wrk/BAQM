# test-print.summary.regsubsets.R
test_options <- list(scipen = 2, digits = 6, width = 85)

test_that("Weak model -  best 3 subsets (swiss)", {
  withr::local_options(test_options)
  names(swiss) <- substr(names(swiss), 1, 4) # Narrows output
  regs <- leaps::regsubsets(Fert ~ ., data = swiss, nbest = 3)
  expect_snapshot(summary(regs))
})

test_that("Better model -  best 2 subsets (mtcars)", {
  withr::local_options(test_options)
  expect_snapshot(summary(leaps::regsubsets(mpg ~ ., data = mtcars, nbest = 2)))
})



