% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale-viridis.R, R/zxx.R
\name{scale_colour_viridis_d}
\alias{scale_colour_viridis_d}
\alias{scale_fill_viridis_d}
\alias{scale_colour_viridis_c}
\alias{scale_fill_viridis_c}
\alias{scale_colour_viridis_b}
\alias{scale_fill_viridis_b}
\alias{scale_colour_ordinal}
\alias{scale_color_ordinal}
\alias{scale_fill_ordinal}
\alias{scale_color_viridis_d}
\alias{scale_color_viridis_c}
\alias{scale_color_viridis_b}
\title{Viridis colour scales from viridisLite}
\usage{
scale_colour_viridis_d(
  ...,
  alpha = 1,
  begin = 0,
  end = 1,
  direction = 1,
  option = "D",
  aesthetics = "colour"
)

scale_fill_viridis_d(
  ...,
  alpha = 1,
  begin = 0,
  end = 1,
  direction = 1,
  option = "D",
  aesthetics = "fill"
)

scale_colour_viridis_c(
  ...,
  alpha = 1,
  begin = 0,
  end = 1,
  direction = 1,
  option = "D",
  values = NULL,
  space = "Lab",
  na.value = "grey50",
  guide = "colourbar",
  aesthetics = "colour"
)

scale_fill_viridis_c(
  ...,
  alpha = 1,
  begin = 0,
  end = 1,
  direction = 1,
  option = "D",
  values = NULL,
  space = "Lab",
  na.value = "grey50",
  guide = "colourbar",
  aesthetics = "fill"
)

scale_colour_viridis_b(
  ...,
  alpha = 1,
  begin = 0,
  end = 1,
  direction = 1,
  option = "D",
  values = NULL,
  space = "Lab",
  na.value = "grey50",
  guide = "coloursteps",
  aesthetics = "colour"
)

scale_fill_viridis_b(
  ...,
  alpha = 1,
  begin = 0,
  end = 1,
  direction = 1,
  option = "D",
  values = NULL,
  space = "Lab",
  na.value = "grey50",
  guide = "coloursteps",
  aesthetics = "fill"
)
}
\arguments{
\item{...}{Other arguments passed on to \code{\link[=discrete_scale]{discrete_scale()}},
\code{\link[=continuous_scale]{continuous_scale()}}, or \code{\link[=binned_scale]{binned_scale()}} to control name, limits, breaks,
labels and so forth.}

\item{alpha}{The alpha transparency, a number in [0,1], see argument alpha in
\code{\link[grDevices]{hsv}}.}

\item{begin, end}{The (corrected) hue in \verb{[0,1]} at which the color map
begins and ends.}

\item{direction}{Sets the order of colors in the scale. If 1, the default,
colors are ordered from darkest to lightest. If -1, the order of colors is
reversed.}

\item{option}{A character string indicating the color map option to use.
Eight options are available:
\itemize{
\item \code{"magma"} (or \code{"A"})
\item \code{"inferno"} (or \code{"B"})
\item \code{"plasma"} (or \code{"C"})
\item \code{"viridis"} (or \code{"D"})
\item \code{"cividis"} (or \code{"E"})
\item \code{"rocket"} (or \code{"F"})
\item \code{"mako"} (or \code{"G"})
\item \code{"turbo"} (or \code{"H"})
}}

\item{aesthetics}{Character string or vector of character strings listing the
name(s) of the aesthetic(s) that this scale works with. This can be useful, for
example, to apply colour settings to the \code{colour} and \code{fill} aesthetics at the
same time, via \code{aesthetics = c("colour", "fill")}.}

\item{values}{if colours should not be evenly positioned along the gradient
this vector gives the position (between 0 and 1) for each colour in the
\code{colours} vector. See \code{\link[scales:rescale]{rescale()}} for a convenience function
to map an arbitrary range to between 0 and 1.}

\item{space}{colour space in which to calculate gradient. Must be "Lab" -
other values are deprecated.}

\item{na.value}{Missing values will be replaced with this value.}

\item{guide}{A function used to create a guide or its name. See
\code{\link[=guides]{guides()}} for more information.}
}
\description{
The \code{viridis} scales provide colour maps that are perceptually uniform in both
colour and black-and-white. They are also designed to be perceived by viewers
with common forms of colour blindness. See also
\url{https://bids.github.io/colormap/}.
}
\examples{
# viridis is the default colour/fill scale for ordered factors
set.seed(596)
dsamp <- diamonds[sample(nrow(diamonds), 1000), ]
ggplot(dsamp, aes(carat, price)) +
  geom_point(aes(colour = clarity))

# Use viridis_d with discrete data
txsamp <- subset(txhousing, city \%in\%
  c("Houston", "Fort Worth", "San Antonio", "Dallas", "Austin"))
(d <- ggplot(data = txsamp, aes(x = sales, y = median)) +
   geom_point(aes(colour = city)))
d + scale_colour_viridis_d()

# Change scale label
d + scale_colour_viridis_d("City\nCenter")

# Select palette to use, see ?scales::pal_viridis for more details
d + scale_colour_viridis_d(option = "plasma")
d + scale_colour_viridis_d(option = "inferno")

# scale_fill_viridis_d works just the same as
# scale_colour_viridis_d but for fill colours
p <- ggplot(txsamp, aes(x = median, fill = city)) +
  geom_histogram(position = "dodge", binwidth = 15000)
p + scale_fill_viridis_d()
# the order of colour can be reversed
p + scale_fill_viridis_d(direction = -1)

# Use viridis_c with continuous data
(v <- ggplot(faithfuld) +
  geom_tile(aes(waiting, eruptions, fill = density)))
v + scale_fill_viridis_c()
v + scale_fill_viridis_c(option = "plasma")

# Use viridis_b to bin continuous data before mapping
v + scale_fill_viridis_b()

}
\seealso{
The documentation on \link[=aes_colour_fill_alpha]{colour aesthetics}.

Other colour scales: 
\code{\link{scale_alpha}()},
\code{\link{scale_colour_brewer}()},
\code{\link{scale_colour_continuous}()},
\code{\link{scale_colour_gradient}()},
\code{\link{scale_colour_grey}()},
\code{\link{scale_colour_hue}()},
\code{\link{scale_colour_identity}()},
\code{\link{scale_colour_manual}()},
\code{\link{scale_colour_steps}()}
}
\concept{colour scales}
