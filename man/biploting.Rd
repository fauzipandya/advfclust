% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/biplot.R
\name{biploting}
\alias{biploting}
\title{Biploting Fuzzy Cluster Result}
\usage{
biploting(object, data.X, scale)
}
\arguments{
\item{object}{a cluster object}

\item{data.X}{a data matrix that used for clustering}

\item{scale}{scaling option (T/F)}
}
\description{
Biploting Fuzzy Cluster Result
}
\details{
Make Visualization Biplot from fuzzy cluster / consensus fuzzy cluster analysis result
}
\examples{
fuzzy.CM(iris[,1:4],K=3,m=2,max.iteration=100,threshold=1e-5,RandomNumber=1234)->cl1
biploting(cl1,iris[,1:4])
}

