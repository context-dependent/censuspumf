library(f.censuspumf)

fetch_pumf("data-raw/d2021")
d <- read_data("data-raw/cpumf2021/data_donnees_2021_ind_v2.csv", "data-raw/cpumf2021/cmd-files/IPUMF_2021_final_prog_en_v2.sas")

records <- d$data
var_labels <- d$var_labels

usethis::use_data(records, overwrite = TRUE)
usethis::use_data(var_labels, overwrite = TRUE)
