\name{acf.ext1}
 \alias{acf.ext1}
  \title{Autocorrelation function for several transformations of the original data}

  \description{
     This function is based on the \link[stats]{acf} function and extends it by allowing for some transformations of the data before computing the autocovariance or autocorrelation function.
   }

   \usage{
      acf.ext1 (wts, transf.type, perdiff.coeffs, type, lag.max, showcat, plot)
   }

   \arguments{
      \item{wts}{a univariate time series object.
      }
      \item{transf.type}{a character string indicating what transformation should be applied to the data. Allowed values are "orig", "fdiff", "sdiff", "fsdiff", "fdiffsd", "perdiff", and ""perdiffsd. See details.
      }
      \item{perdiff.coeffs}{a vector with the estimates coefficients for the periodic difference filter. This argument is only required when the periodic difference transformation must be applied to the data. See details.
      }
      \item{type}{a character string giving the type of acf to be computed. Allowed values are "correlation",
"covariance" or "partial".
      }
      \item{lag.max}{maximum number of lags at which to calculate the acf.
      }
      \item{showcat}{a logical. If TRUE, the results are printed in detail. If FALSE, the results are stored as a list object.
      }
      \item{plot}{a logical. If TRUE, a plot of the acf is showed.
      }
   }

   \details{The implemented transformations are the following:
     \itemize{
      \item "orig": Original series.
      \item "fdiff": First differences of the original series.
      \item "sdiff": Seasonal differences of the original series.
      \item "fsdiff": Fisrt and seasonal differences of the original series.
      \item "fdiffsd": Residuals of the first differences on four seasonal dummy variables.
      \item "perdiff": Periodic differences of the original series.
      \item "perdiffsd": Residuals of the periodic differences on four seasonal dummy variables.
     }
   }

   \seealso{
      \code{\link[stats]{acf}}.
   }

   \value{
     Lags at which the acf is computed, estimates of the acf, and p-values for the significance of the acf at each lag.
   }

   \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

   \examples{
      ## Logarithms of the Real GNP in Germany
      data("gergnp")
      lgergnp <- log(gergnp, base=exp(1))

      out <- acf.ext1(wts=lgergnp, transf.type="orig",
                      type="correlation", lag.max=12, showcat=TRUE, plot=FALSE)

      out <- acf.ext1(wts=lgergnp, transf.type="perdiffsd", 
                      perdiff.coeff = c(1.004, 0.981, 1.047, 0.969),
                      type="correlation", lag.max=12, showcat=TRUE, plot=FALSE)
   }
   \keyword{misc}


