\name{PAR.MVrepr-methods}
 \docType{methods}
  \alias{PAR.MVrepr-methods}
  \alias{PAR.MVrepr,ANY-method}
  \alias{PAR.MVrepr,fit.partsm-method}
  \alias{PAR.MVrepr,fit.piartsm-method}

  \title{Method for Building the Matrices for the Multivariate Representation of a PAR Model}

  \description{
    This method provides the relevant matrices for the multivariate representation of a PAR or PIAR model
    fitted by the functions \code{\link{fit.ar.par}}, and \code{\link{fit.piar}}.
  }

  \section{Methods}{
    \describe{
      \item{object = "fit.partsm".}{Provides a list object containing the estimated matrices \eqn{Phi0},
        \eqn{Phi1}, the eigen values of \eqn{Phi0^{-1} \%*\% Phi1}, and the time-varying impact of accumulation
        of shocks calculated as \eqn{Phi0^{-1} \%*\% Phi1 \%*\% Phi0^{-1}}. See details below.}
      \item{object = "fit.piartsm".}{Provides the same list as in the latter case. See details below.}
    }
  }

  \details{
    In a quarterly time series, the periodic autoregressive model of order \eqn{p} less or equal to 4,

    \deqn{ y_t = \psi_s + \phi_{1s} y_{t-1} + \phi_{2s} y_{t-2} + ... + \phi_{ps} y_{t-p} + \epsilon_t ,}

    with \eqn{s=1,2,3,4}, can be written as a multivariate model as follows,

    \deqn{\Phi_0 y_t = \Psi + \Phi_1 Y_{T-1} + \epsilon_T ,}

    where \eqn{\Phi_0} and \eqn{\Phi_1} are \eqn{S \times S} matrices containing the \eqn{\phi_{is}
    parameters.}

    \eqn{\Phi_0 =}
    \tabular{cccc}{
      \eqn{1}          \tab \eqn{0}          \tab \eqn{0}          \tab \eqn{0} \cr
      \eqn{-\phi_{12}} \tab \eqn{1}          \tab \eqn{0}          \tab \eqn{0} \cr
      \eqn{-\phi_{23}} \tab \eqn{-\phi_{13}} \tab \eqn{1}          \tab \eqn{0} \cr
      \eqn{-\phi_{34}} \tab \eqn{-\phi_{24}} \tab \eqn{-\phi_{14}} \tab \eqn{1} \cr
    }

    \eqn{\Phi_1 =}
      \tabular{cccc}{
      \eqn{\phi_{41}} \tab \eqn{\phi_{31}} \tab \eqn{\phi_{21}} \tab \eqn{\phi_{11}} \cr
      \eqn{0}         \tab \eqn{\phi_{42}} \tab \eqn{\phi_{32}} \tab \eqn{\phi_{22}} \cr
      \eqn{0}         \tab \eqn{0}         \tab \eqn{\phi_{43}} \tab \eqn{\phi_{33}} \cr
      \eqn{0}         \tab \eqn{0}         \tab \eqn{0}         \tab \eqn{\phi_{44}} \cr
    }

    The periodically integrated model of order 2,

    \deqn{ y_t - \alpha_s y_{t-1} = \mu_s + \beta_s (y_{t-1} - \alpha_{s-1} y_{t-2}) + \epsilon_t,}

    with \eqn{s=1,2,3,4}, can be written as a multivariate model as follows,

    \deqn{\Phi_0 y_t = \Psi + \Phi_1 Y_{T-1} + \epsilon_T ,}

    where the matrix \eqn{\Phi_0} and \eqn{\Phi_1} are defined below

    \eqn{\Phi_0 =}
    \tabular{cccc}{
      \eqn{1}         \tab \eqn{0}         \tab \eqn{0}         \tab \eqn{0} \cr
      \eqn{-\alpha_2} \tab \eqn{1}         \tab \eqn{0}         \tab \eqn{0} \cr
      \eqn{0}         \tab \eqn{-\alpha_3} \tab \eqn{1}         \tab \eqn{0} \cr
      \eqn{0}         \tab \eqn{0}         \tab \eqn{-\alpha_4} \tab \eqn{1} \cr
    }

    \eqn{\Phi_1 =}
    \tabular{cccc}{
      \eqn{0} \tab \eqn{0} \tab \eqn{0} \tab \eqn{\alpha_1} \cr
      \eqn{0} \tab \eqn{0} \tab \eqn{0} \tab \eqn{0} \cr
      \eqn{0} \tab \eqn{0} \tab \eqn{0} \tab \eqn{0} \cr
      \eqn{0} \tab \eqn{0} \tab \eqn{0} \tab \eqn{0} \cr
    }

    The \eqn{\Phi_0} and \eqn{\Phi_1} matrices can be used to compute the impact of accumulation of the
    shocks \eqn{\epsilon_t}. The impact matrix is defined as \eqn{\Gamma \Phi_0^{-1}}, where \eqn{\Gamma} is
    \eqn{\Phi_0^{-1} \Phi_0}.

    That row in which the values of the impact matrix are the highest, entails that the corresponding season
    undergoes more severe impacts from the accumulation of all shocks. Hence, it is more likely to display
    fluctuations in the stochastic trend. Put in other words, the impact matrix allow the practitioner to get
    an idea about how the stochastic trend and the seasonal fluctuations are related.

  }

  \seealso{
    \code{\link{fit.partsm-class}}, and \code{\link{fit.piartsm-class}}.
  }

  \examples{
    ## Load data and select the deterministic components.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))
    detcomp <- list(regular=c(0,0,0), seasonal=c(1,0), regvar=0)

    ## Multivariate representation of a PAR(2) model with sesonal intercepts.
    out.par <- fit.ar.par(wts=lgergnp, type="PAR", detcomp=detcomp, p=2)
    PAR.MVrepr(out.par)

    ## Multivariate representation of a PIAR(2) model with sesonal intercepts.
    out.piar <- fit.piar(wts=lgergnp, detcomp=detcomp, p=2)
    PAR.MVrepr(out.piar)
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

\keyword{methods}
