% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/consensuspathdb.R
\name{consensuspathdb_download}
\alias{consensuspathdb_download}
\title{Retrieves the ConsensusPathDB network}
\usage{
consensuspathdb_download(complex_max_size = 4, min_score = 0.9)
}
\arguments{
\item{complex_max_size}{Numeric: do not expand complexes with a higher
number of elements than this. ConsensusPathDB does not contain
conventional interactions but lists of participants, which might be
members of complexes. Some records include dozens of participants and
expanding them to binary interactions result thousands, sometimes
hundreds of thousands of interactions from one single record. At the
end, this process consumes >10GB of memory and results rather unusable
data, hence it is recommended to limit the complex sizes at some low
number.}

\item{min_score}{Numeric: each record in ConsensusPathDB comes with a
confidence score, expressing the amount of evidences. The default
value, a minimum score of 0.9 retains approx. the top 30 percent
of the interactions.}
}
\value{
Data frame (tibble) with interactions.
}
\description{
Compiles a table of binary interactions from ConsensusPathDB
(\url{http://cpdb.molgen.mpg.de/}) and translates the UniProtKB ACs
to Gene Symbols.
}
\examples{
\dontrun{
cpdb_data <- consensuspathdb_download(
    complex_max_size = 1,
    min_score = .99
)
nrow(cpdb_data)
# [1] 252302
colnames(cpdb_data)
# [1] "databases"  "references" "uniprot_a"    "confidence"   "record_id"
# [6] "uniprot_b"  "in_complex" "genesymbol_a" "genesymbol_b"
cpdb_data
# # A tibble: 252,302 x 9
#    databases references uniprot_a confidence record_id uniprot_b in_com
#    <chr>     <chr>      <chr>          <dbl>     <int> <chr>     <lgl>
#  1 Reactome  NA         SUMF2_HU.      1             1 SUMF1_HU. TRUE
#  2 Reactome  NA         SUMF1_HU.      1             1 SUMF2_HU. TRUE
#  3 DIP,Reac. 22210847,. STIM1_HU.      0.998         2 TRPC1_HU. TRUE
#  4 DIP,Reac. 22210847,. TRPC1_HU.      0.998         2 STIM1_HU. TRUE
# # . with 252,292 more rows, and 2 more variables: genesymbol_a <chr>,
# #   genesymbol_b <chr
}

}
