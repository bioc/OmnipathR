% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/id_mapping.R
\name{swissprots_only}
\alias{swissprots_only}
\title{Retain only SwissProt IDs}
\usage{
swissprots_only(uniprots, organism = 9606)
}
\arguments{
\item{uniprots}{Character vector of UniProt IDs.}

\item{organism}{Character or integer: name or identifier of the organism.}
}
\value{
Character vector with only SwissProt IDs.
}
\description{
Retain only SwissProt IDs
}
\examples{
swissprots_only(c("Q05BL1", "A0A654IBU3", "P00533"))
# [1] "P00533"

}
