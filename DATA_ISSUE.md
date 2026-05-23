# 数据获取说明

本项目使用的原始数据需从 NERRS 网站（http://nerrscdmro.org/）手动下载。
具体步骤：
1. 选择站点 Masonboro Island (MBN)
2. 选择参数：水温、盐度、溶解氧、pH、叶绿素
3. 时间范围：2002-01-01 至 2022-12-31
4. 导出 CSV 格式，并保存为 `Input_Files/NOCLCWQ.xlsx`

由于网络限制及时间原因，我们未能成功下载数据，因此代码运行到 `data_preprocessing.R` 时因找不到文件而中断。
但所有的 R 环境配置、依赖包安装、脚本结构均已完整准备，具备可复现的潜力。