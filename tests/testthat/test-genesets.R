
t1 <- available_genesets()
t2 <- files <- list.files(system.file("data", package = "genesets"))

test_that("Return all gene sets", {
  expect_equal(length(t1), length(t2))
})

