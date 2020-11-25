\name{fit.piar}
 \alias{fit.piar}
  \title{Fit a Periodically Integrated Autoregressive Model.}

  \description{
    Fit a periodically integrated periodic autoregressive model.
  }

  \usage{
    fit.piar (wts, detcomp, p, initvalues=NULL)
  }

  \arguments{
    \item{wts}{a univariate time series object.}
    \item{detcomp}{a vector indicating the deterministic components included in the auxiliary regression. See
      the corresponding item in \code{\link{fit.ar.par}}.}
    \item{p}{the order of the PAR model. In this version first and second order are considered.}
    \item{initvalues}{by default, initial values are computed for the non-linear model. However, in this
      version there may be cases in which the estimates do not converge, giving an error message. In this
      case, a numeric vector with initial values guessed by the user can be included.}
  }
  
  \details{
    The following equation is estimated by non-linear least squares

    \deqn{ y_t = \alpha_s y_{t-1} + \beta_s (y_{t-1} - \alpha_{s-1} y_{t-2}) + \epsilon_t,}

    under the restriction \eqn{\Pi_{i=1}^{S} \alpha_i = 1} for \eqn{s=1,...,S}, where \eqn{S} denotes
    the number of seasons. Regressors defined in \code{detcomp} can also be included. Obviously, for a first
    order PIAR process \eqn{\beta} parameters are equal to zero.
  }

  \seealso{
    \code{\link[stats]{nls}}, \code{\link{fit.ar.par}}, and \code{\link{fit.piartsm-class}}.
  }

  \value{
    An object of class \code{fit.piartsm-class} containing the estimated coefficients in the restricted
    non-linear model, the residuals, and the periodic autoregressive coefficients. On the basis of the
    estimated \eqn{alpha} parameters, the periodically differenced data are also computed. See
    \code{\link{fit.piartsm-class}} for methods that display this information.
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

  \references{
    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).
  }

  \examples{
    ## Fit a PIAR(2) model for the logarithms of the Real GNP in Germany.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))
    detcomp <- list(regular=c(0,0,0), seasonal=c(1,0), regvar=0)
    out <- fit.piar(wts=lgergnp, detcomp=detcomp, p=2, initvalues=NULL)
  }

\keyword{ts}
\keyword{models}


