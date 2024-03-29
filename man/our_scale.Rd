% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/our_scale.R
\name{our_scale}
\alias{our_scale}
\alias{our_scale_colour_d}
\alias{our_scale_color_d}
\alias{our_scale_colour_c}
\alias{our_scale_color_c}
\alias{our_scale_fill_d}
\alias{our_scale_fill_c}
\title{Create a discrete or continuous scale using our colours}
\usage{
our_scale_colour_d(palette = "default", reverse = F, ...)

our_scale_color_d(palette = "default", reverse = F, ...)

our_scale_colour_c(palette = "default", reverse = F, ...)

our_scale_color_c(palette = "default", reverse = F, ...)

our_scale_fill_d(palette = "default", reverse = F, ...)

our_scale_fill_c(palette = "default", reverse = F, ...)
}
\arguments{
\item{palette}{Character name of palette in our_palettes_raw}

\item{reverse}{Boolean indicating whether the palette should be reversed}

\item{...}{Additional arguments passed to the scale constructor}
}
\description{
Create a discrete or continuous scale using our colours
}
\section{Functions}{
\itemize{
\item \code{our_scale_colour_d}: discrete colour scale

\item \code{our_scale_color_d}: alias for discrete colour scale

\item \code{our_scale_colour_c}: continuous colour scale

\item \code{our_scale_color_c}: alias for continuous colour scale

\item \code{our_scale_fill_d}: discrete fill scale

\item \code{our_scale_fill_c}: continuous fill scale
}}

\examples{
  library(ggplot2)
  
  # Discrete Colour scale
  ggplot(mtcars) + 
    geom_point(aes(x = mpg, 
                   y = wt, 
                   color = as.character(carb))) + 
    our_scale_color_d('default')

  # Continuous Colour Scale
  ggplot(mtcars) + 
    geom_point(aes(x = mpg, 
                   y = wt, 
                   color = wt)) + 
    our_scale_color_c('default')
    
  # Discrete Fill Scale
  ggplot(mtcars) + 
    geom_col(aes(x = reorder(rownames(mtcars), mpg), 
                 y = mpg, 
                 fill = as.character(carb))) +
    coord_flip() +             
    our_scale_fill_d('default') +
    facet_wrap(~as.character(carb), scales='free_y')
    
  # Continuous fill scale  
  ggplot(mtcars) + 
    geom_col(aes(x = reorder(rownames(mtcars), mpg), 
                 y = mpg, 
                 fill = mpg)) +
    coord_flip() +             
    our_scale_fill_c('default')
}
\seealso{
Other access our colours: \code{\link{our_colours}},
  \code{\link{our_palettes}}
}
