% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulation-settings.R
\docType{class}
\name{SimulationSettings}
\alias{SimulationSettings}
\title{SimulationSettings}
\description{
Settings associated with a given simulation
}
\section{Super classes}{
\code{\link[ospsuite:Printable]{ospsuite::Printable}} -> \code{\link[ospsuite:DotNetWrapper]{ospsuite::DotNetWrapper}} -> \code{SimulationSettings}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{solver}}{Container containing all solver parameters for the simulation (read-only)}

\item{\code{outputSelections}}{All selected quantities (species, observers, parameters) that will be part of the simulated results}

\item{\code{outputSchema}}{OutputSchema object containing the output intervals used to generate simulation data}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-print}{\code{SimulationSettings$print()}}
}
}
\if{html}{
\out{<details open ><summary>Inherited methods</summary>}
\itemize{
\item \out{<span class="pkg-link" data-pkg="ospsuite" data-topic="DotNetWrapper" data-id="initialize">}\href{../../ospsuite/html/DotNetWrapper.html#method-initialize}{\code{ospsuite::DotNetWrapper$initialize()}}\out{</span>}
}
\out{</details>}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-print"></a>}}
\if{latex}{\out{\hypertarget{method-print}{}}}
\subsection{Method \code{print()}}{
Print the object to the console
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SimulationSettings$print(...)}\if{html}{\out{</div>}}
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
