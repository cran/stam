\name{stkde.sig}
\alias{stkde.sig}
\alias{stkde.sig}

\title{Spatio-Temporal Kernel Density Estimation with Significant P-Value contours}

\description{
  \code{stkde.sig} calculates the three dimensional kernel density estimation of spatio-temporal mixed data,continous space and discrete time.
  And also obtain the significant p-value contours to indicate the TRUE significant areas by the method of Monte Carlo.
}

\usage{
stkde.sig(xlong,ylat,ztime,xgrids,ygrids,breaks,sim,alpha,nrowspar,\dots)
}

\arguments{

  \item{xlong}{
    Same as the function of stkde.
  }

  \item{ylat}{
    Same as the function of stkde.
  }
  
  \item{ztime}{
    Same as the function of stkde. 
  }
  
  \item{xgrids}{
    Same as the function of stkde.  
  }

  \item{ygrids}{
    Same as the function of stkde.
  }
    
  \item{breaks}{
    Same as the function of stkde.  
  }
  
  \item{sim}{
    Specify the number of simulations for Monte Carlo (sim-1). The default value is 100 and the actual simulated number is 100-1=99.
  }
  
 \item{alpha}{
    Specify the significant level for generating the statistically significant p-value contrours. 
    Its default value is 0.05. 
  }
  
  
  \item{nrowspar}{
  specify the number of rows when plotting the figures in a panel. The default number is 1.
  }
  
  \item{\dots}{
    additional arguments supplied to control various aspects of
    \code{stkde}.These arguments are the same as \code{npudensbw} in the np package, see details there. 
  }
}

\details{
  \code{stkde} is a method to conduct the spatio-temporal kernel density estimation 
  with significant p-value contours to indicate the statistically significant area,
   when the time variable is discrete or categorial variable,not continuous variable.
}

\value{
  \code{stkde} returns a \code{stkde} object, with the following two arrays. 
   Their dimensions are xgrids, ygrids and tlength, respectively: \cr
  \code{dens}: kernel estimation of the density (cumulative distribution) at the evaluation points. \cr
  \code{pvalue}: P values for the high density to be significant high values. 
}

\references{
  Li, Q. and Racine, J.S.\emph{Nonparametric Econometrics: Theory
  and Practice,} Princeton University Press. 2007. \cr
  Hayield, T. and Racine,J.S. \dQuote{Nonparametric Econometrics:
  The np Package,}.Journal of Statistical Software,2008,27(5):http://www.jstatsoft.org/v27/i05/.\cr  
  Zhang Z, Clark AB, Bivand R, Chen Y, Carpenter TE, Peng W, Zhou Y, Zhao G, Jiang Q.\dQuote{Nonparametric 
  spatial analysis to detect high-risk regions for schistosomiasis in Guichi, China,}. 
  Trans R Soc Trop Med Hyg. 2009,103(10):1045-1052. \cr
}

\author{
  Zhijie Zhang, \email{epistat@gmail.com}
}

\note{
  This method is important for deleteing the false-positive resutls of stkde.
}

\seealso{
  npudensbw(np), npudens(np),stkde  
}

\examples{
\dontrun{
#Example1-uneven number of years
#Dataset1
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
colnames(d)<-c("xlong","ylat","ztime")
#Running the function
stkde.sig(d[,1],d[,2],d[,3],xgrids=20,ygrids=20,breaks=0.05,sim=3,alpha=0.05,nrowspar=1)
#reports the time spent in garbage collection so far in the R session while GC timing was enabled
gc.time(stkde.sig(d[,1],d[,2],d[,3],xgrids=20,ygrids=20,breaks=0.05,sim=3,alpha=0.05,nrowspar=1))
#Return CPU (and other) times that expr used.
system.time(stkde.sig(d[,1],d[,2],d[,3],xgrids=20,ygrids=20,breaks=0.05,sim=3,alpha=0.05,nrowspar=1))
#determines how much real and CPU time (in seconds) the currently running R process has already taken
proc.time(stkde.sig(d[,1],d[,2],d[,3],xgrids=20,ygrids=20,breaks=0.05,sim=3,alpha=0.05,nrowspar=1))
#
#Example2-even number of years
#Dataset2
x12<-c(runif(100,0,1),runif(50,0.67,1))
y12<-c(runif(100,0,1),runif(50,0.67,1))
d12<-data.frame(x12,y12)
colnames(d12)<-c("x","y")
x22<-c(runif(100,0,1),runif(50,0.33,0.67))
y22<-c(runif(100,0,1),runif(50,0.33,0.67))
d22<-data.frame(x22,y22)
colnames(d22)<-c("x","y")
d2<-rbind(d12,d22)
d2$tf<-c(rep(1,150),rep(2,150))
colnames(d2)<-c("xlong","ylat","ztime")
#Running the function
stkde.sig(d2[,1],d2[,2],d2[,3],xgrids=20,ygrids=20,breaks=0.05,sim=3,alpha=0.05,nrowspar=2)
#reports the time spent in garbage collection so far in the R session while GC timing was enabled
gc.time(stkde.sig(d[,1],d[,2],d[,3],xgrids=20,ygrids=20,breaks=0.05,sim=3,alpha=0.05,nrowspar=2))
#Return CPU (and other) times that expr used.
system.time(stkde.sig(d[,1],d[,2],d[,3],xgrids=20,ygrids=20,breaks=0.05,sim=3,alpha=0.05,nrowspar=2))
#determines how much real and CPU time (in seconds) the currently running R process has already taken
proc.time(stkde.sig(d[,1],d[,2],d[,3],xgrids=20,ygrids=20,breaks=0.05,sim=3,alpha=0.05,nrowspar=2))
} % enddontrun
}

\keyword{nonparametric,spatio-temporal analysis}

