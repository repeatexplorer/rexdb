#!/usr/bin/env Rscript

# Input : tab-delimited file  columns are: REXdb_ID number	REXdb_ID	prelim ID	Species	Data source	local file	Note

# Output: same file with an additional column containing NCBI Taxonomy IDs  - column name: "NCBI_TaxID"
# Usage: Rscript scripts/add_taxid_to_species.R input_file output_file
# Use taxize package to get NCBI Taxonomy IDs
# species are duplicated so we need to get unique species first to avoid redundant queries

# Load required library
library(taxize)

# Get command line arguments
args <- commandArgs(trailingOnly = TRUE)

if (length(args) != 2) {
  stop("Usage: Rscript scripts/add_taxid_to_species.R input_file output_file")
}

input_file <- args[1]
output_file <- args[2]

# Read input file
data <- read.table(input_file, header = TRUE, sep = "\t", quote = "", comment.char = "")

# Get unique species
unique_species <- unique(data$Species)

# Get NCBI Taxonomy IDs for unique species
taxids <- get_uid(unique_species, messages = FALSE)

# Create a lookup table
taxid_lookup <- data.frame(Species = unique_species, NCBI_TaxID = as.character(taxids))

# Merge with original data
data <- merge(data, taxid_lookup, by = "Species", all.x = TRUE)

# Write output file
write.table(data, output_file, sep = "\t", quote = FALSE, row.names = FALSE)

cat("Done! Output written to", output_file, "\n")
