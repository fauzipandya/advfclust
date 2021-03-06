% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fuzzy.GK.R
\name{fuzzy.GK}
\alias{fuzzy.GK}
\title{Gustafson Kessel Clustering with Babuska Improvisation}
\usage{
fuzzy.GK(X, K, m, gamma, rho, max.iteration, threshold, member.init,
  RandomNumber = 0, print.result = 0)
}
\arguments{
\item{X}{dataset (matrix/data frame)}

\item{K}{number of cluster}

\item{m}{fuzzyfier}

\item{gamma}{tuning parameter}

\item{rho}{volume cluster parameter}

\item{max.iteration}{maximum iteration for convergence}

\item{threshold}{convergence criteria}

\item{member.init}{membership object or matrix that will be used for initialized}

\item{RandomNumber}{random number for start initializing}

\item{print.result}{print result (0/1)}
}
\value{
Fuzzy Clustering object
}
\description{
Gustafson Kessel clustering Algorithm that improved by Babuska for estimating covariance cluster (Babuska, 2002)
}
\details{
This function perform Gustafson Kessel algorithm by Gustafson Kessel (1968) that improved by Babuska et al (2002).
Gustafson Kessel (GK) is one of fuzzy clustering methods to clustering dataset
become K cluster. Number of cluster (K) must be greater than 1. To control the overlaping
or fuzziness of clustering, parameter m must be specified.
Maximum iteration and threshold is specific number for convergencing the cluster.
Random Number is number that will be used for seeding to firstly generate fuzzy membership matrix.

Clustering will produce fuzzy membership matrix (U) and fuzzy cluster centroid (V).
The greatest value of membership on data point will determine cluster label.
Centroid or cluster center can be use to interpret the cluster. Both membership and centroid produced by
calculating mathematical distance. Gustafson Kessel calculate distance with Covariance Cluster norm distance. So it can be said that cluster
will have both sperichal and elipsodial shape of geometry.

Babuska improve the covariance estimation via tuning covariance cluster
with covariance of data. Tuning parameter determine proportion of covariance data and covariance cluster
that will be used to estimate new covariance cluster. Beside improving via tuning, Basbuka improve
the algorithm with decomposition of covariance so it will become non singular matrix.
}
\section{Slots}{

\describe{
\item{\code{centroid}}{centroid matrix}

\item{\code{distance}}{distance matrix}

\item{\code{func.obj}}{function objective}

\item{\code{call.func}}{called function}

\item{\code{fuzzyfier}}{fuzzyness parameter}

\item{\code{method.fuzzy}}{method of fuzzy clustering used}

\item{\code{member}}{membership matrix}

\item{\code{hard.label}}{hard.label}
}}
\examples{
fuzzy.GK(iris[,1:4],K=2,m=2,max.iteration=20,threshold=1e-3,RandomNumber=1234)
}
\references{
Babuska, R., Veen, P. v., & Kaymak, U. (2002). Improved Covarians Estimation for Gustafson Kessel Clustering. IEEE, 1081-1084.

Balasko, B., Abonyi, J., & Feil, B. (2002). Fuzzy Clustering and Data Analysis Toolbox: For Use with Matlab. Veszprem, Hungary.

Gustafson, D. E., & Kessel, W. C. (1978). Fuzzy Clustering With A Fuzzy Covariance Matrix. 761-766.
}

