# =====================================
# 一键复现脚本 run_all.R
# 老师只需要运行 source("run_all.R")
# =====================================

# 0. 设置环境
set.seed(123)  # 保证每次运行结果都一样
cat("=== 一键复现分析开始 ===\n")

# 1. 运行数据预处理脚本
cat("1/3 正在执行数据预处理...\n")
source("data_preprocessing.R")
cat("✅ 数据预处理完成\n")

# 2. 加载清洗后的数据
cat("2/3 正在加载数据并生成图表...\n")
library(readxl)
library(ggplot2)

data_clean <- read_excel("data/processed/data_clean.xlsx")
# 画图
p <- ggplot(data_clean, aes(x = temp, y = do_mgl, color = station)) +
  geom_point(alpha = 0.6) +
  labs(title = "温度 vs 溶解氧",
       x = "温度(℃)",
       y = "溶解氧(mg/L)") +
  theme_minimal()

print(p)

# 保存高清图
dir.create("output", showWarnings = FALSE)
ggsave("output/plot_temp_do.png", p, width = 8, height = 5, dpi = 300)

# 3. 完成提示
cat("✅ 图表已保存到 output/plot_temp_do.png\n")
cat("🎉 分析全部完成！\n")