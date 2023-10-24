test_that("sequence generation works", {
    result <- sequenceGeneration(20)
    expect_equal(nchar(result), 20)
})
