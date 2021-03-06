% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Timeseries.R
\name{Timeseries}
\alias{Timeseries}
\title{Interactive Seasonal Decomposition of Time Series by Loess and plot it with dygraph}
\usage{
Timeseries(data, height = 200, width = 1000, n = 10)
}
\arguments{
\item{data}{A data.frame object that is to be analyzed (all categorical variables with be transformed to metrical variables)}

\item{height}{The height of all plots}

\item{width}{The width of all plots}

\item{n}{A numeric value indicating from what number of different values a variable is seen as categorical variables, all variables that have more different values than n are being treated as metric values}
}
\description{
Takes any metric data with time series and plots a seasional decomposition by Loess.
}
\details{
At first you can chose what metric variable should be composed into a seasonal, trend and remainder part. Then you have to choose from what year to what year the data was observed
and the frequency of observations per year. For monthly observed data this parameter should be 12. The STL algorithm is set up in two loops, one inner loop to update the seasonal and trend component and one to updated the robust weights of each oberservation.
If you want to update any robust weights you can press the button "Robust Fitting". The bandwidth of the estimation used updating the seasonal component is usually the amount of observations in one period, but can also be set individually, if you don't press the
"Periodicity of the Loess window for the Seasional Component".
You can brush over any part of the decomposition zoom in on that specific area, perform a double click in order to return to the full data.
}
\examples{

if (interactive()) {
  data=tseries::get.hist.quote(start = as.Date("2000-01-01"),
                               end = as.Date("2005-01-01"),provider = "yahoo",
                               instrument = "^DJI",quiet = T)
  data=as.data.frame(data)
  Timeseries(data=data)
}
}
\references{
R. B. Cleveland, W. S. Cleveland, J.E. McRae, and I. Terpenning (1990) STL: A Seasonal-Trend Decomposition Procedure Based on Loess. Journal of Official Statistics, 6.
}
\author{
Cornelius Fritz <cornelius.fritz@campus.lmu.de>
}
