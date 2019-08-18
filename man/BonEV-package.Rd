\name{BonEV-package}
\alias{BonEV-package}
\alias{BonEV}
\docType{package}
\title{BonEV: An Improved Multiple Testing Procedure for Controlling False Discovery Rates}
\description{
BonEV is an improved multiple testing procedure for controlling false discovery rates which is developed based on the Bonferroni procedure with integrated estimates from the Benjamini-Hochberg procedure and the Storey's q-value procedure. It controls false discovery rates through controlling the expected number of false discoveries.
}

\details{
\tabular{ll}{
Package: \tab BonEV\cr
Type: \tab Package\cr
Version: \tab 1.0.0\cr
Date: \tab 2015-02-10\cr
Depends: \tab R (>= 3.2.0), qvalue \cr
License: \tab GPL (>= 2) \cr
}
}

\author{
Dongmei Li 
Maintainer: Dongmei Li <dongmei_li@urmc.rochester.edu> 
}

\keyword{multiple testing procedure, false discovery rates}

\seealso{
The \code{\link{Bon_EV}} function defined in this package.
The qvalue package.
}

\examples{
library(qvalue)
data(hedenfalk)
summary(hedenfalk)
pvalues <- hedenfalk$p
adjp <- Bon_EV(pvalues, 0.05)
summary(adjp)
results <- cbind(adjp$raw_P_value, adjp$BH_adjp, adjp$Storey_adjp, adjp$Bon_EV_adjp)
results

##Compare with Benjamini-Hochberg and Storey's q-value procedures
sum(adjp$raw_P_value <= 0.05)
sum(adjp$BH_adjp <= 0.05)
sum(adjp$Storey_adjp <= 0.05)
sum(adjp$Bon_EV_adjp <= 0.05)
}
