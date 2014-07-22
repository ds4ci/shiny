run_a_b_test_develope.R

abt_df <- data.frame(Mailed=c(10000, 1000), Sold=c(1000, 70))
pt <- prop.test(abt_df[, 2], abt_df[, 1])
pt
