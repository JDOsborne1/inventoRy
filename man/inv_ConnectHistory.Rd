% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dispatch.R
\name{inv_ConnectHistory}
\alias{inv_ConnectHistory}
\title{History Connector}
\usage{
inv_ConnectHistory(
  input = NULL,
  .inventory_dir = get("inventory_dir"),
  filename = "inventory_history.csv"
)
}
\arguments{
\item{filename}{}
}
\value{

}
\description{
This connector either serves the value, if there is no input, or
  writes the input to the value of the inventory history.
}
