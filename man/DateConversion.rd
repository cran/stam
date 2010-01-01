\name{DateConversion}
\alias{DateConversion}

\title{Conversion between Different Date Format}

\description{
  \code{DateConversion} was used to read and output the date variable with your preferred format.
}

\usage{
DateConversion(DateVar,DateIn,DateOut)
}

\arguments{

  \item{DateVar}{
    Specify your date variable.
  }

  \item{DateIn}{
    Specify the date format for your original variable,e.g.\%m/\%d/\%Y.
  }
  
  \item{DateOut}{
    Specify the date format that you hope to output,e.g.\%d/\%m/\%Y. 
  }
}

\details{
  \code{DateConversion} is an easy function to convert a date variable between 
  different formats,which is very useful for your manipulation on a dataset with
  date variables without time inside.
}

\value{
  \code{DateConversion} returns the date format that you expected directly. \cr
}

\references{
  Spector P.\emph{Data Manipulation with R.,}Springer Science+Business Media,LLC.
  2008.(Chapter4:Dates.) \cr 
}

\author{
  Zhijie Zhang, \email{epistat@gmail.com}
}

\note{
  For dates,%Y represents years with four digital number (yyyy);
            %m represents months with two numeric number (mm);
            %d represents days with two numeric number (dd).
  More detailes,see above reference.
}

\seealso{ 
as.POSIX* for Date-time Conversion Functions
#as.Date,Sys.Date,POSIXct,POSIXlt 
#Dates for dates without times.
#strptime for conversion to and from character representations.
#Sys.time for clock time as a POSIXct object.
#difftime for time intervals.
#cut.POSIXt, seq.POSIXt, round.POSIXt and trunc.POSIXt for methods for these classes.
#weekdays.POSIXt for convenience extraction functions   
}

\examples{
\dontrun{
#Example 1
a<-"10/20/1999"
DateConversion(a,DateIn="\%m/\%d/\%Y",DateOut="\%d/\%m/\%Y")
#Example 2
b<-"27/12/2000"
DateConversion(b,DateIn="\%d/\%m/\%Y",DateOut="\%m/\%d/\%Y")
#Example 3
c<-"20001223"
Date_New1<-DateConversion(c,DateIn="\%Y\%m\%d",DateOut="\%m/\%d/\%Y")
Date_New1
Date_New2<-DateConversion(c,DateIn="\%Y\%m\%d",DateOut="\%d/\%m/\%Y")
Date_New2
} % enddontrun
}

\keyword{
date
}

