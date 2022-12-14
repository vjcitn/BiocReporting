% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/support-site-stats.R
\name{get_support_site_stats}
\alias{get_support_site_stats}
\title{gather support site statistics in an interval}
\usage{
get_support_site_stats(
  base = "https://support.bioconductor.org/api/stats/date/",
  from = "2021/01/01/",
  to = "2021/12/31/"
)
}
\arguments{
\item{base}{character(1) URL}

\item{from}{character(1) date in format ("YYYY/MM/DD/")}

\item{to}{character(1) date in format ("YYYY/MM/DD/")}
}
\value{
list with components userdiff, toplevdiff, questdiff, respdiff
}
\description{
gather support site statistics in an interval
}
\examples{
get_support_site_stats()
}
