\name{show-methods}
 \docType{methods}
  \alias{show-methods}
  \alias{show,ANY-method}
  \alias{show,traceable-method}
  \alias{show,ObjectsWithPackage-method}
  \alias{show,MethodDefinition-method}
  \alias{show,MethodWithNext-method}
  \alias{show,genericFunction-method}
  \alias{show,classRepresentation-method}
  \alias{show,fit.partsm-method}
  \alias{show,fit.piartsm-method}
  \alias{show,Ftest.partsm-method}
  \alias{show,LRur.partsm-method}
  \alias{show,pred.piartsm-method}
  \alias{show,MVPAR-method}
  \alias{show,MVPIAR-method}  

  \title{Methods for Function 'show' in Package 'partsm'}

  \description{
    This method shows the information provided by functions implemented in package 'partsm'.
  }

  \section{Methods}{
    \describe{
      \item{object = "fit.partsm".}{Shows the estimates of the autoregressive or periodic autoregressive
        coefficients.}
      \item{object = "Ftest.partsm".}{Shows the \eqn{F}-test statistic, the null and the alternative
        hypotheses entailed in the procedure, as well as the freedom degrees, the \eqn{p}-value and a symbol
        indicating the significance of the \eqn{F}-statistic according to usual codes, \emph{i.e.} Signif.
        codes: 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1.}
      \item{object = "fit.piartsm".}{Shows the estimated periodic autoregressive coefficients in the
        restricted non-linear PIAR.}
      \item{object = "LRur.partsm".}{Shows the LR statistics and a one-side test constructed as
        \eqn{sign(g(\hat{\alpha}) - 1) * LR^{1/2}}, where \eqn{g(\hat{\alpha})} is the product of the periodic
        differencing filter parameters estimated under the alternative.}
      \item{object = "pred.piartsm".}{Shows  out-of-sample forecasts and the corresponding standard
        errors, as well as the 95 per cent confidence intervals.}
    }
  }

  \seealso{
    \code{\link{fit.partsm-class}}, \code{\link{Ftest.partsm-class}}, and \code{\link{summary}}.
  }

  \examples{
    ## Load data and select the deterministic components.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))
    detcomp <- list(regular=c(0,0,0), seasonal=c(1,0), regvar=0)

    ## Fit an AR(4) model with intercept and seasonal dummies.
    dcar <- list(regular=c(1,0,c(1,2,3)), seasonal=c(0,0), regvar=0)
    out.ar <- fit.ar.par(wts=lgergnp, type="AR", detcomp=dcar, p=4)
    show(out.ar)

    ## Fit a PAR(2) model with seasonal intercepts.
    out.par <- fit.ar.par(wts=lgergnp, type="PAR", detcomp=detcomp, p=2)
    show(out.par)

    ## Fnextp.test
    Fnextp.out <- Fnextp.test(wts=lgergnp, detcomp=detcomp, p=1, type="PAR")
    show(Fnextp.out)

    ## Fpar.test
    Fpar.out <- Fpar.test(wts=lgergnp, detcomp=detcomp, p=2)
    show(Fpar.out)

    ## Fsh.test
    ar4 <- fit.ar.par(wts=lgergnp, type="AR", p=4, detcomp=detcomp)
    Fsh.out <- Fsh.test(res=residuals(ar4@lm.ar), s=frequency(lgergnp))
    show(Fsh.out)

    ## Fit a PIAR(2) model with seasonal intercepts.
    out.piar <- fit.piar(wts=lgergnp, detcomp=detcomp, p=2)
    show(out.piar)

    ## Fpari.piar.test
    Fpari1.out <- Fpari.piar.test(wts=lgergnp, detcomp=detcomp, p=2, type="PARI1")
    show(Fpari1.out)

    ## Fit a PIAR(2) model with seasonal intercepts.
    out.piar <- fit.piar(wts=lgergnp, detcomp=detcomp, p=2)
    show(out.piar)

    ## Test for a single unit root in a PAR(2) model with seasonal intercepts.
    out.LR <- LRurpar.test(wts=lgergnp, detcomp=detcomp, p=2)
    show(out.LR)

    ## 24 step-ahead forecasts in a PIAR(2) model.
    pred.out <- predictpiar(wts=lgergnp, p=2, hpred=24)
    show(pred.out)
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

\keyword{methods}
