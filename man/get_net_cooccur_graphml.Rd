% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/net.R
\name{get_net_cooccur_graphml}
\alias{get_net_cooccur_graphml}
\alias{get_net_relations_graphml}
\title{Retrieve co-occurrence network for a play in 'GraphML'}
\usage{
get_net_cooccur_graphml(play = NULL, corpus = NULL, parse = TRUE, ...)

get_net_relations_graphml(play = NULL, corpus = NULL, ...)
}
\arguments{
\item{play}{Character, name of a play (you can find all play names in
\code{"playName"} column within an object returned by
\code{\link{get_dracor}}). Character vector (longer than 1) is not
supported.}

\item{corpus}{Character, name of the corpus (you can find all corpus names in
\code{name} column within an object returned by
\code{\link{get_dracor_meta}}).}

\item{parse}{Logical, if \code{TRUE} the result is parsed by
{\code{\link[xml2:read_xml]{xml2::read_xml()}}}, otherwise character value is
returned. Default value is \code{TRUE}.}

\item{...}{Additional arguments passed to \code{\link{dracor_api}}.}
}
\value{
'GraphML' data.
}
\description{
\code{get_net_cooccur_graphml()} requests a play co-occurrence network in
'GraphML', given play and corpus names. 'GraphML' is a common format for
graphs based on XML.
}
\section{Functions}{
\itemize{
\item \code{get_net_relations_graphml()}: Retrieves kinship and other relationship
data, following the encoding scheme proposed in
\insertCite{wiedmer_nathalie_2020_4621778}{rdracor}.

}}
\examples{
\donttest{
get_net_cooccur_graphml(play = "lessing-emilia-galotti", corpus = "ger")
# If you want 'GEXF' without parsing by xml2::read_xml():
get_net_cooccur_graphml(play = "lessing-emilia-galotti", corpus = "ger", parse = FALSE)
}
}
\references{
\insertAllCited{}
}
\seealso{
\code{\link{get_net_cooccur_igraph}}
\code{\link{get_net_cooccur_gexf}} \code{\link{get_net_cooccur_metrics}}
\code{\link{get_net_cooccur_edges}} \code{\link{get_net_relations_igraph}}
}
