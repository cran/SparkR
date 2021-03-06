% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/functions.R
\name{timestamp_seconds}
\alias{timestamp_seconds}
\alias{column_datetime_functions}
\alias{dayofmonth,Column-method}
\alias{dayofmonth}
\alias{dayofweek,Column-method}
\alias{dayofweek}
\alias{dayofyear,Column-method}
\alias{dayofyear}
\alias{hour,Column-method}
\alias{hour}
\alias{last_day,Column-method}
\alias{last_day}
\alias{minute,Column-method}
\alias{minute}
\alias{month,Column-method}
\alias{month}
\alias{quarter,Column-method}
\alias{quarter}
\alias{second,Column-method}
\alias{second}
\alias{to_date,Column,missing-method}
\alias{to_date}
\alias{to_date,Column,character-method}
\alias{to_timestamp,Column,missing-method}
\alias{to_timestamp}
\alias{to_timestamp,Column,character-method}
\alias{weekofyear,Column-method}
\alias{weekofyear}
\alias{year,Column-method}
\alias{year}
\alias{from_unixtime,Column-method}
\alias{from_unixtime}
\alias{window,Column-method}
\alias{window}
\alias{unix_timestamp,missing,missing-method}
\alias{unix_timestamp}
\alias{unix_timestamp,Column,missing-method}
\alias{unix_timestamp,Column,character-method}
\alias{trunc,Column-method}
\alias{trunc}
\alias{date_trunc,character,Column-method}
\alias{date_trunc}
\alias{current_date,missing-method}
\alias{current_date}
\alias{current_timestamp,missing-method}
\alias{current_timestamp}
\alias{timestamp_seconds,Column-method}
\title{Date time functions for Column operations}
\usage{
current_date(x = "missing")

current_timestamp(x = "missing")

date_trunc(format, x)

dayofmonth(x)

dayofweek(x)

dayofyear(x)

from_unixtime(x, ...)

hour(x)

last_day(x)

minute(x)

month(x)

quarter(x)

second(x)

timestamp_seconds(x)

to_date(x, format)

to_timestamp(x, format)

unix_timestamp(x, format)

weekofyear(x)

window(x, ...)

year(x)

\S4method{dayofmonth}{Column}(x)

\S4method{dayofweek}{Column}(x)

\S4method{dayofyear}{Column}(x)

\S4method{hour}{Column}(x)

\S4method{last_day}{Column}(x)

\S4method{minute}{Column}(x)

\S4method{month}{Column}(x)

\S4method{quarter}{Column}(x)

\S4method{second}{Column}(x)

\S4method{to_date}{Column,missing}(x, format)

\S4method{to_date}{Column,character}(x, format)

\S4method{to_timestamp}{Column,missing}(x, format)

\S4method{to_timestamp}{Column,character}(x, format)

\S4method{weekofyear}{Column}(x)

\S4method{year}{Column}(x)

\S4method{from_unixtime}{Column}(x, format = "yyyy-MM-dd HH:mm:ss")

\S4method{window}{Column}(x, windowDuration, slideDuration = NULL, startTime = NULL)

\S4method{unix_timestamp}{missing,missing}(x, format)

\S4method{unix_timestamp}{Column,missing}(x, format)

\S4method{unix_timestamp}{Column,character}(x, format = "yyyy-MM-dd HH:mm:ss")

\S4method{trunc}{Column}(x, format)

\S4method{date_trunc}{character,Column}(format, x)

\S4method{current_date}{missing}()

\S4method{current_timestamp}{missing}()

\S4method{timestamp_seconds}{Column}(x)
}
\arguments{
\item{x}{Column to compute on. In \code{window}, it must be a time Column of
\code{TimestampType}. This is not used with \code{current_date} and
\code{current_timestamp}}

\item{format}{The format for the given dates or timestamps in Column \code{x}. See the
format used in the following methods:
\itemize{
\item \code{to_date} and \code{to_timestamp}: it is the string to use to parse
     Column \code{x} to DateType or TimestampType.
\item \code{trunc}: it is the string to use to specify the truncation method.
     For example, "year", "yyyy", "yy" for truncate by year, or "month", "mon",
     "mm" for truncate by month.
\item \code{date_trunc}: it is similar with \code{trunc}'s but additionally
     supports "day", "dd", "second", "minute", "hour", "week" and "quarter".
}}

\item{...}{additional argument(s).}

\item{windowDuration}{a string specifying the width of the window, e.g. '1 second',
'1 day 12 hours', '2 minutes'. Valid interval strings are 'week',
'day', 'hour', 'minute', 'second', 'millisecond', 'microsecond'. Note that
the duration is a fixed length of time, and does not vary over time
according to a calendar. For example, '1 day' always means 86,400,000
milliseconds, not a calendar day.}

\item{slideDuration}{a string specifying the sliding interval of the window. Same format as
\code{windowDuration}. A new window will be generated every
\code{slideDuration}. Must be less than or equal to
the \code{windowDuration}. This duration is likewise absolute, and does not
vary according to a calendar.}

\item{startTime}{the offset with respect to 1970-01-01 00:00:00 UTC with which to start
window intervals. For example, in order to have hourly tumbling windows
that start 15 minutes past the hour, e.g. 12:15-13:15, 13:15-14:15... provide
\code{startTime} as \code{"15 minutes"}.}
}
\description{
Date time functions defined for \code{Column}.
}
\details{
\code{dayofmonth}: Extracts the day of the month as an integer from a
given date/timestamp/string.

\code{dayofweek}: Extracts the day of the week as an integer from a
given date/timestamp/string.

\code{dayofyear}: Extracts the day of the year as an integer from a
given date/timestamp/string.

\code{hour}: Extracts the hour as an integer from a given date/timestamp/string.

\code{last_day}: Given a date column, returns the last day of the month which the
given date belongs to. For example, input "2015-07-27" returns "2015-07-31" since
July 31 is the last day of the month in July 2015.

\code{minute}: Extracts the minute as an integer from a given date/timestamp/string.

\code{month}: Extracts the month as an integer from a given date/timestamp/string.

\code{quarter}: Extracts the quarter as an integer from a given date/timestamp/string.

\code{second}: Extracts the second as an integer from a given date/timestamp/string.

\code{to_date}: Converts the column into a DateType. You may optionally specify
a format according to the rules in:
\href{https://spark.apache.org/docs/latest/sql-ref-datetime-pattern.html}{Datetime Pattern}
If the string cannot be parsed according to the specified format (or default),
the value of the column will be null.
By default, it follows casting rules to a DateType if the format is omitted
(equivalent to \code{cast(df$x, "date")}).

\code{to_timestamp}: Converts the column into a TimestampType. You may optionally specify
a format according to the rules in:
\href{https://spark.apache.org/docs/latest/sql-ref-datetime-pattern.html}{Datetime Pattern}
If the string cannot be parsed according to the specified format (or default),
the value of the column will be null.
By default, it follows casting rules to a TimestampType if the format is omitted
(equivalent to \code{cast(df$x, "timestamp")}).

\code{weekofyear}: Extracts the week number as an integer from a given date/timestamp/string.

\code{year}: Extracts the year as an integer from a given date/timestamp/string.

\code{from_unixtime}: Converts the number of seconds from unix epoch (1970-01-01 00:00:00 UTC)
to a string representing the timestamp of that moment in the current system time zone in the JVM
in the given format.
See \href{https://spark.apache.org/docs/latest/sql-ref-datetime-pattern.html}{
Datetime Pattern} for available options.

\code{window}: Bucketizes rows into one or more time windows given a timestamp specifying column.
Window starts are inclusive but the window ends are exclusive, e.g. 12:05 will be in the window
[12:05,12:10) but not in [12:00,12:05). Windows can support microsecond precision. Windows in
the order of months are not supported. It returns an output column of struct called 'window'
by default with the nested columns 'start' and 'end'

\code{unix_timestamp}: Gets current Unix timestamp in seconds.

\code{trunc}: Returns date truncated to the unit specified by the format.

\code{date_trunc}: Returns timestamp truncated to the unit specified by the format.

\code{current_date}: Returns the current date at the start of query evaluation as a date column.
All calls of current_date within the same query return the same value.

\code{current_timestamp}: Returns the current timestamp at the start of query evaluation as
a timestamp column. All calls of current_timestamp within the same query return the same value.

\code{timestamp_seconds}: Creates timestamp from the number of seconds since UTC epoch.
}
\note{
dayofmonth since 1.5.0

dayofweek since 2.3.0

dayofyear since 1.5.0

hour since 1.5.0

last_day since 1.5.0

minute since 1.5.0

month since 1.5.0

quarter since 1.5.0

second since 1.5.0

to_date(Column) since 1.5.0

to_date(Column, character) since 2.2.0

to_timestamp(Column) since 2.2.0

to_timestamp(Column, character) since 2.2.0

weekofyear since 1.5.0

year since 1.5.0

from_unixtime since 1.5.0

window since 2.0.0

unix_timestamp since 1.5.0

unix_timestamp(Column) since 1.5.0

unix_timestamp(Column, character) since 1.5.0

trunc since 2.3.0

date_trunc since 2.3.0

current_date since 2.3.0

current_timestamp since 2.3.0

timestamp_seconds since 3.1.0
}
\examples{
\dontrun{
dts <- c("2005-01-02 18:47:22",
        "2005-12-24 16:30:58",
        "2005-10-28 07:30:05",
        "2005-12-28 07:01:05",
        "2006-01-24 00:01:10")
y <- c(2.0, 2.2, 3.4, 2.5, 1.8)
df <- createDataFrame(data.frame(time = as.POSIXct(dts), y = y))}

\dontrun{
head(select(df, df$time, year(df$time), quarter(df$time), month(df$time),
            dayofmonth(df$time), dayofweek(df$time), dayofyear(df$time), weekofyear(df$time)))
head(agg(groupBy(df, year(df$time)), count(df$y), avg(df$y)))
head(agg(groupBy(df, month(df$time)), avg(df$y)))}

\dontrun{
head(select(df, hour(df$time), minute(df$time), second(df$time)))
head(agg(groupBy(df, dayofmonth(df$time)), avg(df$y)))
head(agg(groupBy(df, hour(df$time)), avg(df$y)))
head(agg(groupBy(df, minute(df$time)), avg(df$y)))}

\dontrun{
head(select(df, df$time, last_day(df$time), month(df$time)))}

\dontrun{
tmp <- createDataFrame(data.frame(time_string = dts))
tmp2 <- mutate(tmp, date1 = to_date(tmp$time_string),
                   date2 = to_date(tmp$time_string, "yyyy-MM-dd"),
                   date3 = date_format(tmp$time_string, "MM/dd/yyy"),
                   time1 = to_timestamp(tmp$time_string),
                   time2 = to_timestamp(tmp$time_string, "yyyy-MM-dd"))
head(tmp2)}

\dontrun{
tmp <- mutate(df, to_unix = unix_timestamp(df$time),
                  to_unix2 = unix_timestamp(df$time, 'yyyy-MM-dd HH'),
                  from_unix = from_unixtime(unix_timestamp(df$time)),
                  from_unix2 = from_unixtime(unix_timestamp(df$time), 'yyyy-MM-dd HH:mm'))
head(tmp)}

\dontrun{
# One minute windows every 15 seconds 10 seconds after the minute, e.g. 09:00:10-09:01:10,
# 09:00:25-09:01:25, 09:00:40-09:01:40, ...
window(df$time, "1 minute", "15 seconds", "10 seconds")

# One minute tumbling windows 15 seconds after the minute, e.g. 09:00:15-09:01:15,
# 09:01:15-09:02:15...
window(df$time, "1 minute", startTime = "15 seconds")

# Thirty-second windows every 10 seconds, e.g. 09:00:00-09:00:30, 09:00:10-09:00:40, ...
window(df$time, "30 seconds", "10 seconds")}

\dontrun{
head(select(df, df$time, trunc(df$time, "year"), trunc(df$time, "yy"),
           trunc(df$time, "month"), trunc(df$time, "mon")))}

\dontrun{
head(select(df, df$time, date_trunc("hour", df$time), date_trunc("minute", df$time),
            date_trunc("week", df$time), date_trunc("quarter", df$time)))}
\dontrun{
head(select(df, current_date(), current_timestamp()))}
}
\seealso{
Other data time functions: 
\code{\link{column_datetime_diff_functions}}
}
\concept{data time functions}
