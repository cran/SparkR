% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/group.R, R/DataFrame.R
\name{agg}
\alias{agg}
\alias{summarize}
\alias{agg,GroupedData-method}
\alias{summarize,GroupedData-method}
\alias{agg,SparkDataFrame-method}
\alias{summarize,SparkDataFrame-method}
\title{summarize}
\usage{
agg(x, ...)

summarize(x, ...)

\S4method{agg}{GroupedData}(x, ...)

\S4method{summarize}{GroupedData}(x, ...)

\S4method{agg}{SparkDataFrame}(x, ...)

\S4method{summarize}{SparkDataFrame}(x, ...)
}
\arguments{
\item{x}{a SparkDataFrame or GroupedData.}

\item{...}{further arguments to be passed to or from other methods.}
}
\value{
A SparkDataFrame.
}
\description{
Aggregates on the entire SparkDataFrame without groups.
The resulting SparkDataFrame will also contain the grouping columns.

Compute aggregates by specifying a list of columns
}
\details{
df2 <- agg(df, <column> = <aggFunction>)
df2 <- agg(df, newColName = aggFunction(column))
}
\note{
agg since 1.4.0

summarize since 1.4.0

agg since 1.4.0

summarize since 1.4.0
}
\examples{
\dontrun{
 df2 <- agg(df, age = "sum")  # new column name will be created as 'SUM(age#0)'
 df3 <- agg(df, ageSum = sum(df$age)) # Creates a new column named ageSum
 df4 <- summarize(df, ageSum = max(df$age))
}
}
\seealso{
Other SparkDataFrame functions: 
\code{\link{SparkDataFrame-class}},
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
\concept{agg_funcs}
