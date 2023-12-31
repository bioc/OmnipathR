% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/intercell.R
\name{get_intercell_resources}
\alias{get_intercell_resources}
\title{Retrieves a list of intercellular communication resources available in
OmniPath}
\usage{
get_intercell_resources(dataset = NULL)
}
\arguments{
\item{dataset}{ignored at this query type}
}
\value{
character vector with the names of the databases
}
\description{
Retrieves a list of the databases from
\url{https://omnipath.org/intercell}.
}
\examples{
get_intercell_resources()

}
\seealso{
\itemize{
    \item{\code{\link{get_resources}}}
    \item{\code{\link{import_omnipath_intercell}}}
}
}
