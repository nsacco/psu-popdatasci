# ======================================================
#  make.R — Project bootstrap for reproducibility
#  Author: Nicolás Sacco
# ======================================================

# ---- 0. Set working directory ----
if (!require("here")) install.packages("here", dependencies = TRUE)
library(here)
cat("Working directory set to:", here(), "\n")

# ---- 1. Use a clean R session ----
if (!require("usethis")) install.packages("usethis", dependencies = TRUE)
library(usethis)
usethis::use_blank_slate()

# ---- 2. Load or install required packages ----
if (!require("pacman")) install.packages("pacman", dependencies = TRUE)
library(pacman)

pacman::p_load(
  here,
  usethis,
  tidyverse,
  readxl,
  rmarkdown,
  knitr,
  quarto
)

# ---- 3. Configure knitr defaults ----
knitr::opts_chunk$set(
  echo = TRUE,
  message = FALSE,
  warning = FALSE,
  cache = TRUE,
  fig.align = "center",
  fig.path = "figs/"
)

# ---- 4. Optional: render site or slides ----
# quarto::quarto_render()                # render full site
# quarto::quarto_render("slides/", to = "revealjs")  # render only slides

# ---- 5. Session info (for reproducibility logs) ----
cat("\nPackages loaded:\n")
print(sessionInfo())
