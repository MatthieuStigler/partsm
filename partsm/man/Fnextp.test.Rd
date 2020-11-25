\name{Fnextp.test}
 \alias{Fnextp.test}
  \title{Test for the Significance of the p+1 Autoregressive Parameters in an AR(p) or PAR(p) Model}

  \description{
    Test for the significance of prospective autoregressive parameters of order \eqn{p+1} in an AR(p) or
    PAR(p) model. It is performed as an F-statistic that sets the parameters of order \eqn{p+1} equal to zero.
  }

  \usage{
    Fnextp.test (wts, detcomp, p, type)
  }

  \arguments{
    \item{wts}{a univariate time series object.}
    \item{detcomp}{a vector indicating the deterministic components included in the auxiliary regression.
      See the corresponding item in \code{\link{fit.ar.par}}.}
    \item{p}{the order of the initial AR or PAR model.}
    \item{type}{a character string indicating whether the model to fit is an autoregressive model,
      \code{"AR"}, or a periodic autoregressive model, \code{"PAR"}.}
  }

  \seealso{
    \code{\link{fit.ar.par}}, and \code{\link{Ftest.partsm-class}}.
  }

  \value{
    An object of class \code{\link{Ftest.partsm-class}} containing the \eqn{F}-test statistic, the freedom
    degrees an the corresponding \eqn{p}-value.
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

  \references{
    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).
  }

  \examples{
    ## Test the significance of a second order lag in a PAR model for the Real GNP in Germany.
    ## Including seasonal intercepts.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))
    detcomp <- list(regular=c(0,0,0), seasonal=c(1,0), regvar=0)
    out <- Fnextp.test(wts=lgergnp, detcomp=detcomp, p=1, type="PAR")
  }

\keyword{ts}


