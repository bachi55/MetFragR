#' @import rcdk
#' @import rJava
NULL

.packageName <- "metfRag"

require(rJava, quietly=TRUE)

.onLoad<-function(libname, pkgname) {
    jar.metfrag <- paste(libname, pkgname, "java", "MetFragR-2.4.2-jar-with-dependencies.jar", sep=.Platform$file.sep)	
    .jinit(classpath=c(jar.metfrag))
}

#' Retrieve candidatesas according to the specifications in the settings.
#' 
#' 
#' @param list of settings 
#' @author Eric Bach (\email{eric.bach@aalto.fi})
#' @export
run.candidateRetrieval<-function(settingsObject) {

    # We can make the settings checks pass by passing spectra like: matrix(NA)
    
    Level.ERROR <- J("org.apache.log4j.Level")$ERROR

    .jcall(J("org.apache.log4j.Logger")$getLogger("net.sf.jnati.deploy.repository.ClasspathRepository"),
           "V", "setLevel", Level.ERROR)
        
}
