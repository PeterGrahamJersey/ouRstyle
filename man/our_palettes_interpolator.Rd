% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/our_palettes_interpolator.R
\name{our_palettes_interpolator}
\alias{our_palettes_interpolator}
\title{Generates a function to interpolate our color palette.}
\source{
\url{https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2}
}
\usage{
our_palettes_interpolator(palette = "main", reverse = FALSE, ...)
}
\arguments{
\item{palette}{Character name of palette in our_palettes_raw}

\item{reverse}{Boolean indicating whether the palette should be reversed}

\item{...}{Additional arguments to pass to colorRampPalette()}
}
\value{
Returns a function that takes argument n where n is the number of colours to interpolate.
}
\description{
Generates a function to interpolate our color palette.
}
\examples{
\dontrun{
 our_palettes_interpolator('default')
 our_palettes_interpolator('default')(10)
 }
}
\keyword{internal}
