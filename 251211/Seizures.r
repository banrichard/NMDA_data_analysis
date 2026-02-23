setwd("/Users/shij/Documents/GitHub/NMDA_data_analysis/")
my.dat<-readxl::read_xlsx("NMDA_with_population_sex_ratio_age_portion.xlsx")
setwd("/Users/shij/Documents/GitHub/NMDA_data_analysis/251211/")

# ============================
# 1. Load Required Packages
# ============================
library(ggplot2)
library(dplyr)
library(tidyr)
library(broom)
library(patchwork)   # For combining plots
library(writexl)     # For exporting table

# ============================
# 2. Simplify Outcome Variable Name & Convert to Factor
# ============================
# Rename column for simplicity
names(my.dat)[names(my.dat) == "Seizures"] <- "Seizures"

# Check current class
class(my.dat$Seizures)
table(my.dat$Seizures)  # Should show 0 and 1

# Convert to factor (binary logistic regression expects factor or 0/1)
my.dat$Seizures <- factor(my.dat$Seizures, levels = c(0, 1), ordered = FALSE)

# Verify
str(my.dat$Seizures)

# ============================
# 3. Remove Rows with NA in Seizures (as requested)
# ============================
my.dat <- my.dat %>% drop_na(Seizures)

# ============================
# 4. Define Pollutants and Lags
# ============================
pollutants <- c("AQI", "NO2", "O3", "CO", "PM10", "PM2.5", "SO2")  # CO is 4th
lags <- c("M0", "M1", "M2", "M3")

# Create column name patterns
pollutant_cols <- sapply(pollutants, function(p) {
  paste0(p, "_", lags)
}, simplify = FALSE)

# ============================
# 5. Fit Binary Logistic Regression for Each Pollutant-Lag
# ============================
results_list <- list()

for (pollutant in pollutants) {
  lag_cols <- pollutant_cols[[pollutant]]
  for (lag_col in lag_cols) {
    # Check if column has variation and not all NA
    data_col <- my.dat[[lag_col]]
    if (all(is.na(data_col)) || length(unique(data_col[!is.na(data_col)])) <= 1) {
      message("Skipping ", lag_col, " — no variation or all NA")
      next
    }
    
    # Fit binary logistic regression
    model <- glm(Seizures ~ ., data = my.dat[, c("Seizures", lag_col)], 
                 family = binomial, na.action = na.omit)
    
    # Extract summary
    model_summary <- tidy(model, conf.int = TRUE, exponentiate = TRUE) %>%
      filter(term == lag_col) %>%
      mutate(Pollutant = pollutant,
             Lag = gsub(".*_", "", lag_col),
             Lag_Num = as.numeric(gsub("M", "", lag_col)))
    
    results_list <- append(results_list, list(model_summary))
  }
}

# Combine all results
results_df <- bind_rows(results_list)

# ============================
# 6. Clean and Format Results
# ============================
results_df <- results_df %>%
  mutate(
    Lag = trimws(toupper(Lag)),
    Lag.Num = as.numeric(gsub("^M(\\d+)$", "\\1", Lag))
  ) %>%
  filter(!is.na(Lag.Num))

# # ============================
# # 7. Create 7 Individual Plots (One per Pollutant) — NO TEXT LABELS
# # ============================
# # Get pollutants in desired order
# pollutants_plot <- c("AQI", "NO2", "O3", "CO", "PM10", "PM2.5", "SO2")
# 
# # Create list of individual plots
# plot_list <- lapply(pollutants_plot, function(poll) {
#   df_sub <- results_df %>% filter(Pollutant == poll)
#   
#   p <- ggplot(df_sub, aes(x = Lag.Num, y = estimate, ymin = conf.low, ymax = conf.high)) +
#     geom_point(color = "red", size = 3) +
#     geom_errorbar(width = 0.2, color = "gray50", size = 0.8) +
#     geom_hline(yintercept = 1, linetype = "dashed", color = "black", size = 0.6) +
#     labs(
#       x = "Lag (months)",
#       y = "Odds Ratio (OR)",
#       title = poll
#     ) +
#     theme_minimal() +
#     theme(
#       panel.border = element_rect(color = "black", fill = NA, size = 1),
#       panel.background = element_blank(),
#       panel.grid.major = element_line(color = "gray90", size = 0.3),
#       panel.grid.minor = element_blank(),
#       axis.line = element_line(color = "black", size = 0.5),
#       axis.ticks = element_line(color = "black", size = 0.5),
#       axis.text = element_text(size = 12, color = "black"),
#       axis.title = element_text(size = 13, color = "black"),
#       plot.title = element_text(hjust = 0.5, size = 15, color = "black"),
#       plot.margin = margin(10, 10, 10, 10),
#       axis.title.y = element_text(angle = 90, vjust = 0.5),
#       aspect.ratio = 1  # ← Forces square panels
#     ) +
#     # ✅ No text labels — remove all geom_text
#     # ✅ Tight x-axis: no extra padding
#     scale_x_continuous(
#       breaks = c(0, 1, 2, 3), 
#       labels = c("0", "1", "2", "3"),
#       expand = expansion(add = c(0.1, 0.1))  # ← Tight padding
#     )
#   
#   return(p)
# })
# 
# # ============================
# # 8. Combine All 7 Plots in a Single Row — CO LAST
# # ============================
# p_combined <- plot_list[[1]] + plot_list[[2]] + plot_list[[3]] + plot_list[[5]] + 
#   plot_list[[6]] + plot_list[[7]] + plot_list[[4]] +
#   plot_annotation(title = "Impact of Pollutants on Seizures",
#                   theme = theme(plot.title = element_text(hjust = 0.5, size = 17, color = "black")))
# 
# # Display plot
# print(p_combined)
# 
# # Optional: Save as PNG with width=12, height=15
# ggsave("NMDAR_Seizures.png", p_combined, width = 12, height = 15, dpi = 300, units = "in")

