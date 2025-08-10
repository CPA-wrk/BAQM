# test-print.summary.regsubsets.R
test_options <- list(scipen = 2, digits = 6, width = 90)

test_that("Weak model -  best 3 subsets (swiss)", {
  withr::local_options(test_options)
  names(swiss) <- substr(names(swiss), 1, 4) # Narrows output
  summary_regs <- summary(leaps::regsubsets(Fert ~ ., data = swiss, nbest = 3))
  expect_snapshot(print.summary.regsubsets(summary_regs))
})

test_that("Better model -  best 2 subsets (mtcars)", {
  withr::local_options(test_options)
  summary_regs <- summary(leaps::regsubsets(mpg ~ ., data = mtcars, nbest = 2))
  expect_snapshot(print.summary.regsubsets(summary_regs))
})



