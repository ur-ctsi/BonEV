
\name{Bon_EV}
\alias{Bon_EV}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Bon_EV: A R Function of Improved Multiple Testing Procedure for Controlling False Discovery Rates
}
\description{
Bon_EV is an improved multiple testing procedure for controlling false discovery rates which is developed based on the Bonferroni procedure with integrated estimates from the Benjamini-Hochberg procedure and the Storey's q-value procedure. It controls false discovery rates through controlling the expected number of false discoveries.
}
\usage{
Bon_EV(pvalue, alpha)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pvalue}{
The input data is a vector of P-values ranged from 0 to 1
}
  \item{alpha}{
The alpha is the level of false discovery rates (FDR) to control for
}
}
\details{
Bon_EV is a function for getting adjusted P-values with FDR controlled at level alpha.
}
\value{
Bon_EV produces a named list with the following components:
\item{raw_P_value}{Vector of raw P-values}
\item{BH_adjp}{Adjusted P-values from the Benjamini-Hochberg procedure}
\item{Storey_adjp}{Adjusted P-values from the Storey's q-value procedure}
\item{Bon_EV_adjp}{Adjusted P-values from the Bon-EV multiple testing procedure}
}

\author{Dongmei Li}

\seealso{
The qvalue package.
}
\examples{
library(qvalue)
data(hedenfalk)
summary(hedenfalk)
pvalues <- hedenfalk$p
adjp <- Bon_EV(pvalues, 0.05)
summary(adjp)
sum(adjp$Bon_EV_adjp <= 0.05)
}

\keyword{multiple testing procedure}
\keyword{false discovery rates}
