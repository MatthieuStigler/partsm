\name{PAR.MVrepr }
 \alias{PAR.MVrepr }
  \title{Multivariate representation of a PAR model}

  \description{
    The function \code{PAR.MVrepr} applied on the \code{out.par} object of class \code{fit.partsm}, shows
 the multivariate representation as well as some complementary information of a PAR process.
  }

  \usage{
    PAR.MVrepr(object)
  }

  \arguments{
    \item{object}{An object of class \code{fit.partsm} or \code{fit.piartsm}}
  }

  \details{
    For more information, see the vignette, section 2.
  }

  \value{
    A list with different objects
  }


  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

  \references{
    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).
  }

  \examples{
    ## Models for the the logarithms of the Real GNP in Germany.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))

    ## Fit an PAR model
    detcomp <- list(regular=c(0,0,0), seasonal=c(1,0), regvar=0)
    out.par <- fit.ar.par(wts=lgergnp, type="PAR", detcomp=detcomp, p=2)

    ## Show the matrix representation: 
    out.MV <- PAR.MVrepr(out.par)
    out.MV
  }

\keyword{ts}
