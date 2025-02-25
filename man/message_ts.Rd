% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/timestamp_messages.R
\name{message_ts}
\alias{message_ts}
\title{Generate a timestamped diagnostic message}
\usage{
message_ts(...)
}
\arguments{
\item{...}{Zero or more objects which can be coerced to character
(and which are pasted together with no separator)}
}
\value{
no return; sends a diagnostic message to stderr.
}
\description{
A wrapper for the base 'message' function that adds a timestamp to the beginning of the message.
}
\examples{
# Add a timestamp to a message
message_ts("Some text")

# Multiple objects are concatenated without a space
message_ts("Concatenated", "text")
}
