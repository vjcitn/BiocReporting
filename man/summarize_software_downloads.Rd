% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download-stats.R
\name{summarize_software_downloads}
\alias{summarize_software_downloads}
\title{summarize download statistics for bioconductor software}
\usage{
summarize_software_downloads(years = 2018:2022, final = "2022-08-16")
}
\arguments{
\item{years}{integer(3)}
}
\value{
a list with components ipplot, dlplot with ggplot elements, and a tibble with all stats.
}
\description{
summarize download statistics for bioconductor software
}
\note{
Modified from BiocReports script to give raw data on download activities per month.
There may be effects in 2022 of modified distribution channels.
}
\examples{
pls = summarize_software_downloads()
opar = par(no.readonly=TRUE)
par(ask=TRUE)
pls$ipplot
pls$dlplot
par(opar)
}
