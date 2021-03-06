% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/mllib_clustering.R
\name{spark.lda}
\alias{spark.lda}
\alias{spark.posterior}
\alias{spark.perplexity}
\alias{spark.lda,SparkDataFrame-method}
\alias{summary,LDAModel-method}
\alias{spark.perplexity,LDAModel,SparkDataFrame-method}
\alias{spark.perplexity,LDAModel-method}
\alias{spark.posterior,LDAModel,SparkDataFrame-method}
\alias{write.ml,LDAModel,character-method}
\title{Latent Dirichlet Allocation}
\usage{
spark.lda(data, ...)

spark.posterior(object, newData)

spark.perplexity(object, data)

\S4method{spark.lda}{SparkDataFrame}(
  data,
  features = "features",
  k = 10,
  maxIter = 20,
  optimizer = c("online", "em"),
  subsamplingRate = 0.05,
  topicConcentration = -1,
  docConcentration = -1,
  customizedStopWords = "",
  maxVocabSize = bitwShiftL(1, 18)
)

\S4method{summary}{LDAModel}(object, maxTermsPerTopic)

\S4method{spark.perplexity}{LDAModel,SparkDataFrame}(object, data)

\S4method{spark.posterior}{LDAModel,SparkDataFrame}(object, newData)

\S4method{write.ml}{LDAModel,character}(object, path, overwrite = FALSE)
}
\arguments{
\item{data}{A SparkDataFrame for training.}

\item{...}{additional argument(s) passed to the method.}

\item{object}{A Latent Dirichlet Allocation model fitted by \code{spark.lda}.}

\item{newData}{A SparkDataFrame for testing.}

\item{features}{Features column name. Either libSVM-format column or character-format column is
valid.}

\item{k}{Number of topics.}

\item{maxIter}{Maximum iterations.}

\item{optimizer}{Optimizer to train an LDA model, "online" or "em", default is "online".}

\item{subsamplingRate}{(For online optimizer) Fraction of the corpus to be sampled and used in
each iteration of mini-batch gradient descent, in range (0, 1].}

\item{topicConcentration}{concentration parameter (commonly named \code{beta} or \code{eta}) for
the prior placed on topic distributions over terms, default -1 to set automatically on the
Spark side. Use \code{summary} to retrieve the effective topicConcentration. Only 1-size
numeric is accepted.}

\item{docConcentration}{concentration parameter (commonly named \code{alpha}) for the
prior placed on documents distributions over topics (\code{theta}), default -1 to set
automatically on the Spark side. Use \code{summary} to retrieve the effective
docConcentration. Only 1-size or \code{k}-size numeric is accepted.}

\item{customizedStopWords}{stopwords that need to be removed from the given corpus. Ignore the
parameter if libSVM-format column is used as the features column.}

\item{maxVocabSize}{maximum vocabulary size, default 1 << 18}

\item{maxTermsPerTopic}{Maximum number of terms to collect for each topic. Default value of 10.}

\item{path}{The directory where the model is saved.}

\item{overwrite}{Overwrites or not if the output path already exists. Default is FALSE
which means throw exception if the output path exists.}
}
\value{
\code{spark.lda} returns a fitted Latent Dirichlet Allocation model.

\code{summary} returns summary information of the fitted model, which is a list.
        The list includes
        \item{\code{docConcentration}}{concentration parameter commonly named \code{alpha} for
              the prior placed on documents distributions over topics \code{theta}}
        \item{\code{topicConcentration}}{concentration parameter commonly named \code{beta} or
              \code{eta} for the prior placed on topic distributions over terms}
        \item{\code{logLikelihood}}{log likelihood of the entire corpus}
        \item{\code{logPerplexity}}{log perplexity}
        \item{\code{isDistributed}}{TRUE for distributed model while FALSE for local model}
        \item{\code{vocabSize}}{number of terms in the corpus}
        \item{\code{topics}}{top 10 terms and their weights of all topics}
        \item{\code{vocabulary}}{whole terms of the training corpus, NULL if libsvm format file
              used as training set}
        \item{\code{trainingLogLikelihood}}{Log likelihood of the observed tokens in the
              training set, given the current parameter estimates:
              log P(docs | topics, topic distributions for docs, Dirichlet hyperparameters)
              It is only for distributed LDA model (i.e., optimizer = "em")}
        \item{\code{logPrior}}{Log probability of the current parameter estimate:
              log P(topics, topic distributions for docs | Dirichlet hyperparameters)
              It is only for distributed LDA model (i.e., optimizer = "em")}

\code{spark.perplexity} returns the log perplexity of given SparkDataFrame, or the log
        perplexity of the training data if missing argument "data".

\code{spark.posterior} returns a SparkDataFrame containing posterior probabilities
        vectors named "topicDistribution".
}
\description{
\code{spark.lda} fits a Latent Dirichlet Allocation model on a SparkDataFrame. Users can call
\code{summary} to get a summary of the fitted LDA model, \code{spark.posterior} to compute
posterior probabilities on new data, \code{spark.perplexity} to compute log perplexity on new
data and \code{write.ml}/\code{read.ml} to save/load fitted models.
}
\note{
spark.lda since 2.1.0

summary(LDAModel) since 2.1.0

spark.perplexity(LDAModel) since 2.1.0

spark.posterior(LDAModel) since 2.1.0

write.ml(LDAModel, character) since 2.1.0
}
\examples{
\dontrun{
text <- read.df("data/mllib/sample_lda_libsvm_data.txt", source = "libsvm")
model <- spark.lda(data = text, optimizer = "em")

# get a summary of the model
summary(model)

# compute posterior probabilities
posterior <- spark.posterior(model, text)
showDF(posterior)

# compute perplexity
perplexity <- spark.perplexity(model, text)

# save and load the model
path <- "path/to/model"
write.ml(model, path)
savedModel <- read.ml(path)
summary(savedModel)
}
}
\seealso{
topicmodels: \url{https://cran.r-project.org/package=topicmodels}

\link{read.ml}
}
