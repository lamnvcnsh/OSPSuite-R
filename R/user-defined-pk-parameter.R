#' @title UserDefinedPKParameter
#' @docType class
#' @description  Definition of a user defined PKParameter that can be calculated on top of the standard PK Parameters
UserDefinedPKParameter <- R6::R6Class("UserDefinedPKParameter",
  inherit = PKParameter,
  active = list(
    #' @field startTime Start time for the calculation of the PK-Parameter.
    #' If not specified, the time will start at the first time point of the simulation (optional)
    startTime = function(value) {
      private$wrapProperty("StartTime", value)
    },
    #' @field startTimeOffset Offset in [min] to apply to the start time (0 by default).
    startTimeOffset = function(value) {
      private$wrapProperty("StartTimeOffset", value)
    },
    #' @field endTime End time for the calculation of the PK-Parameter.
    #' If not specified, the time will end at the last time point of the simulation (optional)
    endTime = function(value) {
      private$wrapProperty("EndTime", value)
    },
    #' @field endTimeOffset Offset in [min] to apply to the end time (0 by default).
    endTimeOffset = function(value) {
      private$wrapProperty("EndTimeOffset", value)
    },
    #' @field startApplicationIndex 1-based Index of the appplication to use to determine the start time for the calculation of the PK-Parameter.
    #' If not specified, the time will start at the first time point of the simulation (optional)
    startApplicationIndex = function(value) {
      private$wrapIndexProperty("StartApplicationIndex", value)
    },
    #' @field endApplicationIndex 1-based Index of the appplication to use to determine the end time for the calculation of the PK-Parameter.
    #' If not specified, the time will end at the last time point of the simulation (optional)
    endApplicationIndex = function(value) {
      private$wrapIndexProperty("EndApplicationIndex", value)
    },
    #' @field normalizationFactor Factor to use to normalized the calculated PK-Parameter. (typically DrugMass, Dose, Dose per bodyweight).
    #' It is the responsability of the caller to ensure that the value is in the correct unit. (optional)
    normalizationFactor = function(value) {
      private$wrapProperty("NormalizationFactor", value)
    },
    #' @field concentrationThreshold Used in conjonction with the \code{threshold} parameter type.
    #' If defined, the time at which this concentration was reached will be calculated
    concentrationThreshold = function(value) {
      private$wrapProperty("ConcentrationThreshold", value)
    },
    #' @field standardPKParameter Based parameter to use to perform the PK-Analysis calculation.
    #' See \code{StandardPKParameter} enum for all possible pk parameters
    standardPKParameter = function(value) {
      private$wrapIntegerProperty("StandardPKParameter", value)
    }
  ),
  public = list(
    #' @description
    #' Print the object to the console
    #' @param ... Rest arguments.
    print = function(...) {
      private$printClass()
      private$printLine("Name", self$name)
      private$printLine("DisplayName", self$displayName)
      private$printLine("Dimension", self$dimension)
      private$printLine("DisplayUnit", self$displayUnit)
      private$printLine("StandardPKParameter", getEnumKey(StandardPKParameter, self$standardPKParameter))
      private$printLine("StartTime", self$startTime)
      private$printLine("StartTimeOffset", self$startTimeOffset)
      private$printLine("EndTime", self$endTime)
      private$printLine("EndTimeOffset", self$endTimeOffset)
      private$printLine("StartApplicationIndex", self$startApplicationIndex)
      private$printLine("EndApplicationIndex", self$endApplicationIndex)
      private$printLine("NormalizationFactor", self$normalizationFactor)
      private$printLine("ConcentrationThreshold", self$concentrationThreshold)
      invisible(self)
    }
  )
)
