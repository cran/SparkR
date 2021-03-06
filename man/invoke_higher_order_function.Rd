% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{invoke_higher_order_function}
\alias{invoke_higher_order_function}
\title{Invokes higher order function expression identified by name,
(relative to o.a.s.sql.catalyst.expressions)}
\usage{
invoke_higher_order_function(name, cols, funs)
}
\arguments{
\item{name}{character}

\item{cols}{list of character or Column objects}

\item{funs}{list of named list(fun = ..., expected_narg = ...)}
}
\value{
a \code{Column} representing name applied to cols with funs
}
\description{
Invokes higher order function expression identified by name,
(relative to o.a.s.sql.catalyst.expressions)
}
