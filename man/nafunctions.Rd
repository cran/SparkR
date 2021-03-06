% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/DataFrame.R
\name{dropna}
\alias{dropna}
\alias{na.omit}
\alias{fillna}
\alias{dropna,SparkDataFrame-method}
\alias{na.omit,SparkDataFrame-method}
\alias{fillna,SparkDataFrame-method}
\title{A set of SparkDataFrame functions working with NA values}
\usage{
dropna(x, how = c("any", "all"), minNonNulls = NULL, cols = NULL)

na.omit(object, ...)

fillna(x, value, cols = NULL)

\S4method{dropna}{SparkDataFrame}(x, how = c("any", "all"), minNonNulls = NULL, cols = NULL)

\S4method{na.omit}{SparkDataFrame}(object, how = c("any", "all"), minNonNulls = NULL, cols = NULL)

\S4method{fillna}{SparkDataFrame}(x, value, cols = NULL)
}
\arguments{
\item{x}{a SparkDataFrame.}

\item{how}{"any" or "all".
if "any", drop a row if it contains any nulls.
if "all", drop a row only if all its values are null.
if \code{minNonNulls} is specified, how is ignored.}

\item{minNonNulls}{if specified, drop rows that have less than
\code{minNonNulls} non-null values.
This overwrites the how parameter.}

\item{cols}{optional list of column names to consider. In \code{fillna},
columns specified in cols that do not have matching data
type are ignored. For example, if value is a character, and
subset contains a non-character column, then the non-character
column is simply ignored.}

\item{object}{a SparkDataFrame.}

\item{...}{further arguments to be passed to or from other methods.}

\item{value}{value to replace null values with.
Should be an integer, numeric, character or named list.
If the value is a named list, then cols is ignored and
value must be a mapping from column name (character) to
replacement value. The replacement value must be an
integer, numeric or character.}
}
\value{
A SparkDataFrame.
}
\description{
dropna, na.omit - Returns a new SparkDataFrame omitting rows with null values.
}
\note{
dropna since 1.4.0

na.omit since 1.5.0

fillna since 1.4.0
}
\examples{
\dontrun{
sparkR.session()
path <- "path/to/file.json"
df <- read.json(path)
dropna(df)
}
\dontrun{
sparkR.session()
path <- "path/to/file.json"
df <- read.json(path)
fillna(df, 1)
fillna(df, list("age" = 20, "name" = "unknown"))
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
