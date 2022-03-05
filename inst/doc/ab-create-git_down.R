## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include=FALSE-----------------------------------------------------
library(gitdown)
library(git2r)
library(dplyr)

## -----------------------------------------------------------------------------
repo <- fake_repo()

## ---- eval = FALSE------------------------------------------------------------
#  git_down(repo, pattern = c("Tickets" = "ticket[[:digit:]]+", "Issues" = "#[[:digit:]]+"))

## -----------------------------------------------------------------------------
get_commits_tags(repo, ref = "main")

## -----------------------------------------------------------------------------
get_commits_pattern(repo, pattern = "#[[:digit:]]+", ref = "main")

## ---- eval=FALSE--------------------------------------------------------------
#  repo_pkg <- fake_repo(as.package = TRUE)
#  # List only files in R/ directory
#  create_vignette_last_modif(repo_pkg)
#  # List all files of the git repository
#  create_vignette_last_modif(repo_pkg, path = "")

## ---- echo=FALSE, results='asis'----------------------------------------------
repo_pkg <- fake_repo(as.package = TRUE)
cat(present_files(repo_pkg, path = ""))

