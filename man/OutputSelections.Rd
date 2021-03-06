% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/output-selections.R
\docType{class}
\name{OutputSelections}
\alias{OutputSelections}
\title{OutputSelections}
\description{
List of selected quantities selected as output for a given simulation
}
\section{Super classes}{
\code{\link[ospsuite:Printable]{ospsuite::Printable}} -> \code{\link[ospsuite:DotNetWrapper]{ospsuite::DotNetWrapper}} -> \code{OutputSelections}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{allOutputs}}{Returns all outputs defined in the selection}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-clear}{\code{OutputSelections$clear()}}
\item \href{#method-addQuantity}{\code{OutputSelections$addQuantity()}}
\item \href{#method-removeQuantity}{\code{OutputSelections$removeQuantity()}}
\item \href{#method-print}{\code{OutputSelections$print()}}
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
\if{html}{\out{<a id="method-clear"></a>}}
\if{latex}{\out{\hypertarget{method-clear}{}}}
\subsection{Method \code{clear()}}{
Removes all selected output from the selection
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{OutputSelections$clear()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-addQuantity"></a>}}
\if{latex}{\out{\hypertarget{method-addQuantity}{}}}
\subsection{Method \code{addQuantity()}}{
Adds a quantity as selected
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{OutputSelections$addQuantity(quantity)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{quantity}}{Quantity to add to the selection}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-removeQuantity"></a>}}
\if{latex}{\out{\hypertarget{method-removeQuantity}{}}}
\subsection{Method \code{removeQuantity()}}{
Removes a quantity from the selection
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{OutputSelections$removeQuantity(quantity)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{quantity}}{Quantity to remove from the selection}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-print"></a>}}
\if{latex}{\out{\hypertarget{method-print}{}}}
\subsection{Method \code{print()}}{
Print the object to the console
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{OutputSelections$print(...)}\if{html}{\out{</div>}}
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
