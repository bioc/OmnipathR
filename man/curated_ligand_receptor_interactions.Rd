% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/intercell_curated.R
\name{curated_ligand_receptor_interactions}
\alias{curated_ligand_receptor_interactions}
\title{Curated ligand-receptor interactions}
\usage{
curated_ligand_receptor_interactions(
  curated_resources = c("Guide2Pharma", "HPMR", "ICELLNET", "Kirouac2010", "CellTalkDB",
    "CellChatDB", "connectomeDB2020"),
  cellphonedb = TRUE,
  cellinker = TRUE,
  talklr = TRUE,
  signalink = TRUE,
  ...
)
}
\arguments{
\item{curated_resources}{Character vector of the resource names which
are considered to be expert curated. You can include any
post-translational network resource here, but if you include non
ligand-receptor or non curated resources, the result will not
fulfill the original intention of this function.}

\item{cellphonedb}{Logical: include the curated interactions from
\emph{CellPhoneDB} (not the whole \emph{CellPhoneDB} but a subset
of it).}

\item{cellinker}{Logical: include the curated interactions from
\emph{Cellinker} (not the whole \emph{Cellinker} but a subset of it).}

\item{talklr}{Logical: include the curated interactions from
\emph{talklr} (not the whole \emph{talklr} but a subset of it).}

\item{signalink}{Logical: include the ligand-receptor interactions
from \emph{SignaLink.} These are all expert curated.}

\item{...}{Passed to \code{\link{import_post_translational_interactions}}:
further parameters for the interaction data. Should not contain
`resources` argument as that would interfere with the downstream calls.}
}
\value{
A data frame similar to \emph{interactions} (network) data frames,
    the \emph{source} and \emph{target} partners being ligand and
    receptor, respectively.
}
\description{
The OmniPath \emph{intercell} database annotates individual proteins and
complexes, and we combine these annotations with network interactions
on the client side, using \code{\link{import_intercell_network}}. The
architecture of this database is complex, aiming to cover a broad range
of knowledge on various levels of details and confidence. We can use the
\code{\link{intercell_consensus_filter}} and
\code{\link{filter_intercell_network}} functions for automated, data
driven quality filtering, in order to enrich the cell-cell communication
network in higher confidence interactions. However, for many users, a
simple combination of the most established, expert curated ligand-receptor
resources, provided by this function, fits better their purpose.
}
\details{
Some resources are a mixture of curated and bulk imported interactions,
and sometimes it's not trivial to separate these, we take care of these
here. This function does not use the \emph{intercell} database of
OmniPath, but retrieves and filters a handful of network resources. The
returned data frame has the layout of \emph{interactions} (network) data
frames, and the \emph{source} and \emph{target} partners implicitly
correspond to \emph{ligand} and \emph{receptor.} The data frame shows
all resources and references for all interactions, but each interaction
is supported by at least one ligand-receptor resource which is supposed
to based on expert curation in a ligand-receptor context.
}
\examples{
lr <- curated_ligand_receptor_interactions()
lr

}
\seealso{
\itemize{
    \item{\code{\link{import_intercell_network}}}
    \item{\code{\link{filter_intercell_network}}}
    \item{\code{\link{annotated_network}}}
    \item{\code{\link{import_post_translational_interactions}}}
    \item{\code{\link{import_ligrecextra_interactions}}}
    \item{\code{\link{curated_ligrec_stats}}}
}
}
