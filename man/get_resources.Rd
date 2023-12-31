% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resources.R
\name{get_resources}
\alias{get_resources}
\title{Retrieve the available resources for a given query type}
\usage{
get_resources(query_type, datasets = NULL, generic_categories = NULL)
}
\arguments{
\item{query_type}{one of the query types `interactions`, `enz_sub`,
`complexes`, `annotations` or `intercell`}

\item{datasets}{currently within the `interactions` query type only,
multiple datasets are available: `omnipath`, `kinaseextra`,
`pathwayextra`, `ligrecextra`, `dorothea`, `tf_target`, `tf_mirna`,
`mirnatarget` and `lncrna_mrna`.}

\item{generic_categories}{for the `intercell` query type, restrict the
search for some generic categories e.g. `ligand` or `receptor`.}
}
\value{
a character vector with resource names
}
\description{
Collects the names of the resources available in OmniPath for a certain
query type and optionally for a dataset within that.
}
\examples{
get_resources(query_type = 'interactions')
}
