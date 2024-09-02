# draw the -10 log(PEP) boxplot

library(ggplot2)
library(readxl)


aspn_data <- read_excel("AspN.xlsx")
chymotrypsin_data <- read_excel("Chymotrypsin.xlsx")
gluc_data <- read_excel("GluC.xlsx")
lysc_data <- read_excel("LysC.xlsx")
lysn_data <- read_excel("LysN.xlsx")
trypsin_data <- read_excel("Trypsin.xlsx")


aspn_data$Protease <- 'AspN'
chymotrypsin_data$Protease <- 'Chymotrypsin'
gluc_data$Protease <- 'GluC'
lysc_data$Protease <- 'LysC'
lysn_data$Protease <- 'LysN'
trypsin_data$Protease <- 'Trypsin'

# Combine all data into one dataframe
all_data <- rbind(aspn_data, chymotrypsin_data, gluc_data, lysc_data, lysn_data, trypsin_data)

# Filter data to include only REF and NOV peptide types
filtered_data <- all_data[all_data$Peptide_Type %in% c('REF', 'NOV'), ]

# Plot the data using ggplot2 with adjustments to group REF and NOV together for each protease
ggplot(filtered_data, aes(x = Protease, y = log_value, fill = Peptide_Type)) +
  geom_boxplot(position = position_dodge(width = 0.8)) +  # Adjust 'width' to control the distance between REF and NOV
  labs(title = "Comparison of -10*log(PEP) Across Proteases",
       x = "Protease",
       y = "-10*log(PEP)") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) # Adjust text angle for readability





# draw the FDR boxplot
library(ggplot2)
library(readxl)


aspn_data <- read_excel("AspN_FDR.xlsx")
chymotrypsin_data <- read_excel("Chymotrypsin_FDR.xlsx")
gluc_data <- read_excel("GluC_FDR.xlsx")
lysc_data <- read_excel("LysC_FDR.xlsx")
lysn_data <- read_excel("LysN_FDR.xlsx")
trypsin_data <- read_excel("Trypsin_FDR.xlsx")


aspn_data$Protease <- 'AspN'
chymotrypsin_data$Protease <- 'Chymotrypsin'
gluc_data$Protease <- 'GluC'
lysc_data$Protease <- 'LysC'
lysn_data$Protease <- 'LysN'
trypsin_data$Protease <- 'Trypsin'

all_data <- rbind(aspn_data, chymotrypsin_data, gluc_data, lysc_data, lysn_data, trypsin_data)


filtered_data <- all_data[all_data$Peptide_Type %in% c('REF', 'NOV'), ]


ggplot(filtered_data, aes(x = Protease, y = Peptide_FDR, fill = Peptide_Type)) +
  geom_boxplot(position = position_dodge(width = 0.8)) +  # Adjust 'width' to control the distance between REF and NOV
  labs(title = "Comparison of -10*log(PEP) Across Proteases",
       x = "Protease",
       y = "Peptide_FDR") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) # Adjust text angle for readability


