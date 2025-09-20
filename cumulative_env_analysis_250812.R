library(MASS)
library(ordinal)
library(stringr)
library(writexl)
library(tidyverse)
library(broom)
library(knitr)
library(dlnm)
library(splines)
library(dplyr)
library(purrr)
library(tidyr)
library(ggplot2)

setwd("/Users/shij/Documents/GitHub/NMDA_data_analysis/")
reg.dat<-readxl::read_xlsx("guangdong_all_years_summary_with_sex_ratio_age_portion.xlsx")

reg.dat <- reg.dat %>%
  arrange(city, year_month) %>%
  group_by(city) %>%
  mutate(id = row_number()) %>%
  ungroup()

# Name of pollutants

pollutant_cols <- names(reg.dat)[3:14]

# Define a function to create lag-basis matrix per city
create_lagged_pollution <- function(x, maxlag = 3, base_name = "pollutant") {
  out <- lapply(1:maxlag, function(lag) {
    lagged <- dplyr::lag(x, n = lag)
    is.na(lagged) <- is.na(x) | is.na(lagged)
    lagged
  })
  setNames(out, paste0(base_name, "_lag", 1:maxlag))
}

create_multiple_lagged <- function(df, pollutant_cols, maxlag = 3) {
  results <- purrr::map_dfc(pollutant_cols, ~ {
    x <- df[[.x]]
    create_lagged_pollution(x, maxlag = maxlag, base_name = .x)
  })
  dplyr::bind_cols(df, results)
}


# Testing Example: Use only data from "Guangzhou"
test_city_data_multi <- reg.dat %>% filter(city == "Guangzhou")

# Apply the function
test_city_data_multi_lagged <- create_multiple_lagged(test_city_data_multi, pollutant_cols, maxlag = 3)

# View result
View(test_city_data_multi_lagged)

# apply the lag to all the cities
reg.dat_lagged <- reg.dat %>%
  group_by(city) %>%
  group_modify(~ create_multiple_lagged(.x, pollutant_cols, maxlag = 3)) %>%
  ungroup()

View(reg.dat_lagged)

# Take AQI as an example
{

# Define crossbasis for AQI with lag = 3
cb <- crossbasis(reg.dat_lagged$AQI, lag = 3,
                 argvar = list(fun = "ns", knots = quantile(reg.dat_lagged$AQI, c(0.25, 0.75))),
                 arglag = list(fun = "ns", knots = c(2)))

reg.dat_lagged$population<-as.numeric(reg.dat_lagged$population)

# Notice factor(city) !!!
model_dlnm <- glm(inc_count ~ cb + factor(city) + offset(log(population)),
                  family = poisson(), data = reg.dat_lagged)

aqi_vals <- seq(quantile(reg.dat_lagged$AQI, 0.05), 
                quantile(reg.dat_lagged$AQI, 0.95), 
                length.out = 100)
mean_AQI <- mean(reg.dat_lagged$AQI, na.rm = TRUE)

pred <- crosspred(cb, model_dlnm, at = aqi_vals, cen = mean_AQI)

# Extract predicted values
pred_df <- data.frame(
  var = pred$predvar,        # AQI values
  risk = pred$allRRfit,      # Relative Risk (fit)
  lower = pred$allRRlow,     # Lower CI
  upper = pred$allRRhigh     # Upper CI
)

# Define x-axis limits with a small buffer
aqi_range <- quantile(reg.dat_lagged$AQI, c(0.05, 0.95))
#buffer <- 0.1 * diff(aqi_range)
buffer <- 0 * diff(aqi_range)
xlims <- c(aqi_range[1] - buffer, aqi_range[2] + buffer)

# Plot with ggplot2

# Determine y-axis limits from the confidence interval, with buffer
ymin <- min(pred_df$lower, na.rm = TRUE)
ymax <- max(pred_df$upper, na.rm = TRUE)
y_buffer <- 0 * (ymax - ymin)
ylim_plot <- c(ymin - y_buffer, ymax + y_buffer)

# Plot
ggplot(pred_df, aes(x = var)) +
  
  # Confidence interval shaded area
  geom_ribbon(aes(ymin = lower, ymax = upper),
              fill = "#AE506B", alpha = 1) +
  
  # Main line for relative risk
  geom_line(aes(y = risk), color = "#EEE1CA", linewidth = 1.2) +
  
  # Horizontal reference line at RR = 1
  geom_hline(yintercept = 1, linetype = "dashed", color = "gray") +
  
  # Vertical reference line at mean AQI
  geom_vline(xintercept = mean_AQI, color = "#C65306", linetype = "dotted") +
  
  # Axis labels, title, and caption
  labs(
    title = "Cumulative Effect of AQI on Disease Incidence",
    x = "AQI",
    y = "Relative Risk",
    caption = paste0("Reference (centering) value: Mean AQI = ", round(mean_AQI, 1))
  ) +
  
  # Set axis limits
  xlim(xlims) +
  ylim(ylim_plot) +
  
  # Clean theme
  theme_minimal() +
  theme(
    axis.text = element_text(size = 12),
    axis.title = element_text(size = 14, face = "bold"),
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    panel.grid.major = element_line(color = "gray90"),
    panel.grid.minor = element_blank()
  )

#ggsave("AQI_Relative_Risk_Plot.png",   # or ".pdf" for PDF
#       width = 1200,
#       height = 750,
#       dpi = 300,                        # High resolution
#       units = "px")                     # Pixels

}

