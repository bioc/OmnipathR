% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nichenet.R
\name{nichenet_gr_network}
\alias{nichenet_gr_network}
\title{Builds a NicheNet gene regulatory network}
\usage{
nichenet_gr_network(
  omnipath = list(),
  harmonizome = list(),
  regnetwork = list(),
  htridb = list(),
  remap = list(),
  evex = list(),
  pathwaycommons = list(),
  trrust = list(),
  only_omnipath = FALSE
)
}
\arguments{
\item{omnipath}{List with paramaters to be passed to
\code{\link{nichenet_gr_network_omnipath}}.}

\item{harmonizome}{List with paramaters to be passed to
\code{\link{nichenet_gr_network_harmonizome}}.}

\item{regnetwork}{List with paramaters to be passed to
\code{\link{nichenet_gr_network_regnetwork}}.}

\item{htridb}{List with paramaters to be passed to
\code{\link{nichenet_gr_network_htridb}}.}

\item{remap}{List with paramaters to be passed to
\code{\link{nichenet_gr_network_remap}}.}

\item{evex}{List with paramaters to be passed to
\code{\link{nichenet_gr_network_evex}}.}

\item{pathwaycommons}{List with paramaters to be passed to
\code{\link{nichenet_gr_network_pathwaycommons}}.}

\item{trrust}{List with paramaters to be passed to
\code{\link{nichenet_gr_network_trrust}}.}

\item{only_omnipath}{Logical: a shortcut to use only OmniPath as network
resource.}
}
\value{
A network data frame (tibble) with gene regulatory interactions
    suitable for use with NicheNet.
}
\description{
Builds gene regulatory network prior knowledge for NicheNet using multiple
resources.
}
\examples{
# load everything with the default parameters:
gr_network <- nichenet_gr_network()

# less targets from ReMap, not using RegNetwork:
gr_network <- nichenet_gr_network(
    # I needed to disable ReMap here due to some issues
    # of one of the Bioconductor build servers
    # remap = list(top_targets = 200),
    remap = NULL,
    regnetwork = NULL,
)

# use only OmniPath:
gr_network_omnipath <- nichenet_gr_network(only_omnipath = TRUE)

}
\seealso{
\itemize{
    \item{\code{\link{nichenet_gr_network_evex}}}
    \item{\code{\link{nichenet_gr_network_harmonizome}}}
    \item{\code{\link{nichenet_gr_network_htridb}}}
    \item{\code{\link{nichenet_gr_network_omnipath}}}
    \item{\code{\link{nichenet_gr_network_pathwaycommons}}}
    \item{\code{\link{nichenet_gr_network_regnetwork}}}
    \item{\code{\link{nichenet_gr_network_remap}}}
    \item{\code{\link{nichenet_gr_network_trrust}}}
}
}
