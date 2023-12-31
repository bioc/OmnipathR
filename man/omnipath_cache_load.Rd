% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cache.R
\name{omnipath_cache_load}
\alias{omnipath_cache_load}
\title{Loads an R object from the cache}
\usage{
omnipath_cache_load(
  key = NULL,
  version = NULL,
  url = NULL,
  post = NULL,
  payload = NULL
)
}
\arguments{
\item{key}{Key of the cache item}

\item{version}{Version of the cache item. If does not exist or NULL, the
latest version will be retrieved}

\item{url}{URL of the downloaded resource}

\item{post}{HTTP POST parameters as a list}

\item{payload}{HTTP data payload}
}
\value{
Object loaded from the cache RDS file.
}
\description{
Loads the object from RDS format.
}
\examples{
url <- paste0(
    'https://omnipathdb.org/intercell?resources=Adhesome,Almen2009,',
    'Baccin2019,CSPA,CellChatDB&license=academic'
)
result <- read.delim(url, sep = '\t')
omnipath_cache_save(result, url = url)
# works only if you have already this item in the cache
intercell_data <- omnipath_cache_load(url = url)
class(intercell_data)
# [1] "data.frame"
nrow(intercell_data)
# [1] 16622
attr(intercell_data, 'origin')
# [1] "cache"

# basic example of saving and loading to and from the cache:
bioc_url <- 'https://bioconductor.org/'
bioc_html <- readChar(url(bioc_url), nchars = 99999)
omnipath_cache_save(bioc_html, url = bioc_url)
bioc_html <- omnipath_cache_load(url = bioc_url)

}
\seealso{
\code{\link{omnipath_cache_save}}
}
