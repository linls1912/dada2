% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chimeras.R
\name{removeBimeraDenovo}
\alias{removeBimeraDenovo}
\title{Remove bimeras from collections of unique sequences.}
\usage{
removeBimeraDenovo(unqs, ..., verbose = FALSE)
}
\arguments{
\item{unqs}{(Required). A \code{\link{uniques-vector}} or any object that can be coerced
into one with \code{\link{getUniques}}. A list of such objects can also be provided.}

\item{...}{(Optional). Arguments to be passed to \code{\link{isBimeraDenovo}}.}

\item{verbose}{(Optional). \code{logical(1)} indicating verbose text output. Default FALSE.}
}
\value{
A uniques vector, or an object of matching class if a data.frame or sequence table is provided.
 A list of such objects is returned if a list of input unqs was provided.
}
\description{
This function is a wrapper around \code{\link{isBimeraDenovo}}. Bimeras identified by
\link{isBimeraDenovo} are removed, and a bimera-free collection of unique sequences is returned.
}
\examples{
derep1 = derepFastq(system.file("extdata", "sam1F.fastq.gz", package="dada2"))
dada1 <- dada(derep1, err=tperr1, errorEstimationFunction=loessErrfun, selfConsist=TRUE)
out.nobim <- removeBimeraDenovo(dada1)
out.nobim <- removeBimeraDenovo(dada1$clustering, minFoldParentOverAbundance = 2, allowOneOff=FALSE)

}
\seealso{
\code{\link{isBimeraDenovo}}
}

