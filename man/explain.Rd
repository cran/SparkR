% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/DataFrame.R, R/streaming.R
\name{explain}
\alias{explain}
\alias{explain,SparkDataFrame-method}
\alias{explain,StreamingQuery-method}
\title{Explain}
\usage{
explain(x, ...)

\S4method{explain}{SparkDataFrame}(x, extended = FALSE)

\S4method{explain}{StreamingQuery}(x, extended = FALSE)
}
\arguments{
\item{x}{a SparkDataFrame or a StreamingQuery.}

\item{...}{further arguments to be passed to or from other methods.}

\item{extended}{Logical. If extended is FALSE, prints only the physical plan.}
}
\description{
Print the logical and physical Catalyst plans to the console for debugging.
}
\note{
explain since 1.4.0

explain(StreamingQuery) since 2.2.0
}
\examples{
\dontrun{
sparkR.session()
path <- "path/to/file.json"
df <- read.json(path)
explain(df, TRUE)
}
\dontrun{ explain(sq) }
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
\code{\link{persist}()},
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

Other StreamingQuery methods: 
\code{\link{awaitTermination}()},
\code{\link{isActive}()},
\code{\link{lastProgress}()},
\code{\link{queryName}()},
\code{\link{status}()},
\code{\link{stopQuery}()}
}
\concept{SparkDataFrame functions}
\concept{StreamingQuery methods}
