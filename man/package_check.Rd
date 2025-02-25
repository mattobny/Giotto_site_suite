% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/general_help.R
\name{package_check}
\alias{package_check}
\title{package_check}
\usage{
package_check(
  pkg_name,
  repository = c("CRAN", "Bioc", "github", "pip"),
  github_repo = NULL
)
}
\arguments{
\item{pkg_name}{name of package}

\item{repository}{where is the package}

\item{github_repo}{name of github repository if needed}
}
\description{
check if package is available and provide installation instruction if not available
}
\keyword{internal}