# ============================
# 7. Create 7 Individual Plots (One per Pollutant) — NO TEXT LABELS
# ============================
# Get pollutants in desired order
pollutants_plot <- c("AQI", "NO2", "O3", "CO", "PM10", "PM2.5", "SO2")

# Create list of individual plots
plot_list <- lapply(pollutants_plot, function(poll) {
  df_sub <- results_df %>% filter(Pollutant == poll)
  
  # Apply transformation based on pollutant
  if (poll == "CO") {
    df_sub <- df_sub %>%
      mutate(
        y = estimate^0.1,
        ymin = conf.low^0.1,
        ymax = conf.high^0.1
      )
    y_label <- "Odds Ratio (per 100ug)"
  } else {
    df_sub <- df_sub %>%
      mutate(
        y = estimate^10,
        ymin = conf.low^10,
        ymax = conf.high^10
      )
    y_label <- "Odds Ratio (per 10ug)"
  }
  
  p <- ggplot(df_sub, aes(x = Lag.Num, y = y, ymin = ymin, ymax = ymax)) +
    geom_point(color = "red", size = 3) +
    geom_errorbar(width = 0.2, color = "gray50", size = 0.8) +
    geom_hline(yintercept = 1, linetype = "dashed", color = "black", size = 0.6) +
    labs(
      x = "Lag (months)",
      y = y_label,  # ← Custom y-label per pollutant
      title = poll
    ) +
    theme_minimal() +
    theme(
      panel.border = element_rect(color = "black", fill = NA, size = 1),
      panel.background = element_blank(),
      panel.grid.major = element_line(color = "gray90", size = 0.3),
      panel.grid.minor = element_blank(),
      axis.line = element_line(color = "black", size = 0.5),
      axis.ticks = element_line(color = "black", size = 0.5),
      axis.text = element_text(size = 12, color = "black"),
      axis.title = element_text(size = 13, color = "black"),
      plot.title = element_text(hjust = 0.5, size = 15, color = "black"),
      plot.margin = margin(10, 10, 10, 10),
      axis.title.y = element_text(angle = 90, vjust = 0.5),
      aspect.ratio = 1  # ← Forces square panels
    ) +
    scale_x_continuous(
      breaks = c(0, 1, 2, 3), 
      labels = c("0", "1", "2", "3"),
      expand = expansion(add = c(0.1, 0.1))  # ← Tight padding
    )
  
  return(p)
})

# ============================
# 8. Combine All 7 Plots in a Single Row — CO LAST
# ============================
p_combined <- plot_list[[1]] + plot_list[[2]] + plot_list[[3]] + plot_list[[5]] + 
  plot_list[[6]] + plot_list[[7]] + plot_list[[4]] +
  plot_annotation(title = "Impact of Pollutants on Seizures",
                  theme = theme(plot.title = element_text(hjust = 0.5, size = 17, color = "black")))

# Display plot
print(p_combined)

# Optional: Save as PNG with width=12, height=15
ggsave("NMDAR_Seizures.png", p_combined, width = 12, height = 15, dpi = 300, units = "in")

# ============================
# 9. Create Clean Results Table (Include CO, OR, 95% CI, p-value)
# ============================

# Create clean table
table_df <- results_df %>%
  select(Pollutant, Lag, estimate, conf.low, conf.high, p.value) %>%
  mutate(
    `Odds Ratio (OR)` = round(estimate, 4),
    `95% CI` = paste0(round(conf.low, 4), " – ", round(conf.high, 4)),
    `p-value` = ifelse(p.value < 0.001, 
                       format(p.value, scientific = TRUE, digits = 2),
                       round(p.value, 4)),
    `Pollutant & Lag` = paste(Pollutant, Lag, sep = "_")
  ) %>%
  arrange(Pollutant, Lag) %>%
  select(`Pollutant & Lag`, `Odds Ratio (OR)`, `95% CI`, `p-value`)

# Export to Excel file (simplified name)
write_xlsx(table_df, "NMDAR_Seizures.xlsx")

# ✅ No print(head(...)) — as requested
