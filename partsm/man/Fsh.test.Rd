\name{Fsh.test}
 \alias{Fsh.test}
  \title{Test for Seasonal Heteroskedasticity}

  \description{
    Test for seasonal heteroskedasticity.
  }

  \usage{
    Fsh.test (res, s)
  }

  \arguments{
    \item{res}{a vector containing the data to be tested.}
    \item{s}{the periodicity of the data.}
  }

  \details{
    On the basis of the following model,

    \deqn{x_t^2 = \omega_0 + \omega_1 D_{1,t} + ... + \omega_{S-1} D_{S-1,t} + \epsilon_t,}

    where \code{S} is the periodicity of the data, the null hypothesis of

    the null-hypothesis \eqn{\omega_{i}=0}, for \eqn{i=1,...,S-1} is tested.

    The F-statistic follows an F((S-1), n-k) distribution, where \code{n} is the number of observations and
    \code{k} the number of parameters.
  }

  \seealso{
    \code{\link{Ftest.partsm-class}}.
  }

  \value{
    An object of class \code{\link{Ftest.partsm-class}} containing the \eqn{F}-test statistic, the freedom
    degrees an the corresponding \eqn{p}-value.
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}


  \examples{
    ## Fsh test for the residuals of the first differences
    ## of the logarithms of the Real GNP in Germany
    ## on an AR(4) model with seasonal intercepts.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))
    wts <- ts(c(NA, diff(gergnp, lag=1)), frequency=4, start=start(lgergnp))

    detcomp=list(regular=c(0,0,0), seasonal=c(1,0), regvar=0)
    ar4 <- fit.ar.par(wts=lgergnp, type="AR", p=4, detcomp=detcomp)
    out <- Fsh.test(res=residuals(ar4@lm.ar), s=frequency(wts))
  }

\keyword{htest}


