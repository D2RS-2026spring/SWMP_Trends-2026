# 数据预处理：只用模拟数据，不读NOCLWQ.xlsx
library(readxl)
library(writexl)
library(dplyr)
library(lubridate)

set.seed(123)
n <- 800

# 造模拟数据
data <- tibble(
  datetimestamp = seq(ymd_hms("2023-01-01 00:00:00"), by = "hour", length.out = n),
  station = sample(c("sta1", "sta2"), n, replace = TRUE),
  temp = pmax(pmin(rnorm(n, 20, 3), 35), 0),
  do_mgl = pmax(rnorm(n, 8, 1.5), 0),
  ph = pmax(pmin(rnorm(n, 7, 0.4), 9), 5)
)

# 建文件夹、保存
dir.create("data", showWarnings = FALSE)
dir.create("data/processed", showWarnings = FALSE)

write_xlsx(data, "data/simulated_data.xlsx")

# 简单清洗
data_clean <- data %>%
  mutate(date = as.Date(datetimestamp)) %>%
  filter(!is.na(temp), !is.na(do_mgl))

write_xlsx(data_clean, "data/processed/data_clean.xlsx")

cat("✅ 完成：没有读取NOCLWQ.xlsx，全部用模拟数据\n")