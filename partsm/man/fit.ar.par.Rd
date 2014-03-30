\name{fit.ar.par}
 \alias{fit.ar.par}
  \title{Fit an Autoregressive or Periodic Autoregressive Model}

  \description{
    This function fits either an autoregressive (AR) or a periodic autoregressive (PAR) model and extract the
    estimates for the autoregressive or periodic autoregressive coefficients.
  }

  \usage{
    fit.ar.par (wts, type, detcomp, p)
  }

  \arguments{
    \item{wts}{a univariate time series object.}
    \item{type}{A character string indicating whether the model to fit is an autoregressive model,
      \code{"AR"}, or a periodic autoregressive model, \code{"PAR"}.}
    \item{detcomp}{deterministic components to include in the model. Three types of regressors can be
      included: regular deterministic components, seasonal deterministic components, and any regressor
      variable previously defined by the user.

      This argument must be a list object with the following elements: \code{regular=c(0,0,0)},
      if the first and second element are set equal to 1, it indicates that an intercept, and/or linear trend,
      respectively, are included. The third element in \code{regular} is a vector indicating which seasonal
      dummies should be included. If no seasonal dummies are desired it must be set equal to zero. For
      example, \code{regular=c(1,0,c(1,2,3))} would include an intercept, no trend, and the first three
      seasonal dummies;

      \code{seasonal=c(0,0)}, if an element is set equal to 1, it indicates that seasonal intercepts, and/or
      seasonal trends, respectively, are included in the model;

      \code{regvar=0}, if none regressor variables are considered, this object must be set equal to zero,
      otherwise, the names of a matrix object previously defined should be indicated.}
    \item{p}{the lag order of the model.}
  }

  \details{
    If \code{type} is \code{"AR"} the following model is estimated by ordinary least squares:

    \deqn{y_t = \phi_{1} y_{t-1} + \phi_{2} y_{t-2} + ... + \phi_{p} y_{t-p} + \epsilon_t.}
\cr
    If \code{type} is \code{"PAR"}, the following model is estimated by ordinary least squares:

    \deqn{y_t = \alpha_{1s} y_{t-1} + \alpha_{2s} y_{t-2} + ... + \alpha_{ps} y_{t-p} + \epsilon_t,}

    for \eqn{s=1,...,S}, where \code{S} is the periodicity of the time series.
\cr
    Deterministic components can be added to models above. Be careful when defining the \code{detcomp}
    argument. To include an intercept and seasonal intercepts, or a regular trend with seasonal trends, will
    cause multicollinearity problems.
  }

  \value{
    A \code{fit.partsm-class} class object reporting the estimates of the autoregressive or periodic
    autoregressive coefficients. See \code{\link{fit.partsm-class}} to check further information available
    from this class via the methods \code{show} and \code{summary}.
  }

  \seealso{
    \code{\link{fit.piartsm-class}}, \code{\link{fit.partsm-class}}, and \code{\link{PAR.MVrepr-methods}}.
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

  \references{
    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).
  }

  \examples{
    ## Models for the the logarithms of the Real GNP in Germany.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))

    ## Fit an AR(4) model with intercept and seasonal dummies.
    detcomp <- list(regular=c(1,0,c(1,2,3)), seasonal=c(0,0), regvar=0)
    out.ar <- fit.ar.par(wts=lgergnp, type="AR", detcomp=detcomp, p=4)

    ## Fit a PAR(2) model with seasonal intercepts.
    detcomp <- list(regular=c(0,0,0), seasonal=c(1,0), regvar=0)
    out.par <- fit.ar.par(wts=lgergnp, type="PAR", detcomp=detcomp, p=2)
  }

\keyword{ts}
\keyword{models}
