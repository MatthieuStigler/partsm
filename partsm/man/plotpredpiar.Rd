\name{plotpredpiar}
 \alias{plotpredpiar}
  \title{Plot of the Out-of-Sample Forecasts in a PIAR Model}

  \description{
    This function displays a plot of the predictions and the corresponding 95 per cent confidence intervals
    based on a PIAR model. In this version, this function is implemeted for quarterly observed data, PIAR
    models up to order 2 are considered, and seasonal intercepts are included by default.
  }

  \usage{
    plotpredpiar (x)
  }

  \arguments{
    \item{x}{Object of class 'pred.piartsm'.}
  }

  \references{
    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).    }

  \seealso{
    \code{\link{pred.piartsm-class}}, and \code{\link{predictpiar}}.
  }

  \examples{
    ## Load data and select the deterministic components.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))

    ## Fit a PIAR(2) model with seasonal intercepts.
    out.pred <- predictpiar(wts=lgergnp, p=2, hpred=24)
    plotpredpiar(out.pred)
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

\keyword{hplot}
