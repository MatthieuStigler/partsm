\name{plotpdiff}
 \alias{plotpdiff}
  \title{Graphical Representation of the Periodically Differenced Data}

  \description{
    On the basis of the estimated parameters in a PIAR model, this function displays the periodically
    differenced data, as well as two different representations of the seasonal paths for the transformed data.
  }

  \usage{
    plotpdiff (x)
  }

  \arguments{
    \item{x}{Object of class 'fir.piartsm'.}
  }

  \references{
    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).    }

  \seealso{
    \code{\link{fit.piartsm-class}}, and \code{\link{fit.piar}}.
  }

  \examples{
    ## Load data and select the deterministic components.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))
    detcomp <- list(regular=c(0,0,0), seasonal=c(1,0), regvar=0)

    ## Fit a PIAR(2) model with seasonal intercepts.
    out.piar <- fit.piar(wts=lgergnp, detcomp=detcomp, p=2)
    plotpdiff(out.piar)
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

\keyword{hplot}
