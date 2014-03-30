\name{fit.partsm}
 \docType{class}
  \alias{fit.partsm-class}
  \title{fit.partsm Class}

  \description{
    This class contains information on the autoregressive or periodic autoregressive parameters estimated by
    \code{\link{fit.ar.par}}.
  }

  \section{Slots}{
    \describe{
      \item{\code{type}:}{Object of class \code{"character"}: The type of the fitted model, an autoregressive
        model, \code{"AR"}, or a periodic autoregressive model, \code{"PAR"}.}
      \item{\code{p}:}{Object of class \code{"numeric"}: The lag order parameter of the model.}
      \item{\code{lm.ar}:}{Object of class \code{"ANY"}: The summary of a fitted AR model. When an AR type
        model is selected, it is of class \code{"lm"}, otherwise the slot is empty.}
      \item{\code{lm.par}:}{Object of class \code{"ANY"}: The summary of a fitted PAR model. When a PAR type
        model is selected, it is of class \code{"lm"}, otherwise the slot is empty.}
      \item{\code{ar.coeffs}:}{Object of class \code{"ANY"}: The autoregressive parameters estimates. When a
        PAR type model is selected, it is of class \code{"matrix"}, otherwise the slot is empty.}
      \item{\code{par.coeffs}:}{Object of class \code{"ANY"}: The periodic autoregressive parameters
        estimates. When a PAR type model is selected, it is of class \code{"matrix"}, otherwise the slot is
        empty.}
    }
  }

  \section{Methods}{
    \describe{
      \item{\code{show}:}{This method reports the autoregressive or periodic autoregressive estimates, 
        depending whether the model is an AR model or a PAR model.}
      \item{\code{summary}:}{In addition to the information reported by \code{show}, a summary of the fitted
        model is also added.}
    }
  }

  \references{
    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).
  }

  \seealso{
    \code{\link{fit.ar.par}}.
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

\keyword{classes}
