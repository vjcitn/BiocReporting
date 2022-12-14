#' gather support site statistics in an interval
#' @import httr
#' @param base character(1) URL
#' @param from character(1) date in format ("YYYY/MM/DD/")
#' @param to character(1) date in format ("YYYY/MM/DD/")
#' @return list with components userdiff, toplevdiff, questdiff, respdiff
#' @examples
#' get_support_site_stats()
#' @export
get_support_site_stats = function(base = "https://support.bioconductor.org/api/stats/date/",
  from = "2021/01/01/", to = "2021/12/31/") {

 stat0 <- GET(paste0(base, from)) |> content()
 stat1 <- GET(paste0(base, to)) |> content()

 stats = list()
 stats$userdiff = stat1$users - stat0$users
 stats$toplevdiff = stat1$toplevel - stat0$toplevel
 stats$questdiff = stat1$questions - stat0$questions
 stats$respdiff = (stat1$answers + stat1$comments) - (stat0$answers + stat0$comments)
 stats$from = substr(from,1,10)
 stats$to = substr(to,1,10)
 class(stats) = c("bioc_support_stats", "list")
 stats
}

#' show a report on support site usage
#' @export
print.bioc_support_stats = function(x, ...) {
 cat("Bioconductor support site usage increments.\n")
 cat(sprintf("  From %s to %s : \n", x$from, x$to))
 cat(sprintf("   Users added: %d; Top-level posts added: %d\n", x$userdiff, x$toplevdiff))
 cat(sprintf("   Questions added: %d; answers/comments added: %d\n", x$questdiff, x$respdiff))
}

