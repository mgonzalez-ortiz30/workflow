library(tidyverse)

print(sum(1:10))

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.35, size = 1) +
  scale_color_viridis_d(option = "C", end = 0.9) +
  labs(
    title = "A diamond's size and price",
    subtitle = "Each point represents a diamond; color shows its cut",
    x = "Carat",
    y = "Price (USD)",
    color = "Cut"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 18),
    panel.grid.minor = element_blank(),
    legend.position = "bottom"
  )

ggsave("diamonds-1.png", plot = diamonds_plot, width = 9, height = 6, dpi = 300)
