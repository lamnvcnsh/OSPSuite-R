% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parameter-range.R
\docType{class}
\name{ParameterRange}
\alias{ParameterRange}
\title{ParameterRange}
\description{
A parameter rnage typically used in the definition of \code{PopulationCharacteristics} covariates (Height, Weight etc...)
}
\section{Super classes}{
\code{\link[ospsuite:Printable]{ospsuite::Printable}} -> \code{\link[ospsuite:DotNetWrapper]{ospsuite::DotNetWrapper}} -> \code{ParameterRange}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{min}}{Minimum value for the parameter range}

\item{\code{max}}{Maximum value for the parameter range}

\item{\code{unit}}{Unit in which the value is defined}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{ParameterRange$new()}}
\item \href{#method-print}{\code{ParameterRange$print()}}
\item \href{#method-printValue}{\code{ParameterRange$printValue()}}
\item \href{#method-clone}{\code{ParameterRange$clone()}}
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
\if{html}{\out{<div class="r">}}\preformatted{ParameterRange$new(ref = NULL, min = NULL, max = NULL, unit = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{ref}}{Optional .NET reference object. If not defined, a new instance will be created}

\item{\code{min}}{Optional minimum value for the range}

\item{\code{max}}{Optional minimum value for the range}

\item{\code{unit}}{Optional unit of the specified min and max}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new \code{ParameterRange} object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-print"></a>}}
\if{latex}{\out{\hypertarget{method-print}{}}}
\subsection{Method \code{print()}}{
Print the object to the console
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ParameterRange$print(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{Rest arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-printValue"></a>}}
\if{latex}{\out{\hypertarget{method-printValue}{}}}
\subsection{Method \code{printValue()}}{
Print the the parameter in one line
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ParameterRange$printValue(caption)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{caption}}{Caption to display before the value of the parameter}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ParameterRange$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
