% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mllib_regression.R
\name{glm,formula,ANY,SparkDataFrame-method}
\alias{glm,formula,ANY,SparkDataFrame-method}
\alias{glm}
\title{Generalized Linear Models (R-compliant)}
\usage{
\S4method{glm}{formula,ANY,SparkDataFrame}(
  formula,
  family = gaussian,
  data,
  epsilon = 1e-06,
  maxit = 25,
  weightCol = NULL,
  var.power = 0,
  link.power = 1 - var.power,
  stringIndexerOrderType = c("frequencyDesc", "frequencyAsc", "alphabetDesc",
    "alphabetAsc"),
  offsetCol = NULL
)
}
\arguments{
\item{formula}{a symbolic description of the model to be fitted. Currently only a few formula
operators are supported, including '~', '.', ':', '+', and '-'.}

\item{family}{a description of the error distribution and link function to be used in the model.
This can be a character string naming a family function, a family function or
the result of a call to a family function. Refer R family at
\url{https://stat.ethz.ch/R-manual/R-devel/library/stats/html/family.html}.
Currently these families are supported: \code{binomial}, \code{gaussian},
\code{poisson}, \code{Gamma}, and \code{tweedie}.}

\item{data}{a SparkDataFrame or R's glm data for training.}

\item{epsilon}{positive convergence tolerance of iterations.}

\item{maxit}{integer giving the maximal number of IRLS iterations.}

\item{weightCol}{the weight column name. If this is not set or \code{NULL}, we treat all instance
weights as 1.0.}

\item{var.power}{the index of the power variance function in the Tweedie family.}

\item{link.power}{the index of the power link function in the Tweedie family.}

\item{stringIndexerOrderType}{how to order categories of a string feature column. This is used to
decide the base level of a string feature as the last category
after ordering is dropped when encoding strings. Supported options
are "frequencyDesc", "frequencyAsc", "alphabetDesc", and
"alphabetAsc". The default value is "frequencyDesc". When the
ordering is set to "alphabetDesc", this drops the same category
as R when encoding strings.}

\item{offsetCol}{the offset column name. If this is not set or empty, we treat all instance
offsets as 0.0. The feature specified as offset has a constant coefficient of
1.0.}
}
\value{
\code{glm} returns a fitted generalized linear model.
}
\description{
Fits a generalized linear model, similarly to R's glm().
}
\note{
glm since 1.5.0
}
\examples{
\dontrun{
sparkR.session()
t <- as.data.frame(Titanic)
df <- createDataFrame(t)
model <- glm(Freq ~ Sex + Age, df, family = "gaussian")
summary(model)
}
}
\seealso{
\link{spark.glm}
}
