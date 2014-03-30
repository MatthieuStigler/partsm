\name{Fpar.test}
 \alias{Fpar.test}
  \title{Test for Periodic Variation in the Autoregressive Parameters}

  \description{
    Test for periodic variation in the autoregressive parameters.
  }

  \usage{
    Fpar.test (wts, detcomp, p)
  }

  \arguments{
    \item{wts}{a univariate time series object.}
    \item{detcomp}{a vector indicating the deterministic components included in the auxiliar regression. See
      the corresponding item in \code{\link{fit.ar.par}}.}
    \item{p}{the order of the initial AR or PAR model.}
  }

  \details{
    An F-test based on the residual sum of squares is performed to test for periodic variation in the
    autoregressive parameters.

    On the basis of the following model,

    \deqn{y_t = \phi_{1s} y_{t-1} + ... + \phi_{ps} y_{t-p} + \epsilon_t,}

    for \eqn{s=1,...,S}, where \code{S} is the periodicity of the time series,

    the null-hypothesis is non-periodicity: \eqn{\phi_{is}=\phi_i}, for \eqn{s=1,...,S} and
    \eqn{i=1,2,...,p}. When the null hypothesis is imposed an AR(p) is estimated, whereas the alternative is
    a PAR(p) model.

    The F-statistic when four seasonal intercepts are included follows an F((S-1)*p, n-(S+S*p)) distribution,      where \code{S} is the periodicity of the series and \code{n} the number of observations.
  }

  \seealso{
    \code{\link{fit.ar.par}}, and \code{\link{Ftest.partsm-class}}.
  }

  \value{
    An object of class \code{\link{Ftest.partsm-class}} containing the \eqn{F}-test statistic, the freedom
    degrees an the corresponding \eqn{p}-value.
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

  \examples{
    ## Test for periodicity in a second order PAR model for
    ## the logarithms of the Real GNP in Germany time series.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))
    detcomp <- list(regular=c(0,0,0), seasonal=c(1,0), regvar=0)
    out <- Fpar.test(wts=lgergnp, detcomp=detcomp, p=2)
  }

\keyword{htest}


