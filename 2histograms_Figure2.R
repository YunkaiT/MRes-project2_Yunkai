# Draw the histogram of trptic peptides
Load necessary library
library(ggplot2)

# Create the data frame based on the provided image
data <- data.frame(
  Count_Value = c(1, 2, 3, 4),
  Number_of_Proteins = c(1974, 1083, 192, 20)
)

# Generate the bar plot with narrower bars
ggplot(data, aes(x = as.factor(Count_Value), y = Number_of_Proteins)) +
  geom_bar(stat = "identity", fill = "purple", width = 0.5) +  # Adjust width to make bars thinner
  geom_text(aes(label = Number_of_Proteins), vjust = -0.5, color = "black") +
  labs(title = "", x = "Count Value of Peptides", y = "Number of Proteins") +
  theme_minimal() +
  theme(panel.grid = element_blank())  # Remove background grid lines





# Draw this histogram of all six-enzyme digested peptides
# Load necessary library
library(ggplot2)

# Create the data frame based on the histogram data
data <- data.frame(
  Unique_Peptides = c(2, 3, 4, 5, 6, 7, 8, 11),
  Number_of_Protein_Accessions = c(2360, 1005, 360, 200, 216, 77, 8, 11)
)

# Generate the bar plot
ggplot(data, aes(x = as.factor(Unique_Peptides), y = Number_of_Protein_Accessions)) +
  geom_bar(stat = "identity", fill = "purple", width = 0.5) +  # Adjust width to make bars narrower
  geom_text(aes(label = Number_of_Protein_Accessions), vjust = -0.5, color = "black") +
  labs(title = "Histogram of Unique Peptides per Protein Accession",
       x = "Number of Unique Peptides per Protein Accession",
       y = "Number of Protein Accessions") +
  theme_minimal() +
  theme(panel.grid = element_blank())  # Remove background grid lines

