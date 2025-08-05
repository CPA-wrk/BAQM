sumry.regsubsets <- function(regs_object, ...) {
  best_sum <- summary(regs_object, ...)
  best_sum$see <-sqrt(best_sum$rss /(
    best_sum$obj$nn - as.numeric(rownames(best_sum$which)) - 1))
  data.frame(
    `k___best` = rownames(best_sum$outmat),
    best_sum[c("rsq", "adjr2", "see", "cp")],
    best_sum$outmat,
    row.names = NULL
  )
}
