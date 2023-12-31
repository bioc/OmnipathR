% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inbiomap.R
\name{inbiomap_raw}
\alias{inbiomap_raw}
\title{Downloads network data from InWeb InBioMap}
\usage{
inbiomap_raw(curl_verbose = FALSE)
}
\arguments{
\item{curl_verbose}{Logical. Perform CURL requests in verbose mode for
debugging purposes.}
}
\value{
A data frame (tibble) with the extracted interaction table.
}
\description{
Downloads the data from
\url{https://inbio-discover.com/map.html#downloads} in tar.gz format,
extracts the PSI MITAB table and returns it as a data frame.
}
\examples{
\dontrun{
inbiomap_psimitab <- inbiomap_raw()
}
}
\seealso{
\code{\link{inbiomap_download}}
}
