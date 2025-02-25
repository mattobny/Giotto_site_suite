% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clustering.R
\name{doLeidenCluster}
\alias{doLeidenCluster}
\title{doLeidenCluster}
\usage{
doLeidenCluster(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  name = "leiden_clus",
  nn_network_to_use = "sNN",
  network_name = "sNN.pca",
  python_path = NULL,
  resolution = 1,
  weight_col = "weight",
  partition_type = c("RBConfigurationVertexPartition", "ModularityVertexPartition"),
  init_membership = NULL,
  n_iterations = 1000,
  return_gobject = TRUE,
  set_seed = T,
  seed_number = 1234
)
}
\arguments{
\item{gobject}{giotto object}

\item{spat_unit}{spatial unit}

\item{feat_type}{feature type}

\item{name}{name for cluster}

\item{nn_network_to_use}{type of NN network to use (kNN vs sNN)}

\item{network_name}{name of NN network to use}

\item{python_path}{specify specific path to python if required}

\item{resolution}{resolution}

\item{weight_col}{weight column to use for edges}

\item{partition_type}{The type of partition to use for optimisation.}

\item{init_membership}{initial membership of cells for the partition}

\item{n_iterations}{number of interations to run the Leiden algorithm.
If the number of iterations is negative, the Leiden algorithm is run until
an iteration in which there was no improvement.}

\item{return_gobject}{boolean: return giotto object (default = TRUE)}

\item{set_seed}{set seed}

\item{seed_number}{number for seed}
}
\value{
giotto object with new clusters appended to cell metadata
}
\description{
cluster cells using a NN-network and the Leiden community detection algorithm
}
\details{
This function is a wrapper for the Leiden algorithm implemented in python,
which can detect communities in graphs of millions of nodes (cells),
as long as they can fit in memory. See the \url{https://github.com/vtraag/leidenalg}{leidenalg}
github page or the \url{https://leidenalg.readthedocs.io/en/stable/index.html}{readthedocs}
page for more information.

Partition types available and information:
\itemize{
  \item{RBConfigurationVertexPartition: }{Implements Reichardt and Bornholdt’s Potts model
   with a configuration null model. This quality function is well-defined only for positive edge weights.
    This quality function uses a linear resolution parameter.}
  \item{ModularityVertexPartition: }{Implements modularity.
   This quality function is well-defined only for positive edge weights. It does \emph{not} use the resolution parameter}
}

Set \emph{weight_col = NULL} to give equal weight (=1) to each edge.
}
