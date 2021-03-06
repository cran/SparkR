% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/DataFrame.R
\name{summary}
\alias{summary}
\alias{summary,SparkDataFrame-method}
\title{summary}
\usage{
summary(object, ...)

\S4method{summary}{SparkDataFrame}(object, ...)
}
\arguments{
\item{object}{a SparkDataFrame to be summarized.}

\item{...}{(optional) statistics to be computed for all columns.}
}
\value{
A SparkDataFrame.
}
\description{
Computes specified statistics for numeric and string columns. Available statistics are:
\itemize{
\item count
\item mean
\item stddev
\item min
\item max
\item arbitrary approximate percentiles specified as a percentage (e.g., "75\%")
}
If no statistics are given, this function computes count, mean, stddev, min,
approximate quartiles (percentiles at 25\%, 50\%, and 75\%), and max.
This function is meant for exploratory data analysis, as we make no guarantee about the
backward compatibility of the schema of the resulting Dataset. If you want to
programmatically compute summary statistics, use the \code{agg} function instead.
}
\note{
summary(SparkDataFrame) since 1.5.0

The statistics provided by \code{summary} were change in 2.3.0 use \link{describe} for
      previous defaults.
}
\examples{
\dontrun{
sparkR.session()
path <- "path/to/file.json"
df <- read.json(path)
summary(df)
summary(df, "min", "25\%", "75\%", "max")
summary(select(df, "age", "height"))
}
}
\seealso{
\link{describe}

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
