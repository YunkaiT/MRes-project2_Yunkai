# Draw the pie chart
library(readxl)
library(ggplot2)


df_pie_chart <- read_excel("8.22pie.xlsx")


biotype_counts <- table(df_pie_chart$Biotype)
biotype_data <- data.frame(Biotype = names(biotype_counts), Count = as.numeric(biotype_counts))


biotype_data$Biotype <- factor(biotype_data$Biotype, levels = biotype_data$Biotype[order(-biotype_data$Count)])


pie <- ggplot(data = biotype_data, aes(x = "", y = Count, fill = Biotype)) +
  geom_bar(stat = "identity", width = 1, color = "black",size=0.01) +
  coord_polar(theta = "y") +
  theme_void() +
  theme(legend.title = element_blank(),
        legend.position = "right") +
  labs(fill = "Biotype")


print(pie)

