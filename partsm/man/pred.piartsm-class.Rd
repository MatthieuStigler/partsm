\name{pred.piartsm}
 \docType{class}
  \alias{pred.piartsm-class}
  \title{pred.piartsm Class}

  \description{
    This class contains the information provided by \code{\link{predictpiar}}.
  }

  \section{Slots}{
    \describe{
      \item{\code{wts}:}{Object of class \code{"wts"}: The observed time series.}
      \item{\code{hpred}:}{Object of class \code{"numeric"}: The number of forecasts.}
      \item{\code{p}:}{Object of class \code{"numeric"}: The lag order parameter of the PIAR model.}
      \item{\code{fcast}:}{Object of class \code{"ts"}: The out-of-sample forescasts.}
      \item{\code{fse}:}{Object of class \code{"ts"}: The forecast standard errors.}
      \item{\code{ucb}:}{Object of class \code{"ts"}: The upper 95 per cent confidence bound.}
      \item{\code{lcb}:}{Object of class \code{"ts"}: The lower 95 per cent confidence bound.}
    }
  }

  \section{Methods}{
    \describe{
      \item{\code{show}:}{Shows out-of-sample forecasts and the corresponding standard errors, as well as the
        95 per cent confidence intervals.}
    }
  }

  \references{
    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).
  }

  \seealso{
    \code{\link{predictpiar}}.
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

\keyword{classes}
