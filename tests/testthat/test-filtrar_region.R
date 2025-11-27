test_that("filtrar_region funciona con region valida", {
  df <- filtrar_region("norte")

  expect_s3_class(df, "tbl_df")
  expect_true(all(df$region == "norte"))
})

test_that("filtrar_region falla con region invalida", {
  expect_error(filtrar_region("patagonia"))
})
