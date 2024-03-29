% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nichenet.R
\name{nichenet_optimization}
\alias{nichenet_optimization}
\title{Optimizes NicheNet model parameters}
\usage{
nichenet_optimization(
  networks,
  expression,
  make_multi_objective_function_param = list(),
  objective_function_param = list(),
  mlrmbo_optimization_param = list()
)
}
\arguments{
\item{networks}{A list with NicheNet format signaling, ligand-receptor
and gene regulatory networks as produced by
\code{\link{nichenet_networks}}.}

\item{expression}{A list with expression data from ligand perturbation
experiments, as produced by \code{\link{nichenet_expression_data}}.}

\item{make_multi_objective_function_param}{Override parameters for
\code{smoof::makeMultiObjectiveFunction}.}

\item{objective_function_param}{Override additional arguments passed to
the objective function.}

\item{mlrmbo_optimization_param}{Override arguments for
\code{nichenetr::mlrmbo_optimization}.}
}
\value{
A result object from the function \code{mlrMBO::mbo}. Among other
    things, this contains the optimal parameter settings, the output
    corresponding to every input etc.
}
\description{
Optimize NicheNet method parameters, i.e. PageRank parameters and source
weights, basedon a collection of experiments where the effect of a ligand
on gene expression was measured.
}
\examples{
\dontrun{
networks <- nichenet_networks()
expression <- nichenet_expression_data()
optimization_results <- nichenet_optimization(networks, expression)
}

}
