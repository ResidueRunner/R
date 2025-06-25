#To find Open Reading Frames (ORFs) in a DNA sequenc using if, while condtion in R

sequence <- "ATGAAATGAAAAAATAGATGAGATGA"
find_orfs <- function(seq) {
  start_codon <- "ATG"
  stop_codons <- c("TAA", "TAG", "TGA")
  seq_len <- nchar(seq)
  orfs <- list()
  
  i <- 1
  while (i <= seq_len - 2) {
    codon <- substr(seq, i, i + 2)
    
    # Check for start codon
    if (codon == start_codon) {
      j <- i + 3
      while (j <= seq_len - 2) {
        next_codon <- substr(seq, j, j + 2)
        if (next_codon %in% stop_codons && ((j - i) %% 3 == 0)) {
          orf <- substr(seq, i, j + 2)
          orfs <- c(orfs, orf)
          break  # stop when first stop codon is found
        }
        j <- j + 3
      }
    }
    i <- i + 1
  }
  return(orfs)
}


orfs_found <- find_orfs(sequence)
print(orfs_found)

