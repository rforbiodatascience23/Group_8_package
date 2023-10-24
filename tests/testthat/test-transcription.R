test_that("multiplication works", {
  input <- "ATCGATCG"
  result <- transcription(input)
  expect_equal(nchar(result), 8)
})
