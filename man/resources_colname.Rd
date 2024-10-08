% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resources.R
\name{resources_colname}
\alias{resources_colname}
\title{Name of the column with the resources}
\usage{
resources_colname(data)
}
\arguments{
\item{data}{A data frame downloaded by any \code{import_...} function
in the current package.}
}
\value{
Character: the name of the column, if any of the column names
    matches.
}
\description{
Unfortunately the column title is different across the various
query types in the OmniPath web service, so we need to guess.
}
\examples{
co <- complexes()
resources_colname(co)
# [1] "sources"

}
