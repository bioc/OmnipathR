% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/options.R
\name{reset_config}
\alias{reset_config}
\alias{omnipath_reset_config}
\title{Restore the built-in default values of all config parameters of a package}
\usage{
reset_config(save = NULL, reset_all = FALSE, pkg = "OmnipathR")

omnipath_reset_config(...)
}
\arguments{
\item{save}{If a path, the restored config will be also saved
to this file. If TRUE, the config will be saved to the current default
config path (see \code{\link{omnipath_config_path}}).}

\item{reset_all}{Reset to their defaults also the options already set in
the R options.}

\item{pkg}{Character: name of a package}

\item{...}{Ignored.}
}
\value{
The config as a list.
}
\description{
Restore the built-in default values of all config parameters of a package

Restore the built-in default values of all config parameters of OmnipathR
}
\examples{
\dontrun{
# restore the defaults and write them to the default config file:
omnipath_reset_config()
omnipath_save_config()
}

}
\seealso{
\code{\link{omnipath_load_config}, \link{omnipath_save_config}}
}
