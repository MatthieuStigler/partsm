\name{predictpiar}
 \alias{predictpiar}
  \title{Predictions for a Restricted Periodic Autoregressive Model}

  \description{
    This function performs predictions for a restricted periodic autoregressive model. This version
    considers PIAR models up to order 2 with seasonal intercepts. It is implemented for quarterly observed data.
  }

  \usage{
    predictpiar (wts, p, hpred)
  }

  \arguments{
    \item{wts}{a univariate time series object.}
    \item{p}{the order of the PAR model. At present first and second order are considered.}
    \item{hpred}{number of out-of-sample observations to forecast. It must be a multiple of 4.}
  }

  \details{
    Upon the multivariate representation,

    \deqn{\Phi_0 y_t = \Psi + \Phi_1 Y_{T-1} + ... + \Phi_P y_{T-P} + \epsilon_T ,}

    where the \eqn{\Phi_i, i=1,2,...,P} are \eqn{s \times s} matrices containing the \eqn{\phi_{is}
    parameters.}, the one-step-ahead forecasts for the year \eqn{T+1} is straightforward,

    \deqn{ y_t = \Phi_0^{-1} \Psi + \Phi_0^{-1} \Phi_1 Y_{T-1} + ... + \Phi_0^{-1} \Phi_P y_{T-P} +
    \Phi_0^{-1} + \epsilon_T .}

    Multi-step-ahead forecasts are obtained recursively.

    The prediction errors variances for the one-step-ahead forecast are the diagonal elements of

    \deqn{ \sigma^2 \Phi_0^{-1} (\Phi_0^{-1})^{'}, }

    whereas for \eqn{h=2,3,...} years ahead forecasts it becomes

    \deqn{\sigma^2 \Phi_0^{-1} (\Phi_0^{-1})^{'} + (h-1) (\Gamma \Phi_0^{-1}) (\Gamma \Phi_0^{-1})^{'},}

    where \eqn{\Gamma = \Phi_0^{-1} \Phi_1}.

    This version considers PIAR models up to order 2 for quarterly observed data. By default, seasonal
    intercepts are included in the model as deterministic components.

    The number of observations to forecast, \code{hpred} must be a multiple of 4.
  }

  \seealso{
    \code{\link{fit.piar}}, \code{\link{PAR.MVrepr-methods}}, and \code{\link{pred.piartsm-class}}.
  }

  \value{
    An object of class \code{\link{pred.piartsm-class}} containing the forecasts and the corresponding
    standard errors, as well as the 95 per cent confidence intervals.
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

  \references{
    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).
  }

  \examples{
    ## 24 step-ahead forecasts in a PIAR(2) model for the
    ## logarithms of the Real GNP in Germany.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))
    pred.out <- predictpiar(wts=lgergnp, p=2, hpred=24)
  }

\keyword{models}
\keyword{ts}


