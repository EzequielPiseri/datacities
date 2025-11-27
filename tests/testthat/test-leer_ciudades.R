test_that("leer_ciudades devuelve un tibble con al menos 8 filas", {
  df <- leer_ciudades()

  expect_s3_class(df, "tbl_df")
  expect_gte(nrow(df), 8)
})
