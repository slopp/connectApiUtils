
#' Copy Template
#'
#' @param dir Directory to copy the template to
#'
#' @return
#' @export
copy_template <- function(dir = getwd()) {
  from <- system.file('cs_rep_template.Rmd', package = "connectApiUtils")
  success <- file.copy(from, dir, overwrite = TRUE)
  if (!success) {
    stop(sprintf('Copying template to %s failed.', dir))
  }

  from <- system.file('styles_rep.css', package = "connectApiUtils")
  success <- file.copy(from, dir, overwrite = TRUE)
  if (!success) {
    stop(sprintf('Copying css to %s failed.', dir))
  }

  normalizePath(sprintf('%s/cs_rep_template.Rmd', dir))
}