#  【关键】一行代码完成所有保存工作！
output_folder <- "./result_figure_cumulative"
dir.create(output_folder, showWarnings = FALSE)

# Define function to create and save DLNM plot for one pollutant
generate_and_save_plot <- function(pollutant_name) {
  
  # Extract pollution values
  pollution <- reg.dat_lagged[[pollutant_name]]
  
  # Define prediction values: 1% to 99% quantile
  pred_vals <- seq(
    quantile(pollution, 0.05, na.rm = TRUE),
    quantile(pollution, 0.95, na.rm = TRUE),
    length.out = 100
  )
  
  # Define centering value: mean
  mean_pollutant <- mean(pollution, na.rm = TRUE)
  
  # Create crossbasis matrix
  cb <- crossbasis(pollution, lag = 3,
                   argvar = list(fun = "ns", knots = quantile(pollution, c(0.25, 0.75), na.rm = TRUE)),
                   arglag = list(fun = "ns", knots = c(2)))
  
  # Create a new data frame that includes only complete cases for cb
  # (cb may have NA in some rows due to lagging)
  complete_data <- na.omit(data.frame(
    inc_count = reg.dat_lagged$inc_count,
    population = reg.dat_lagged$population,
    city = reg.dat_lagged$city,
    cb = I(cb)
  ))  # I() preserves the matrix structure
  
  # Fit model
  model <- glm(inc_count ~ cb + factor(city) + offset(log(population)),
               family = poisson(), data = complete_data)
  
  # Fit null model (without cb)
  model_null <- glm(inc_count ~ factor(city) + offset(log(population)),
                    family = poisson(), data = complete_data)
  
  # Get p-value for the effect of cb
  anova_result <- anova(model_null, model, test = "Chisq")
  p_value <- anova_result[2, "Pr(>Chi)"]
  
  # Format p-value for plot
  p_label <- ifelse(p_value < 0.001,
                    paste0("p < 0.001"),
                    paste0("p = ", format(p_value, digits = 3)))
  
  # Predict
  pred <- crosspred(cb, model, at = pred_vals, cen = mean_pollutant)
  
  # Extract predictions
  pred_df <- data.frame(
    var = pred$predvar,
    risk = pred$allRRfit,
    lower = pred$allRRlow,
    upper = pred$allRRhigh
  )
  
  # Define x-axis limits: 5% to 95% quantile, with buffer
  pollutant_range <- quantile(pollution, c(0.05, 0.95), na.rm = TRUE)
  buffer <- 0 * diff(pollutant_range)
  xlim_plot <- c(pollutant_range[1] - buffer, pollutant_range[2] + buffer)
  
  # Define y-axis limits: confidence interval with buffer
  ymin <- min(pred_df$lower, na.rm = TRUE)
  ymax <- max(pred_df$upper, na.rm = TRUE)
  y_buffer <- 0 * (ymax - ymin)
  ylim_plot <- c(ymin - y_buffer, ymax + y_buffer)
  
  # Define annotation text
  annotation_text <- if (p_value <= 0.05) {
    paste0("p-value = ", format(p_value, digits = 3),",", "\n", "The cumulative effect is significant")
  } else {
    paste0("p-value = ", format(p_value, digits = 3),",", "\n", "The cumulative effect is not significant")
  }
  
  # Create plot
  p <- ggplot(pred_df, aes(x = var)) +
    geom_ribbon(aes(ymin = lower, ymax = upper), fill = "#AE506B", alpha = 1) +
    geom_line(aes(y = risk), color = "#EEE1CA", linewidth = 1.2) +
    geom_hline(yintercept = 1, linetype = "dashed", color = "gray") +
    geom_vline(xintercept = mean_pollutant, color = "#C65306", linetype = "dotted") +
    labs(
      title = paste0("Cumulative Effect of ", pollutant_name, " on Disease Incidence"),
      subtitle = p_label,
      x = pollutant_name,
      y = "Relative Risk",
      caption = paste0("Reference (centering) value: Mean ", pollutant_name, " = ", round(mean_pollutant, 1))
    ) +
    xlim(xlim_plot) +
    ylim(ylim_plot) +
    theme_minimal() +
    theme(
      axis.text = element_text(size = 12),
      axis.title = element_text(size = 14, face = "bold"),
      plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
      panel.background = element_rect(fill = "white", color = NA),
      plot.background = element_rect(fill = "white", color = NA),
      panel.grid.major = element_line(color = "gray90"),
      panel.grid.minor = element_blank()
    )+
    geom_text(
      x = xlim_plot[1] + 0.75 * diff(xlim_plot),   # 75% of x range
      y = ylim_plot[1] + 0.75 * diff(ylim_plot),  # 75% of y range
      label = annotation_text,
      color = "black",
      size = 6,               # Same as axis labels
      hjust = 0.5,            # Center horizontally
      vjust = 0.5             # Center vertically
    )
  
  # Save plot
  filename <- file.path(output_folder, paste0(pollutant_name, "_cumulative_effect.png"))
  ggsave(
    filename = filename,
    plot = p,
    width = 12, height = 7.5,   # inches
    dpi = 300,
    units = "in"
  )
  
  message("Saved plot for ", pollutant_name)
}

# Apply to all pollutants
purrr::walk(pollutant_cols, generate_and_save_plot)

  