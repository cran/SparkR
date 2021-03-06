% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/functions.R
\name{last}
\alias{last}
\alias{last,characterOrColumn-method}
\title{last}
\usage{
last(x, ...)

\S4method{last}{characterOrColumn}(x, na.rm = FALSE)
}
\arguments{
\item{x}{column to compute on.}

\item{...}{further arguments to be passed to or from other methods.}

\item{na.rm}{a logical value indicating whether NA values should be stripped
before the computation proceeds.}
}
\description{
Aggregate function: returns the last value in a group.
}
\details{
The function by default returns the last values it sees. It will return the last non-missing
value it sees when na.rm is set to true. If all values are missing, then NA is returned.
Note: the function is non-deterministic because its results depends on the order of the rows
which may be non-deterministic after a shuffle.
}
\note{
last since 1.4.0
}
\examples{
\dontrun{
last(df$c)
last(df$c, TRUE)
}
}
\seealso{
Other aggregate functions: 
\code{\link{avg}()},
\code{\link{column_aggregate_functions}},
\code{\link{corr}()},
\code{\link{count}()},
\code{\link{cov}()},
\code{\link{first}()}
}
\concept{aggregate functions}
