#' Loads a population from a csv file and returns the population.
#'
#' @param csvPopulationFile Full path of csv population file to load.
#'
#' @examples
#' csvPath <- system.file("extdata", "pop.csv", package = "ospsuite")
#'
#' population <- loadPopulation(csvPath)
#' @export
loadPopulation <- function(csvPopulationFile) {
  validateIsString(csvPopulationFile)
  csvPopulationFile <- expandPath(csvPopulationFile)
  populationTask <- getNetTask("PopulationTask")
  population <- rClr::clrCall(populationTask, "ImportPopulation", csvPopulationFile)
  Population$new(population)
}

#' Loads a population from the \code{csvPopulationFile} and split the loaded population according to
#' \code{numberOfCores}.
#' @param csvPopulationFile Full path of csv population file to split.
#' @param numberOfCores Number of cores used for parallelisation computing. The population will be split accross all cores.
#' @param outputFolder Folder where all split files will be created
#' @param outputFileName File names will be constructed using this parameter concatenated with the core index.
#' @return A tring vector containing the full path of the population files created. Note that there might be less files than cores
#'
#' @examples
#' csvPath <- system.file("extdata", "pop.csv", package = "ospsuite")
#'
#' # Split the population in up to 3 files, saved in the temp folder
#' splitFiles <- splitPopulationFile(csvPath, 3, tempdir(), "PopFile")
#' @export
splitPopulationFile <- function(csvPopulationFile, numberOfCores, outputFolder, outputFileName) {
  validateIsString(csvPopulationFile)
  validateIsNumeric(numberOfCores)
  validateIsString(outputFolder)
  validateIsString(outputFileName)
  csvPopulationFile <- expandPath(csvPopulationFile)
  outputFileName <- enc2utf8(outputFileName)
  populationTask <- getNetTask("PopulationTask")
  rClr::clrCall(populationTask, "SplitPopulation", csvPopulationFile, as.integer(numberOfCores), outputFolder, outputFileName)
}


#' @title Creates a data.frame containing one column for each parameter defined in the population
#'
#' @param population Population to convert to data frame (typically imported from file using \code{loadPopulation})
#'
#' @examples
#' csvPath <- system.file("extdata", "pop.csv", package = "ospsuite")
#'
#' population <- loadPopulation(csvPath)
#' df <- populationAsDataFrame(population)
#' @export
populationAsDataFrame <- function(population) {
  validateIsOfType(population, Population)
  columns <- list()
  columns$IndividualId <- population$allIndividualIds

  for (covariateName in population$allCovariateNames) {
    columns[[covariateName]] <- population$getCovariateValues(covariateName)
  }

  for (parameterPath in population$allParameterPaths) {
    columns[[parameterPath]] <- population$getParameterValues(parameterPath)
  }

  data.frame(columns, stringsAsFactors = FALSE, check.names = FALSE)
}
