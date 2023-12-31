% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotations.R
\name{annotation_categories}
\alias{annotation_categories}
\title{Annotation categories and resources}
\usage{
annotation_categories()
}
\value{
A data frame with resource names, annotation key labels and
    for each key all possible values.
}
\description{
A full list of annotation resources, keys and values.
}
\examples{
annot_cat <- annotation_categories()
annot_cat
# # A tibble: 46,307 x 3
#    source           label    value
#    <chr>            <chr>    <chr>
#  1 connectomeDB2020 role     ligand
#  2 connectomeDB2020 role     receptor
#  3 connectomeDB2020 location ECM
#  4 connectomeDB2020 location plasma membrane
#  5 connectomeDB2020 location secreted
#  6 KEGG-PC          pathway  Alanine, aspartate and glutamate metabolism
#  7 KEGG-PC          pathway  Amino sugar and nucleotide sugar metabolism
#  8 KEGG-PC          pathway  Aminoacyl-tRNA biosynthesis
#  9 KEGG-PC          pathway  Arachidonic acid metabolism
# 10 KEGG-PC          pathway  Arginine and proline metabolism

}
