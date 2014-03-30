\name{LRurpar.test}
 \alias{LRurpar.test}
  \title{Likelihood Ratio Test for a Single Unit Root in a PAR(p) Model}

  \description{
    This function performs the likelihood ratio test for a single unit root in a PAR(p) model up to order 2.
  }

  \usage{
    LRurpar.test (wts, detcomp, p)
  }

  \arguments{
    \item{wts}{a univariate time series object.}
    \item{detcomp}{a vector indicating the deterministic components included in the auxiliar regression. See
      the corresponding item in \code{\link{fit.ar.par}}.}
    \item{p}{the order of the PAR model. In this version first and second order models are considered.}
  }

  \details{
    In a quarterly time series, the PAR(1) model, \eqn{y_t = \alpha_{s,1} y_{t-1} + \epsilon_t} with
    \eqn{\epsilon_t ID(0,1)}, contains a unit root if \eqn{g(\alpha) = \Pi_{s=1}^4 \alpha_{s,1} = 1}. To test
    this hypothesis, a likelihood ratio test, \code{LR}, is built as the logarithm of the ratio beteween the
    residual sum of squares in the unrestricted and the restricted model, weighted by the number of
    observations.

    The unrestricted PAR model is estimated by OLS, whereas the model in which the null hypothesis is
    imposed, \emph{i.e.} \eqn{\Pi_{s=1}^4 \alpha_{s,1} = 1}, is estimated by nonlinear least squares.

    The critical values are reported in Osterwald-Lenum (1992), table 1.1 (for the case where \eqn{p-r=1}).

    In this version, PAR models up to order 2 with seasonal intercepts are considered, since the function
    \code{\link{fit.piar}} does not allow for higher orders.
  }

  \seealso{
    \code{\link{fit.ar.par}}, \code{\link{fit.piar}}, and \code{\link{LRur.partsm-class}}.
  }

  \value{
    An object of class \code{\link{LRur.partsm-class}} containing the LR statistics and a one-side test
    constructed as \eqn{sign(g(\hat{\alpha}) - 1) * LR^{1/2}}, where \eqn{g(\hat{\alpha})} is the product of
    the periodic differencing filter parameters estimated under the alternative.
  }

  \author{Javier Lopez-de-Lacalle \email{javlacalle@yahoo.es}.}

  \references{
    H.P. Boswijk and P.H. Franses (1996), Unit roots in periodic autorregressions. \emph{Journal of Time
    series Analysis}, \bold{17}, pp. 221-245.

    P.H. Franses: Periodicity and Stochastic Trends in Economic Time Series (Oxford University Press, 1996).

    Osterwald-Lenum, M. (1992), A Note with Quantiles of the Asymptotic Distribution of the Maximum
    Likelihood Cointegration Rank Test Statistics: Four Cases. \emph{Oxford Bulletin of Economics and
    Statistics}, \bold{54}, pp.461-472.
  }

  \examples{
    ## Test for a single unit root in a PAR(2) model with seasonal intercepts for the
    ## logarithms of the Real GNP in Germany.
    data("gergnp")
    lgergnp <- log(gergnp, base=exp(1))
    detcomp <- list(regular=c(0,0,0), seasonal=c(1,0), regvar=0)
    out <- LRurpar.test(wts=lgergnp, detcomp=detcomp, p=2)
  }

\keyword{htest}

