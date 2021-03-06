% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sensitivity-analysis-run-options.R
\docType{class}
\name{SensitivityAnalysisRunOptions}
\alias{SensitivityAnalysisRunOptions}
\title{SensitivityAnalysisRunOptions}
\description{
Options to be passed to the sensitivity analysis engine
}
\section{Super classes}{
\code{\link[ospsuite:Printable]{ospsuite::Printable}} -> \code{\link[ospsuite:DotNetWrapper]{ospsuite::DotNetWrapper}} -> \code{SensitivityAnalysisRunOptions}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{numberOfCores}}{(Maximal) number of cores to be used. Per default set to \code{getOSPSuiteSetting("numberOfCores")}.}

\item{\code{showProgress}}{Specifies whether progress bar should be shown during sensitivity analysis run. Default is \code{getOSPSuiteSetting("showProgress")}.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{SensitivityAnalysisRunOptions$new()}}
\item \href{#method-print}{\code{SensitivityAnalysisRunOptions$print()}}
}
}
\if{html}{
\out{<details open ><summary>Inherited methods</summary>}
\itemize{
}
\out{</details>}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new instance of the class
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SensitivityAnalysisRunOptions$new(numberOfCores = NULL, showProgress = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{numberOfCores}}{Number of cores to use for the simulation. Default value is \code{getOSPSuiteSetting("numberOfCores")}}

\item{\code{showProgress}}{Should a progress information be displayed. Default value is \code{getOSPSuiteSetting("showProgress")}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new \code{SensitivityAnalysisRunOptions} object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-print"></a>}}
\if{latex}{\out{\hypertarget{method-print}{}}}
\subsection{Method \code{print()}}{
Print the object to the console
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SensitivityAnalysisRunOptions$print(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{Rest arguments.}
}
\if{html}{\out{</div>}}
}
}
}
