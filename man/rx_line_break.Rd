% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/special_characters.R
\name{rx_line_break}
\alias{rx_line_break}
\title{Match a line break.}
\usage{
rx_line_break(.data = NULL)
}
\arguments{
\item{.data}{Expression to append, typically pulled from the pipe \code{ \%>\% }}
}
\description{
This expression looks for line breaks, both Unix and Windows
style by using the appropriate \emph{non printable characters}.
}
\examples{
rx_line_break()

# create an expression
x <- rx_line_break()

# create input
string <- "foo\nbar"

# extract match
regmatches(string, regexpr(x, string))

}
\references{
Unix style: \url{https://codepoints.net/U+000A}

Windows style: \url{https://codepoints.net/U+000D}

Non printable character: \url{https://www.regular-expressions.info/nonprint.html}
}
