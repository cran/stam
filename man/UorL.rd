\name{UorL}
\alias{UorL}

\title{Converting all the Letters of Character Variable into Uppercase or Lowercase}

\description{
  \code{UorL} was used to convert the letters for a character variable into uppercase or lowercase.
  The reason we need to do this is sometimes we may be required to compared the same character variable 
  from different files or sources for a consistency check.
}

\usage{
UorL(x,charlower=TRUE)
}

\arguments{

  \item{x}{
    Specify the character variable whose letters to be changed into uppercase or lowercase.
  }

  \item{charlower}{
    Specify whether you want to get the uppercase letters or lowercase letters.
 It defaults to change all the letters into lowercase.   
  }
  
}

\details{
  \code{UorL} is an easy function to convert the letters for a character variable into uppercase or lowercase.
}

\value{
  \code{UorL} returns the results of conversion directly. \cr
}

\author{
  Zhijie Zhang, \email{epistat@gmail.com}
}

\note{
 None.
}

\seealso{ 
See also toupper and tolower functions. 
}

\examples{
\dontrun{
#Example
l<-"IamAGenius"
UorL(l)
UorL(l,charlower=TRUE)
UorL(l,charlower=T)
UorL(l,charlower=FALSE)
UorL(l,charlower=F)
} % enddontrun
}

\keyword{
character
}

