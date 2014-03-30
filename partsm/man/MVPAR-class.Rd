\name{MVPAR-class}
 \docType{class}
  \alias{MVPAR-class}
  \title{MVPAR Class}

  \description{This class contains the matrices for the multivariate representation of an object of
    class \code{\link{fit.partsm-class}}.
  }

  \section{Slots}{
    \describe{
      \item{\code{Phi0}:}{Object of class \code{"matrix"}: Matrix for the multivariate representasio. See
        details in \code{\link{PAR.MVrepr-methods}}.}
      \item{\code{Phi1}:}{Object of class \code{"matrix"}: Matrix for the multivariate representasio. See
        details in \code{\link{PAR.MVrepr-methods}}.}
      \item{\code{Gamma.eigenvalues}:}{Object of class \code{"numeric"}:  Eigen valus of the matrix
        \eqn{Phi0^{-1} \%*\% Phi1}.}
      \item{\code{tvias}:}{Object of class \code{"matrix"}: Time-varying impact of accumulation of shocks
        calculated as \eqn{Phi0^{-1} \%*\% Phi1 \%*\% Phi0^{-1}}.}
    }
  }

  \section{Methods}{
    \describe{
      \item{show}{\code{signature(object = "MVPAR")}: Shows the information contained in the slots.}
    }
  }

  \references{
    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

  \seealso{
    \code{\link{PAR.MVrepr-methods}}, and \code{\link{fit.partsm-class}}.
  }

\keyword{classes}
