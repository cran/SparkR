% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/DataFrame.R
\name{persist}
\alias{persist}
\alias{persist,SparkDataFrame,character-method}
\title{Persist}
\usage{
persist(x, newLevel)

\S4method{persist}{SparkDataFrame,character}(x, newLevel)
}
\arguments{
\item{x}{the SparkDataFrame to persist.}

\item{newLevel}{storage level chosen for the persistence. See available options in
the description.}
}
\description{
Persist this SparkDataFrame with the specified storage level. For details of the
supported storage levels, refer to
\url{http://spark.apache.org/docs/latest/rdd-programming-guide.html#rdd-persistence}.
}
\note{
persist since 1.4.0
}
\examples{
\dontrun{
sparkR.session()
path <- "path/to/file.json"
df <- read.json(path)
persist(df, "MEMORY_AND_DISK")
}
}
\seealso{
Other SparkDataFrame functions: 
\code{\link{SparkDataFrame-class}},
\code{\link{agg}()},
\code{\link{alias}()},
\code{\link{arrange}()},
\code{\link{as.data.frame}()},
\code{\link{attach,SparkDataFrame-method}},
\code{\link{broadcast}()},
\code{\link{cache}()},
\code{\link{checkpoint}()},
\code{\link{coalesce}()},
\code{\link{collect}()},
\code{\link{colnames}()},
\code{\link{coltypes}()},
\code{\link{createOrReplaceTempView}()},
\code{\link{crossJoin}()},
\code{\link{cube}()},
\code{\link{dapplyCollect}()},
\code{\link{dapply}()},
\code{\link{describe}()},
\code{\link{dim}()},
\code{\link{distinct}()},
\code{\link{dropDuplicates}()},
\code{\link{dropna}()},
\code{\link{drop}()},
\code{\link{dtypes}()},
\code{\link{exceptAll}()},
\code{\link{except}()},
\code{\link{explain}()},
\code{\link{filter}()},
\code{\link{first}()},
\code{\link{gapplyCollect}()},
\code{\link{gapply}()},
\code{\link{getNumPartitions}()},
\code{\link{group_by}()},
\code{\link{head}()},
\code{\link{hint}()},
\code{\link{histogram}()},
\code{\link{insertInto}()},
\code{\link{intersectAll}()},
\code{\link{intersect}()},
\code{\link{isLocal}()},
\code{\link{isStreaming}()},
\code{\link{join}()},
\code{\link{limit}()},
\code{\link{localCheckpoint}()},
\code{\link{merge}()},
\code{\link{mutate}()},
\code{\link{ncol}()},
\code{\link{nrow}()},
\code{\link{printSchema}()},
\code{\link{randomSplit}()},
\code{\link{rbind}()},
\code{\link{rename}()},
\code{\link{repartitionByRange}()},
\code{\link{repartition}()},
\code{\link{rollup}()},
\code{\link{sample}()},
\code{\link{saveAsTable}()},
\code{\link{schema}()},
\code{\link{selectExpr}()},
\code{\link{select}()},
\code{\link{showDF}()},
\code{\link{show}()},
\code{\link{storageLevel}()},
\code{\link{str}()},
\code{\link{subset}()},
\code{\link{summary}()},
\code{\link{take}()},
\code{\link{toJSON}()},
\code{\link{unionAll}()},
\code{\link{unionByName}()},
\code{\link{union}()},
\code{\link{unpersist}()},
\code{\link{withColumn}()},
\code{\link{withWatermark}()},
\code{\link{with}()},
\code{\link{write.df}()},
\code{\link{write.jdbc}()},
\code{\link{write.json}()},
\code{\link{write.orc}()},
\code{\link{write.parquet}()},
\code{\link{write.stream}()},
\code{\link{write.text}()}
}
\concept{SparkDataFrame functions}
