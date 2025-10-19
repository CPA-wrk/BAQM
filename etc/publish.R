#
# From https://github.com/CPA-wrk/BAQM/issues/1
#
# git pull
urlchecker::url_check()
devtools::build_readme()
devtools::check(remote = TRUE, manual = TRUE)
devtools::check_win_devel()
# git push





library(Microsoft365R)
odb <- get_business_onedrive()
### --- Will authenticate in browser via MSFT Authenticator
# Folder CPA_wrk/R
if (!dir.exists("etc")) dir.create("etc")
if (Sys.info()["sysname"] == "Windows") {
  pkg_win <- odb$get_item("CPA_wrk/R/packages/BAQM_0.1.0.zip")$create_share_link()
  download.file(pkg_win, destfile = "etc/BAQM_0.1.0.zip", mode = "wb")
  install.packages("etc/BAQM_0.1.0.zip", repos = NULL)
} else {
  pkg_mac <- odb$get_item("CPA_wrk/R/packages/BAQM_0.1.0.tgz")$create_share_link()
  pkg_mac <- odb$create_share_link("CPA_wrk/R/packages/BAQM_0.1.0.tgz")
  download.file(pkg_mac, destfile = "etc/BAQM_0.1.0.tgz", mode = "wb")
  install.packages("etc/BAQM_0.1.0.tgz", repos = NULL)
}
pkg_mac <- "https://centerpointanalytics-my.sharepoint.com/:u:/p/plert/EanU7M9lPjxGgwSEQ-55k98BgUEX5xRE0Gk9SQVtpl8QsA?e=Wera4Z"

pkg_mac <- "https://centerpointanalytics-my.sharepoint.com/:u:/p/plert/EanU7M9lPjxGgwSEQ-55k98BgUEX5xRE0Gk9SQVtpl8QsA?e=FOjSw2"
curl::curl_download(pkg_mac, destfile = "etc/BAQM_0.1.0.tgz", mode = "wb")
install.packages("etc/BAQM_0.1.0.tgz", repos = NULL)

pkgs <- file.path(getwd(), pkgs)

pkgs <- "/Users/peter/Library/CloudStorage/OneDrive-centerpointanalytics.com/CPA_wrk/R/BAQM/etc/BAQM_0.1.1.tgz"
install.packages(pkgs, repos = NULL, type = "binary")


load_all()
check()
pkgs <- pkgbuild::build(path = ".", dest_path = "etc", binary = TRUE)

# <stage & commit>

use_pkgdown_github_pages()

cat_all <- function(path = "R", all = "R/all.R") {
  files <- grep(list.files(path, pattern = "\\.R$", full.names = TRUE),
                pattern = all, invert = TRUE, value = TRUE)
  for (f in files) {
    cat("\n###", f, "\n", file = all, append = TRUE)
    cat(readLines(f), sep = "\n", file = all, append = TRUE)
  }
}
cat_all()
