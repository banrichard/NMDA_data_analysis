# 抗体滴度与疾病严重程度关系分析报告
 ## 1. 抗体滴度 (CSFrank) 与 mRS 的关系 (有序逻辑斯蒂回归x, spearman's rho & kendall's tau) Table: 模型结果：mRS ~ CSFrank
 
 
 > cor.test(my.dat2$mRS, my.dat2$CSFrank, method = "spearman")

	Spearman's rank correlation rho

data:  my.dat2$mRS and my.dat2$CSFrank
S = 6068713, p-value = 0.006099
alternative hypothesis: true rho is not equal to 0
sample estimates:
       rho 
-0.1539606 

结果显著，正相关，相关性0.15

> cor.test(my.dat2$mRS, my.dat2$CSFrank, method = "kendall")

	Kendall's rank correlation tau

data:  my.dat2$mRS and my.dat2$CSFrank
z = -2.7327, p-value = 0.006282
alternative hypothesis: true tau is not equal to 0
sample estimates:
       tau 
-0.1372088 
 
 结果显著，正相关，相关性0.13

 
#########
|变量      |  估计值| 标准误|     t值|    p值|显著性 |
|:---------|-------:|------:|-------:|------:|:------|
|CSFrank.L | -0.8543| 0.5895| -1.4492| 0.1483|       |
|CSFrank.Q |  0.0594| 0.3590|  0.1656| 0.8686|       |
|1&#124;2  | -2.0361| 0.3094| -6.5801| 0.0000|***    |
|2&#124;3  | -1.1036| 0.2923| -3.7751| 0.0002|***    |
|3&#124;4  |  0.1230| 0.2871|  0.4286| 0.6685|       |
|4&#124;5  |  1.1486| 0.2954|  3.8886| 0.0001|***    | 

---

 ## 2. 抗体滴度 (CSFrank) 与 ICU Admission 的关系 (逻辑斯蒂回归x, spearmen's rho and kendall's tau) Table: 模型结果：ICU admission ~ CSFrank
 
 > # Spearman
> cor.test(my.dat2$`ICU admission`, my.dat2$CSFrank, method = "spearman")

	Spearman's rank correlation rho

data:  my.dat2$`ICU admission` and my.dat2$CSFrank
S = 6039041, p-value = 0.008273
alternative hypothesis: true rho is not equal to 0
sample estimates:
       rho 
-0.1483184 
 
 结果显著，正相关，相关性0.14

 > # Kendall
> cor.test(my.dat2$`ICU admission`, my.dat2$CSFrank, method = "kendall")

	Kendall's rank correlation tau

data:  my.dat2$`ICU admission` and my.dat2$CSFrank
z = -2.6324, p-value = 0.008479
alternative hypothesis: true tau is not equal to 0
sample estimates:
       tau 
-0.1472118 
 
 结果显著，正相关，相关性0.14
 
 
 
 

|变量        |  估计值| 标准误|     z值|    p值| 优势比(OR)|显著性 |
|:-----------|-------:|------:|-------:|------:|----------:|:------|
|(Intercept) | -0.9561| 0.3178| -3.0088| 0.0026|     0.3844|**     |
|CSFrank.L   | -0.8192| 0.6626| -1.2363| 0.2163|     0.4408|       |
|CSFrank.Q   | -0.0702| 0.4083| -0.1719| 0.8635|     0.9322|       |
