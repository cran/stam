\name{stkde.base}
\alias{stkde.base}
\alias{stkde.base}

\title{Spatio-Temporal Kernel Density Estimation}

\description{
  \code{stkde.base} calculates the three dimensional kernel density estimation of spatio-temporal mixed data,continous space and discrete time.
}

\usage{
stkde.base(xlong,ylat,ztime,xgrids,ygrids,breaks,\dots)
}

\arguments{

  \item{xlong}{
    Projected planar coordinates of longitude.
  }

  \item{ylat}{
    Projected planar coordinates of latitude.
  }
  
  \item{ztime}{
    The integer variable,such as YEAR,1990,1991 or 1,2. 
  }
  
  \item{xgrids}{
    Number of grids to evaluate the density in the x direction.  
  }

  \item{ygrids}{
    Number of grids to evaluate the density in the y direction.
  }
    
  \item{breaks}{
    \code{breaks} is to be used to specify the interval size for a numeric vector of probabilities with values in [0,1].
    Defaults to the 0.05.  
  }
  
  \item{\dots}{
    additional arguments supplied to control various aspects of
    \code{stkde}.These arguments are the same as \code{npudensbw} in the np package, see details there. 
  }
}

\details{
  \code{stkde.base} is a method to conduct the spatio-temporal kernel density estimation,
   when the time variable is discrete or categorial variable,not continuous variable.
}

\value{
  \code{stkde.base} returns a \code{stkde} object, with the following components: \cr
  #\code{bw}: bandwidth(s), scale factor(s) or nearest neighbours for the data. \cr
  #\code{dens}: kernel estimation of the density (cumulative distribution) at the evaluation points. 
}

\references{
  Li, Q. and Racine, J.S.\emph{Nonparametric Econometrics: Theory
  and Practice,} Princeton University Press. 2007. \cr
  Hayield, T. and Racine,J.S. \dQuote{Nonparametric Econometrics:
  The np Package,}.Journal of Statistical Software,2008,27(5):http://www.jstatsoft.org/v27/i05/.  
}

\author{
  Zhijie Zhang, \email{epistat@gmail.com}
}

\note{
  If you are using data of mixed types, then it is advisable to use the
  data.frame function to construct your input data and not cbind, since 
  cbind will typically not work as intended on mixed data types and will 
  coerce the data to the same type.
}

\seealso{
  npudensbw(np), npudens(np)  
}

\examples{
\dontrun{
# EXAMPLE:Simulated dataset
# We will generate a 3 different stages' case points.
# The higher density are in the off-diagonal direction.
x1<-c(runif(100,0,1),runif(50,0.67,1))
y1<-c(runif(100,0,1),runif(50,0.67,1))
d1<-data.frame(x1,y1)
colnames(d1)<-c("x","y")
x2<-c(runif(100,0,1),runif(50,0.33,0.67))
y2<-c(runif(100,0,1),runif(50,0.33,0.67))
d2<-data.frame(x2,y2)
colnames(d2)<-c("x","y")
x3<-c(runif(100,0,1),runif(50,0,0.33))
y3<-c(runif(100,0,1),runif(50,0,0.33))
d3<-data.frame(x3,y3)
colnames(d3)<-c("x","y")
d<-rbind(d1,d2,d3)
d$tf<-c(rep(1,150),rep(2,150),rep(3,150))
#d is the simulated data
#d[1,]
#plot(d1);points(d2,col="red");points(d3,col="green")
#Key Code
#attach(d)
samkde<-stkde.base(xlong=d$x,ylat=d$y,ztime=d$tf,xgrids=20,ygrids=20,
        breaks=0.05,bwmethod="cv.ml")
} % enddontrun
}

\keyword{nonparametric,spatio-temporal analysis}

