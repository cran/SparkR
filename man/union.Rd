% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/DataFrame.R
\name{union}
\alias{union}
\alias{union,SparkDataFrame,SparkDataFrame-method}
\title{Return a new SparkDataFrame containing the union of rows}
\usage{
union(x, y)

\S4method{union}{SparkDataFrame,SparkDataFrame}(x, y)
}
\arguments{
\item{x}{A SparkDataFrame}

\item{y}{A SparkDataFrame}
}
\value{
A SparkDataFrame containing the result of the union.
}
\description{
Return a new SparkDataFrame containing the union of rows in this SparkDataFrame
and another SparkDataFrame. This is equivalent to \code{UNION ALL} in SQL.
Input SparkDataFrames can have different schemas (names and data types).
}
\details{
Note: This does not remove duplicate rows across the two SparkDataFrames.
Also as standard in SQL, this function resolves columns by position (not by name).
}
\note{
union since 2.0.0
}
\examples{
\dontrun{
sparkR.session()
df1 <- read.json(path)
df2 <- read.json(path2)
unioned <- union(df, df2)
unions <- rbind(df, df2, df3, df4)
}
}
\seealso{
\link{rbind} \link{unionByName}

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
\code{\link{summary}()},
\code{\link{take}()},
\code{\link{toJSON}()},
\code{\link{unionAll}()},
\code{\link{unionByName}()},
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
