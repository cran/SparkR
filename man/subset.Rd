% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/DataFrame.R
\name{subset}
\alias{subset}
\alias{[[}
\alias{[[,SparkDataFrame,numericOrcharacter-method}
\alias{[[<-}
\alias{[[<-,SparkDataFrame,numericOrcharacter-method}
\alias{[}
\alias{[,SparkDataFrame-method}
\alias{subset,SparkDataFrame-method}
\title{Subset}
\usage{
subset(x, ...)

\S4method{[[}{SparkDataFrame,numericOrcharacter}(x, i)

\S4method{[[}{SparkDataFrame,numericOrcharacter}(x, i) <- value

\S4method{[}{SparkDataFrame}(x, i, j, ..., drop = F)

\S4method{subset}{SparkDataFrame}(x, subset, select, drop = F, ...)
}
\arguments{
\item{x}{a SparkDataFrame.}

\item{...}{currently not used.}

\item{i, subset}{(Optional) a logical expression to filter on rows.
For extract operator [[ and replacement operator [[<-, the indexing parameter for
a single Column.}

\item{value}{a Column or an atomic vector in the length of 1 as literal value, or \code{NULL}.
If \code{NULL}, the specified Column is dropped.}

\item{j, select}{expression for the single Column or a list of columns to select from the
SparkDataFrame.}

\item{drop}{if TRUE, a Column will be returned if the resulting dataset has only one column.
Otherwise, a SparkDataFrame will always be returned.}
}
\value{
A new SparkDataFrame containing only the rows that meet the condition with selected
        columns.
}
\description{
Return subsets of SparkDataFrame according to given conditions
}
\note{
[[ since 1.4.0

[[<- since 2.1.1

[ since 1.4.0

subset since 1.5.0
}
\examples{
\dontrun{
  # Columns can be selected using [[ and [
  df[[2]] == df[["age"]]
  df[,2] == df[,"age"]
  df[,c("name", "age")]
  # Or to filter rows
  df[df$age > 20,]
  # SparkDataFrame can be subset on both rows and Columns
  df[df$name == "Smith", c(1,2)]
  df[df$age \%in\% c(19, 30), 1:2]
  subset(df, df$age \%in\% c(19, 30), 1:2)
  subset(df, df$age \%in\% c(19), select = c(1,2))
  subset(df, select = c(1,2))
  # Columns can be selected and set
  df[["age"]] <- 23
  df[[1]] <- df$age
  df[[2]] <- NULL # drop column
}
}
\seealso{
\link{withColumn}

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

Other subsetting functions: 
\code{\link{filter}()},
\code{\link{select}()}
}
\concept{SparkDataFrame functions}
\concept{subsetting functions}
