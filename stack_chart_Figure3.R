#Draw the stack chart

library(ggplot2)
library(dplyr)
library(readxl) 


stack_data <- read_excel


print(names(stack_data))


stack_data <- stack_data %>%
  rename(Biotype = Biotype, Protein_accession_number = Protein_accession_number) %>%
  group_by(Biotype, Protein_accession_number) %>%
  summarise(Count = n(), .groups = 'drop')


stack_data$Protein_accession_number <- as.factor(stack_data$Protein_accession_number)


custom_colors <- c("1" = "#5b94fb",  
                   "2" = "#00dbf9",  
                   "3" = "#00d16c", 
                   "4" = "#189a07",  
                   "5" = "#d9d212",  
                   "6" = "#d5750b",  
                   "7" = "#f22613") 


ggplot(stack_data, aes(x = Biotype, y = Count, fill = Protein_accession_number)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = Count), position = position_stack(vjust = 0.5)) +
  scale_fill_manual(values = custom_colors) +  
  labs(x = "Biotype", y = "Count", title = "Stacked Bar Chart by Biotype and Number") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 


ggsave("stacked_bar_chart.png", width = 10, height = 6)


