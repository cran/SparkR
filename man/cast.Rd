% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/column.R
\name{cast}
\alias{cast}
\alias{cast,Column-method}
\title{Casts the column to a different data type.}
\usage{
cast(x, dataType)

\S4method{cast}{Column}(x, dataType)
}
\arguments{
\item{x}{a Column.}

\item{dataType}{a character object describing the target data type.
See
\href{https://spark.apache.org/docs/latest/sparkr.html#data-type-mapping-between-r-and-spark}{
Spark Data Types} for available data types.}
}
\description{
Casts the column to a different data type.
}
\note{
cast since 1.4.0
}
\examples{
\dontrun{
  cast(df$age, "string")
}
}
\seealso{
Other column_func: 
\code{\link{alias}()},
\code{\link{between}()},
\code{\link{endsWith}()},
\code{\link{otherwise}()},
\code{\link{over}()},
\code{\link{startsWith}()},
\code{\link{substr}()}
}
\concept{column_func}
