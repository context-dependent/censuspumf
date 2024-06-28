cpumf_total <- function(r) {
  rep_vals <- apply(r, 2, sum)
  mu <- mean(rep_vals)
  var <- var(rep_vals) / 35
  se <- sqrt(var)
  distributional::dist_student_t(60, mu = mu, sigma = se)
}

cpumf_mean <- function(x, w, r) {
  mu <- weighted.mean(x, w)
  rep_vals <- apply(r, 2, function(m) weighted.mean(x, m))
  rep_mean <- mean(rep_vals)
  rep_ssd <- sum((rep_vals - rep_mean)^2)
  rep_var <- rep_ssd / 35
  se <- sqrt(rep_var)
  distributional::dist_student_t(60, mu = mu, sigma = se)
}