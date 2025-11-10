setwd("V:/7.Semester/MPC-PRG/10_11/exercise_09")
library(Biostrings)
library(stringr)
library(seqinr)

S <- list('ATG','GACT','CTTA','CATG','ACTTA','TAGCA','GCAT')

Overlap <- function(s1,s2) {
  
  n1 <- nchar(s1)
  n2 <- nchar(s2)
  
  
  if (s1 == s2) {
    return(0)
  }
  
  max_overlap <- 0
  str_overlap <- ""
  
  for (i in seq_len(min(n1, n2))) {
    if (substr(s1,n1+1-i,n1)==substr(s2,1,i)) {
      max_overlap <- i
      overlap_str <- substr(s1, n1 - i + 1, n1)
    }
  }
  if (max_overlap > 0) {
    return(list(overlap = max_overlap, substring = overlap_str))
  }
  
  else {
    return('error')
    }
  
}
Overlap('GACT', 'ATGAC')

sx <- 'TACG'

send <- substr(sx,nchar(sx),nchar(sx))

Overlap('GACT', 'ATGAC')

OverlapMatrix <- function(s) {
  mat <- matrix(1:length(s), nrow = )
  
}







GreedySuperstring <- function(s) {
  while (length(s) >1) {
    overlapMat <- OverlapMatrix(s)
    if (max()){
      
    }
  }
}
    
