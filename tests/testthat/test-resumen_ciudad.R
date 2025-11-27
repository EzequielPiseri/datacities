test_that("resumen_ciudad funciona con ciudad valida", {
  df <- resumen_ciudad("Rosario")

  expect_s3_class(df, "tbl_df")
  expect_equal(nrow(df), 1)

  expect_equal(
    df$densidad,
    df$poblacion / df$superficie
  )
})
