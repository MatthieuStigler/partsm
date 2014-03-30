\name{summary-methods}
 \docType{methods}
  \alias{summary-methods}
  \alias{summary,ANY-method}
  \alias{summary,fit.partsm-method}
  \alias{summary,fit.piartsm-method}
  \alias{summary,Ftest.partsm-method}
  \alias{summary,LRur.partsm-method}

  \title{Methods for Function 'summary' in Package 'partsm'}

  \description{
    This method summarises the information provided by functions implemented in package 'partsm'.
  }

  \section{Methods}{
    \describe{
      \item{object = "fit.partsm".}{Displays the estimates of the autoregressive or periodic autoregressive
        coefficients, and a summary of the fitted model is also added.}
      \item{object = "Ftest.partsm".}{Shows a summary of the information provided by the \eqn{F}-test
        statistics in package 'partsm'. The null and the alternative hypotheses entailed in the procedure, as
        well as the freedom degrees, the \eqn{p}-value and a symbol indicating the significance of the
        \eqn{F}-statistic according to usual codes, \emph{i.e.} Signif. codes: 0 '***' 0.001 '**' 0.01 '*'
        0.05 '.' 0.1 ' ' 1.

        In addition, a summary of the fitted models for the null and the alternative hypotheses is also
        added.}
      \item{object = "fit.piartsm".}{Displays the estimated periodic autoregressive coefficients in the
        restricted non-linear PIAR, the other coefficients entailed in the selected model, and the
        periodically differenced data.}
      \item{object = "fit.LRur.partsm".}{Reports the the LR statistics and a one-side test, and a summary of
        the fitted models under the null and the alternative hypotheses.}
    }
  }

  \seealso{
    \code{\link{fit.partsm-class}}, \code{\link{Ftest.partsm-class}}, and \code{\link{show}}.
  }

  \examples{
    ## Load data and select the deterministic components.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))
    detcomp <- list(regular=c(0,0,0), seasonal=c(1,0), regvar=0)

    ## Fit an AR(4) model with intercept and seasonal dummies.
    dcar <- list(regular=c(1,0,c(1,2,3)), seasonal=c(0,0), regvar=0)
    out.ar <- fit.ar.par(wts=lgergnp, type="AR", detcomp=dcar, p=4)
    summary(out.ar)

    ## Fit a PAR(2) model with seasonal intercepts.
    detcomp <- list(regular=c(0,0,0), seasonal=c(1,0), regvar=0)
    out.par <- fit.ar.par(wts=lgergnp, type="PAR", detcomp=detcomp, p=2)
    summary(out.par)

    ## Fnextp.test
    Fnextp.out <- Fnextp.test(wts=lgergnp, detcomp=detcomp, p=1, type="PAR")
    summary(Fnextp.out)

    ## Fpar.test
    Fpar.out <- Fpar.test(wts=lgergnp, detcomp=detcomp, p=2)
    summary(Fpar.out)

    ## Fsh.test
    ar4 <- fit.ar.par(wts=lgergnp, type="AR", p=4, detcomp=detcomp)
    Fsh.out <- Fsh.test(res=residuals(ar4@lm.ar), s=frequency(lgergnp))
    summary(Fsh.out)

    ## Fit a PIAR(2) model.
    out.piar <- fit.piar(wts=lgergnp, detcomp=detcomp, p=2)
    summary(out.piar)

    ## Fpari.piar.test
    Fpari1.out <- Fpari.piar.test(wts=lgergnp, detcomp=detcomp, p=2, type="PARI1")
    summary(Fpari1.out)

    ## Fit a PIAR(2) model with seasonal intercepts.
    out.piar <- fit.piar(wts=lgergnp, detcomp=detcomp, p=2)
    summary(out.piar)
    
    ## Test for a single unit root in a PAR(2) model with seasonal intercepts.
    out.LR <- LRurpar.test(wts=lgergnp, detcomp=detcomp, p=2)
    summary(out.LR)
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

\keyword{methods}
