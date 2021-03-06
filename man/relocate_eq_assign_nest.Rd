% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/relevel.R
\name{relocate_eq_assign_nest}
\alias{relocate_eq_assign_nest}
\title{Relocate all assignment expressions that contain \code{EQ_ASSIGN} within a \emph{nest}}
\usage{
relocate_eq_assign_nest(pd)
}
\arguments{
\item{pd}{A parse table.}
}
\description{
Implements the relocation of an \code{EQ_ASSIGN} and associated tokens
within a \emph{nest} (nested parse table at one level of nesting).
Note that one assignment expression (such as "a = b = c") can include
multiple assignment operators, an assignment involves just one assignment
oparator.
For the relocation of assignment expressions that contain \code{EQ_ASSIGN} within
a \emph{nest}, we need to first find the expressions that contain \code{=} and then
split the \emph{nest} into parse tables each containing one such assignment
expression and then relocate each of them separately.
We can't do all of them together because:
}
\details{
\itemize{
\item An assignment can contain more than just three tokens, e.g. (a <- b <- c).
\item Two assignemnts can be in the same nest although they don't belong to the
same assignment (if-else statement).
}

Please refer to the section 'Examples' in \code{\link[=relocate_eq_assign]{relocate_eq_assign()}} for details.
}
