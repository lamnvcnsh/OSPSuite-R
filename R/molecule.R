#' @title Molecule
#'
#' @description A molecule defined in a compartment of the system
#'
#' @details  Derived from \link{Quantity}, please see base class documentation.
#'
#' @docType class
#' @name Molecule
#'
#' @keywords Molecule
#' @format NULL
Molecule <- R6::R6Class(
  "Molecule",
  inherit = Quantity,
  active = list(
    value = function(value) {
      if (missing(value)) {
        ifNotNull(private$.startValue, private$.startValue$value, super$value)
      } else {
        if (is.null(private$.startValue)) {
          super$value <- value
        } else {
          private$.startValue$value <- value
        }
      }
    }
  ),
  private = list(
    .startValue = NULL
  ),
  public = list(
    initialize = function(ref) {
      super$initialize(ref)
      # Is only set for a molecule representing a concenctration based molecule (e.g unit is umol)
      private$.startValue <- getParameter("Start value", self, stopIfNotFound = FALSE)
    },

    print = function(...) {
      private$printClass()
      private$printLine("Path", self$path)
      initialStartValue <- private$.startValue %||% self
      initialStartValue$printQuantityValue("Initial Value")
      invisible(self)
    }
  )
)