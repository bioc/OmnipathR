% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enz_sub.R
\name{enzsub_resources}
\alias{enzsub_resources}
\alias{get_enzsub_resources}
\title{Retrieves a list of enzyme-substrate resources available in OmniPath}
\usage{
enzsub_resources(dataset = NULL)
}
\arguments{
\item{dataset}{ignored for this query type}
}
\value{
character vector with the names of the enzyme-substrate resources
}
\description{
Get the names of the enzyme-substrate relationship resources available
in \url{https://omnipathdb.org/enzsub}
}
\examples{
enzsub_resources()

}
\seealso{
\itemize{
    \item{\code{\link{resources}}}
    \item{\code{\link{enzyme_substrate}}}
}
}
