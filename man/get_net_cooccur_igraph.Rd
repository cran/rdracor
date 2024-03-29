% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/net.R
\name{get_net_cooccur_igraph}
\alias{get_net_cooccur_igraph}
\alias{plot.cooccur_igraph}
\alias{summary.cooccur_igraph}
\title{Retrieve an igraph co-occurrence network for a play}
\usage{
get_net_cooccur_igraph(play = NULL, corpus = NULL, as_igraph = FALSE)

\method{plot}{cooccur_igraph}(
  x,
  layout = igraph::layout_with_kk,
  vertex.label = label_cooccur_igraph(x),
  gender_colors = c(MALE = "#0073C2", FEMALE = "#EFC000", UNKNOWN = "#99979D"),
  vertex_size_metric = c("numOfWords", "numOfScenes", "numOfSpeechActs", "degree",
    "weightedDegree", "closeness", "betweenness", "eigenvector"),
  vertex_size_scale = c(5, 20),
  edge_size_scale = c(0.5, 4),
  vertex_label_adjust = TRUE,
  vertex.label.color = "#03070f",
  vertex.label.family = "sans",
  vertex.label.font = 2L,
  vertex.frame.color = "white",
  ...
)

\method{summary}{cooccur_igraph}(object, ...)
}
\arguments{
\item{play}{Character, name of a play (you can find all play names in
\code{"playName"} column within an object returned by
\code{\link{get_dracor}}). Character vector (longer than 1) is not
supported.}

\item{corpus}{Character, name of the corpus (you can find all corpus names in
\code{name} column within an object returned by
\code{\link{get_dracor_meta}}).}

\item{as_igraph}{Logical, if \code{TRUE}, returns simple igraph object
instead of \code{cooccur_igraph}. \code{FALSE} by default.}

\item{x}{A \code{cooccur_igraph} object to plot.}

\item{layout}{Function, an algorithm used for the graph layout. See
\link[igraph]{igraph.plotting}.}

\item{vertex.label}{Character vector of character names. By default,
function \code{\link{label_cooccur_igraph}} is used to avoid overplotting on
large graphs.}

\item{gender_colors}{Named vector with 3 values with colors for
MALE, FEMALE and UNKNOWN respectively. Set \code{NULL} to use the default
igraph colors. If you set parameter \code{vertex.color} (see
\link[igraph]{igraph.plotting}), \code{gender_colors} will be ignored.}

\item{vertex_size_metric}{Character value, one of \code{"numOfWords"},
\code{"numOfScenes"}, \code{"numOfSpeechActs"}, \code{"degree"},
\code{"weightedDegree"}, \code{"closeness"}, \code{"betweenness"},
\code{"eigenvector"} that will be used as a metric for vertex size.
Alternatively, you can specify vertex size by yourself using
parameter \code{vertex.size}(see \link[igraph]{igraph.plotting}), in this
case parameter \code{vertex_size_metric} is ignored.}

\item{vertex_size_scale}{Numeric vector with two values. The first number is
for mean size of node(vertex), the second one is for node size variance. If
you specify vertex size by yourself using parameter
\code{vertex.size}(see \link[igraph]{igraph.plotting}),
\code{vertex_size_scale} is ignored.}

\item{edge_size_scale}{Numeric vector with two values. The first number
defines average size of edges, the second number defines edges size variance.
If you specify edges size by yourself using parameter
\code{edge.width}(see \link[igraph]{igraph.plotting}),
\code{edge_size_scale} is ignored.}

\item{vertex_label_adjust}{Logical. If \code{TRUE}, labels positions
are moved to the top of the respectives nodes. If \code{FALSE}, labels
are placed in the nodes centers. \code{TRUE} by default. If you set parameter
\code{vertex.label.dist}(see \link[igraph]{igraph.plotting}) by yourself,
\code{vertex_label_adjust} is ignored.}

\item{vertex.label.color}{See \link[igraph]{igraph.plotting}.}

\item{vertex.label.family}{See \link[igraph]{igraph.plotting}.}

\item{vertex.label.font}{See \link[igraph]{igraph.plotting}.}

\item{vertex.frame.color}{See \link[igraph]{igraph.plotting}.}

\item{...}{Other arguments to be passed to \link[igraph]{plot.igraph}}

\item{object}{An object of class \code{cooccur_igraph}.}
}
\value{
\code{cooccur_igraph} — an object that inherits \code{igraph} and can be
treated as such.
}
\description{
\code{get_net_cooccur_igraph()} returns a play network, given play and corpus
names. Play network is constructed based on characters' co-occurrence matrix.
Each node (vertex) is a character (circle) or a group of characters (square),
edges width is proportional to the number of common play segments where two
characters occur together.
}
\section{Functions}{
\itemize{
\item \code{plot(cooccur_igraph)}: Plot \code{cooccur_igraph} using
\code{plot.igraph} with slightly modified defaults.

\item \code{summary(cooccur_igraph)}: Meaningful summary for
\code{"cooccur_igraph"} object: network properties, gender distribution

}}
\examples{
\donttest{
emilia_igraph <- get_net_cooccur_igraph(
  play = "lessing-emilia-galotti",
  corpus = "ger"
)
igraph::diameter(emilia_igraph)
plot(emilia_igraph)
summary(emilia_igraph)
}
}
\seealso{
\code{\link{get_net_relations_igraph}}
\code{\link{label_cooccur_igraph}}
}
