# SWMP_Trends
Data and code to reproduce the statistical analyses in "20-year water quality analysis reveals spatial variability and long-term changes at North Carolina’s Masonboro Island National Estuarine Research Reserve" by Brown et al. 2024, https://doi.org/10.1016/j.ecss.2024.108937.  


## Overview
This repository includes the R code scripts used for preprocessing data and performing the statistical analyses in the study mentioned above. Brief descriptions of the R Scripts are outlined in the 'Script' section below. For more detailed information on the datasets and methodologies used, please see the study mentioned above.  


## Prerequisites
Before running the scripts in this repository, R Studio and the necessary R packages need to be installed. 

**Software**: R Studio (code was executed on R Studio Desktop 2020)

**R Packages**: see scripts below

**NERRS SWMP Data**: http://nerrscdmo.org/


## Scripts
Below are the R script names and the corresponding descriptions that can be used to replicate the data preprocessing and statistical analyses. Scripts can be found in the 'scripts' folder. 

**data_preprocessing.R**: Preprocessing SWMP data for statistical analyses. 

**data_normality_test.R**: Test normality (Shapiro Wilk test) and log-transform SWMP data prior to statistical analyses. 

**linear_regression.R**: Linear regression analysis to determine statistical significance and direction of trends over time. 

**anova.R**: Analysis of Variance (ANOVA) test and Tukey test. Tested spatial differences between three or more SWMP stations. 

**t_tests.R**: Student's t-test (normal data) and Welch's t-test (non-normal data). Tested spatial differences between two SWMP stations. 

**pca.R**: Principal component analysis (PCA) used to visualize relationships of all datasets.

**correlation_matrix.R**: Correlation matrix and significance test between variables for each SWMP station. 

**stl.R**: Seasonal-trend Decomposition of Time Series by Loess. 



## Attribution
If you use this methodology, be sure to properly cite the journal article above (https://doi.org/10.1016/j.ecss.2024.108937) and the specific statistical methodologies and references therein. 

Note, the datasets used in this study and available here are collected by the National Estuarine Researach Reserve's System-wide Monitoring Program and can be freely and publicly accessed via http://nerrscdmo.org/. If you would like to reproduce these statistical analyses for a different National Estuarine Research Reserve, you can use that link to specify a particular station and date range. 
## 数据说明

原始数据需从 NERRS 网站手动下载，详见 `DATA_ISSUE.md`。由于数据缺失，代码运行至数据加载步骤中断，但环境已完整配置。

## 运行步骤（如具备数据）

1. 打开 RStudio 项目
2. 运行 `renv::restore()` 安装包
3. 将下载的数据放入 `Input_Files/NOCLCWQ.xlsx`
4. 依次运行 `scripts/` 中的脚本

## 如何复现

### 前提条件
- 安装 R 4.0 以上和 RStudio
- 安装 Git（可选）

### 一键复现
1. 克隆本仓库到本地
2. 在 RStudio 中打开 `SWMP_Trends.Rproj`
3. 运行 `source("run_all.R")` 或手动运行以下步骤：
   - 安装依赖包：`install.packages(c("tidyverse","lubridate","rmarkdown"))`
   - 生成模拟数据并分析：运行 `data_preprocessing.R`
   - 渲染报告：`rmarkdown::render("report.qmd")`

### 结果
- 报告：`report.html`
- 趋势图：`temperature_trend.png`（如果生成）

## 小组成员贡献

- @刘芸慧：环境配置、代码调试、报告撰写
- @肖新怡：数据说明、README 修改
- @周炎：测试环境、提交记录
