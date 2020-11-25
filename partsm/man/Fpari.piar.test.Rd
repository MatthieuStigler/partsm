\name{Fpari.piar.test}
 \alias{Fpari.piar.test}
  \title{Test for a Parameter Restriction in a PAR Model.}

  \description{
    This function performs a test for a parameter restriction in a PAR model. Two restrictions can be
    considered and entail that the process contain either the unit root 1 or the seasonal unit root -1.
    In this version PAR models up to order 2 can be considered.
  }

  \usage{
    Fpari.piar.test (wts, detcomp, p, type)
  }

  \arguments{
    \item{wts}{a univariate time series object.}
    \item{detcomp}{a vector indicating the deterministic components included in the auxiliary regression. See
      the corresponding item in \code{\link{fit.ar.par}}.}
    \item{p}{the order of the initial AR or PAR model. In this version PAR models up to order 2 with seasonal
      intercepts are considered.}
    \item{type}{a character string indicating which restriction should be tested. \code{"PARI1"} indicates that the unit root is tested whereas \code{"PARI-1"} test for the unit root -1.}
  }

  \details{
    On the basis of the following PAR model (in this version PAR models up to order 2 are considered and
    seasonal intercepts are included default),

    \deqn{ y_t = \mu_s + \alpha_s y_{t-1} + \beta_s (y_{t-1} - \alpha_{s-1} y_{t-2}) + \epsilon_t,}

    for \eqn{s=1,...,S}, two different hypotheses can be tested:

    \itemize{
      \item \eqn{H0: \alpha_s = 1, for s=1,...S-1},
      \item \eqn{H0: \alpha_s = -1, for s=1,...S-1}.
    }

    For S=4, if the hypothesis \eqn{\alpha_1*\alpha_2*\alpha_3*\alpha_4=1} cannot be rejected (see
    \link{LRurpar.test}), the null hypotheses above entails that either \eqn{\alpha_4=1} or \eqn{\alpha_4=-1}.

    When the first H0 is not rejected, the PAR model contains the unit root 1, and the periodic difference
    filter is just the first order difference, \eqn{(1-L)}, where \eqn{L} is the lag operator.

    When the second H0 is not rejected, the PAR model contains the unit root -1, and the periodic difference
    filter is simplified as \eqn{(1+L)}.

    In both null hypotheses it is said that the data behave as a PAR model for an integrated series, known as
    PARI. If those null hypotheses are rejected, the corresponding model is called a periodically integrated
    autoregressive model, PIAR.

    The asymptotic distribution of the F-statistic is \eqn{F(S-1, n-k)}, where \eqn{n} is the number of
    observations and \eqn{k} the number of regressors.

    In this version PAR models up to order 2 can be considered.
  }

  \seealso{
    \code{\link{Ftest.partsm-class}}, and \code{\link{LRurpar.test}}.
  }

  \value{
    An object of class \code{\link{Ftest.partsm-class}} containing the \eqn{F}-test statistic, the freedom
    degrees an the corresponding \eqn{p}-value.
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

  \examples{
    ## Test for the unit root 1 in a PAR(2) with seasonal intercepts for
    ## the logarithms of the Real GNP in Germany.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))
    detcomp <- list(regular=c(0,0,0), seasonal=c(1,0), regvar=0)
    out <- Fpari.piar.test(wts=lgergnp, detcomp=detcomp, p=2, type="PARI1")
  }

\keyword{htest}


