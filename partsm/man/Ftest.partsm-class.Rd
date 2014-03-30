\name{Ftest.partsm}
 \docType{class}
  \alias{Ftest.partsm-class}
  \title{Ftest.partsm Class}

  \description{
    This class contains the information provided by the \eqn{F}-tests available in the package
    \code{'partsm'}.
  }

  \section{Slots}{
    \describe{
      \item{\code{test.label}:}{Object of class \code{"character"}: A label to identify the test that the
        information is related to.}
      \item{\code{test.name}:}{Object of class \code{"character"}: A one-line description of the test.}
      \item{\code{p}:}{Object of class \code{"numeric"}: The order of the AR or PAR model.}
      \item{\code{Fstat}:}{Object of class \code{"numeric"}: The \eqn{F}-statistic.}
      \item{\code{df}:}{Object of class \code{"numeric"}: The freedom degrees.}
      \item{\code{pval}:}{Object of class \code{"numeric"}: The \eqn{p}-value.}
      \item{\code{pvl}:}{Object of class \code{"character"}: A symbol indicating the significance of the
        \eqn{F}-statistic according to usual codes, \emph{i.e.} Signif. codes: 0 '***' 0.001 '**' 0.01 '*'
        0.05 '.' 0.1 ' ' 1.}
      \item{\code{h0md}:}{Object of class \code{"lm"}: The summary of the model fitted for the null
        hypothesis.}
      \item{\code{hamd}:}{Object of class \code{"ANY"}:  The summary of the model fitted for the
        alternative hypothesis.}
    }
  }

  \section{Methods}{
    \describe{
      \item{\code{show}:}{This method reports the \eqn{F}-test statistic, the null and the alternative
        hypotheses entailed in the procedure, as well as the freedom degrees, the \eqn{p}-value and the
        codified \eqn{p}-value.}
      \item{\code{summary}:}{In addition to the information reported by \code{show}, a summary of the fitted
        models for the null and the alternative hypotheses is also added.}
    }
  }

  \references{
    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).
  }

  \seealso{
    \code{\link{Fnextp.test}}, \code{\link{Fpar.test}}, \code{\link{Fsh.test}}, and
    \code{\link{Fpari.piar.test}}.
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

\keyword{classes}
