% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/event_detectors.R
\name{constant_detector}
\alias{constant_detector}
\title{Detect Constant Values}
\usage{
constant_detector(data, run_length = 2 * 60 * 60, ...)
}
\arguments{
\item{data}{a sumsarizer formatted data table for one sensor mission}

\item{run_length}{the length of the run in minutes (min 5 samples)}

\item{...}{not currently used}
}
\description{
Detects a long run of constant values
}
\seealso{
Other event_detectors: \code{\link{apply_detector}},
  \code{\link{firefinder_detector}},
  \code{\link{sl3_model_detector}},
  \code{\link{threshold_detector}}
}
\concept{event_detectors}
