\name{LRur.partsm}
 \docType{class}
  \alias{LRur.partsm-class}

  \title{LRur.partsm Class}

  \description{
    This class contains the information provided by \code{\link{LRurpar.test}}.
  }

  \section{Slots}{
    \describe{
      \item{\code{test.label}:}{Object of class \code{"character"}: A label to identify the test.}
      \item{\code{test.name}:}{Object of class \code{"character"}: A one-line description of the test.}
      \item{\code{p}:}{Object of class \code{"numeric"}: The lag order parameter of the model.}
      \item{\code{LR}:}{Object of class \code{"numeric"}: The LR statistic.}
      \item{\code{LRtau}:}{Object of class \code{"numeric"}: The one side test statistic.}
      \item{\code{h0nls}:}{Object of class \code{"matrix"}: The estimated coefficients of the non-linear PIAR
        model.}
      \item{\code{halm}:}{Object of class \code{"lm"}: The estimated PAR model for the alternative
        hypotheses.}
    }
  }

  \section{Methods}{
    \describe{
      \item{\code{show}:}{Shows the LR statistics and a one-side test constructed as
        \eqn{sign(g(\hat{\alpha}) - 1) * LR^{1/2}}, where \eqn{g(\hat{\alpha})} is the product of the periodic
        differencing filter parameters estimated under the alternative.}
      \item{\code{summary}:}{Displays the same output as \code{show} but a summary of the null and the
        alternative hypotheses is also displayed.}
    }
  }

  \references{
    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).
  }

  \seealso{
    \code{\link{LRurpar.test}}.
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

\keyword{classes}
