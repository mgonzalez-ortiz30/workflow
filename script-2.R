library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_violin(alpha = 0.85, color = "white", linewidth = 0.4, trim = FALSE) +
  geom_boxplot(width = 0.12, fill = "white", outlier.shape = NA, linewidth = 0.35) +
  scale_y_log10(labels = scales::label_dollar()) +
  scale_fill_viridis_d(option = "C", end = 0.9, guide = "none") +
  labs(
    title = "Diamond prices across cut quality",
    subtitle = "Violin shapes show the price distribution; inner boxes show the median and quartiles",
    x = "Cut quality",
    y = "Price (USD, log scale)"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 18),
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-2.png", plot = diamonds_plot, width = 9, height = 6, dpi = 300)
