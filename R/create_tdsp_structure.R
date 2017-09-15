#' Copy the Azure TDSP project structure.
#'
#' Copies the [TDSP template](https://github.com/Azure/Azure-TDSP-ProjectTemplate) to a new folder.
#'
#' @param path The path where to copy the TDSP template.
#'
#' @export
#'
#' @examples
#' where <- file.path(tempdir(), "TDSP")
#' create_tdsp_structure(where)
create_tdsp_structure <- function(path = ".") {
  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)
  # locate template
  template <- system.file("Azure-TDSP-ProjectTemplate", package = "TDSP")
  # copy folders
  dirs <- list.dirs(template, recursive = FALSE, full.names = TRUE)
  file.copy(from = dirs, to = path, recursive = TRUE)
  # copy files
  files <- list.files(template, recursive = FALSE, full.names = TRUE)
  file.copy(from = files, to = path, recursive = TRUE)
  return()
}
