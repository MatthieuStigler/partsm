\name{fit.piartsm}
 \docType{class}
  \alias{fit.piartsm-class}
  \title{fit.piartsm Class}

  \description{
    This class contains information on the periodic autoregressive parameters estimated by
    \code{fit.piar}.
  }

  \section{Slots}{
    \describe{
      \item{\code{p}:}{Object of class \code{"numeric"}: The order of the PIAR model.}
      \item{\code{nls.parameters}:}{Object of class \code{"matrix"}: Estimated coefficients of the
        non-linear PIAR model.}
      \item{\code{nls.res}:}{Object of class \code{"numeric"}: Residuals of the non-linear PIAR model.}
      \item{\code{par.coeffs}:}{Object of class \code{"matrix"}: Periodic autoregressive parameters
        estimates.}
      \item{\code{pdiff.data}:}{Object of class \code{"ts"}: Periodically differenced data.}
    }
  }

  \section{Methods}{
    \describe{
      \item{\code{show}:}{Reports the periodic autoregressive coefficients estimates.}
      \item{\code{summary}:}{Like show, the periodically differenced data are also displayed.}
      \item{\code{plot}:}{Plot the the periodically differenced data, as well as the seasonal paths of the
        transformed data.}
    }
  }

  \references{
    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).
  }

  \seealso{
    \code{\link{fit.piar}}.
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

\keyword{classes}
