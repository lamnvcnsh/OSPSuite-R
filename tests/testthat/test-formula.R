context("Formula")

sim <- loadTestSimulation("S1")
distributedFormula <- getParameter("Organism|Liver|Volume", sim)$formula
constantFormula <- getParameter("Organism|Age", sim)$formula
explicitFormula <- getParameter("Organism|Liver|Plasma|Volume", sim)$formula

test_that("It can print an explicit  formula", {
  expect_error(capture.output(constantFormula$print()), NA)
})

test_that("It can print a constant formula", {
  expect_error(capture.output(explicitFormula$print()), NA)
})

test_that("It can print a distributed formula", {
  expect_error(capture.output(distributedFormula$print()), NA)
})
