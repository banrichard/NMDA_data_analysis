# 污染物浓度与首发症状关系分析报告
 
## 分析症状: Seizures

---

### 污染物: AQI Table: 模型汇总: AQI 对 Seizures 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   1.1384|    0.4176|    2.7260|  0.0064|**     |
|glm_binomial |Model1     |AQI_M0      |  -0.0127|    0.0094|   -1.3507|  0.1768|       |
|glm_binomial |Model2     |(Intercept) |   0.7811|    0.3954|    1.9754|  0.0482|*      |
|glm_binomial |Model2     |AQI_M1      |  -0.0042|    0.0088|   -0.4794|  0.6316|       |
|glm_binomial |Model3     |(Intercept) |   0.4996|    0.3807|    1.3121|  0.1895|       |
|glm_binomial |Model3     |AQI_M2      |   0.0023|    0.0083|    0.2782|  0.7809|       |
|glm_binomial |Model4     |(Intercept) |   0.3540|    0.3706|    0.9554|  0.3394|       |
|glm_binomial |Model4     |AQI_M3      |   0.0056|    0.0080|    0.6981|  0.4851|       |
|glm_binomial |Model5     |(Intercept) |   1.0457|    0.4391|    2.3813|  0.0173|*      |
|glm_binomial |Model5     |AQI_M0      |  -0.0191|    0.0134|   -1.4300|  0.1527|       |
|glm_binomial |Model5     |AQI_M1      |   0.0086|    0.0127|    0.6785|  0.4975|       |
|glm_binomial |Model6     |(Intercept) |   0.9311|    0.4547|    2.0475|  0.0406|*      |
|glm_binomial |Model6     |AQI_M0      |  -0.0185|    0.0134|   -1.3777|  0.1683|       |
|glm_binomial |Model6     |AQI_M1      |  -0.0030|    0.0173|   -0.1733|  0.8624|       |
|glm_binomial |Model6     |AQI_M2      |   0.0134|    0.0136|    0.9843|  0.3250|       |
|glm_binomial |Model7     |(Intercept) |   0.8604|    0.4891|    1.7592|  0.0786|.      |
|glm_binomial |Model7     |AQI_M0      |  -0.0168|    0.0141|   -1.1919|  0.2333|       |
|glm_binomial |Model7     |AQI_M1      |  -0.0045|    0.0177|   -0.2517|  0.8012|       |
|glm_binomial |Model7     |AQI_M2      |   0.0098|    0.0165|    0.5950|  0.5518|       |
|glm_binomial |Model7     |AQI_M3      |   0.0050|    0.0127|    0.3899|  0.6966|       |

---

### 污染物: CO Table: 模型汇总: CO 对 Seizures 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   0.7073|    0.5584|    1.2665|  0.2053|       |
|glm_binomial |Model1     |CO_M0       |  -0.1508|    0.7707|   -0.1957|  0.8449|       |
|glm_binomial |Model2     |(Intercept) |   0.8336|    0.5076|    1.6422|  0.1005|       |
|glm_binomial |Model2     |CO_M1       |  -0.3251|    0.6876|   -0.4729|  0.6363|       |
|glm_binomial |Model3     |(Intercept) |   0.4291|    0.4994|    0.8592|  0.3902|       |
|glm_binomial |Model3     |CO_M2       |   0.2382|    0.6758|    0.3524|  0.7245|       |
|glm_binomial |Model4     |(Intercept) |   0.4355|    0.4907|    0.8875|  0.3748|       |
|glm_binomial |Model4     |CO_M3       |   0.2274|    0.6577|    0.3458|  0.7295|       |
|glm_binomial |Model5     |(Intercept) |   0.7549|    0.5657|    1.3345|  0.1820|       |
|glm_binomial |Model5     |CO_M0       |   0.4150|    1.3122|    0.3162|  0.7518|       |
|glm_binomial |Model5     |CO_M1       |  -0.6250|    1.1698|   -0.5343|  0.5931|       |
|glm_binomial |Model6     |(Intercept) |   0.6113|    0.5774|    1.0587|  0.2898|       |
|glm_binomial |Model6     |CO_M0       |   0.2481|    1.3169|    0.1884|  0.8505|       |
|glm_binomial |Model6     |CO_M1       |  -1.8793|    1.5203|   -1.2362|  0.2164|       |
|glm_binomial |Model6     |CO_M2       |   1.6141|    1.2484|    1.2930|  0.1960|       |
|glm_binomial |Model7     |(Intercept) |   0.5987|    0.5938|    1.0083|  0.3133|       |
|glm_binomial |Model7     |CO_M0       |   0.2599|    1.3233|    0.1964|  0.8443|       |
|glm_binomial |Model7     |CO_M1       |  -1.8868|    1.5229|   -1.2390|  0.2154|       |
|glm_binomial |Model7     |CO_M2       |   1.5031|    1.7409|    0.8634|  0.3879|       |
|glm_binomial |Model7     |CO_M3       |   0.1234|    1.3489|    0.0914|  0.9271|       |

---

### 污染物: CO_24h Table: 模型汇总: CO_24h 对 Seizures 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   0.7080|    0.5569|    1.2712|  0.2037|       |
|glm_binomial |Model1     |CO_24h_M0   |  -0.1518|    0.7686|   -0.1975|  0.8434|       |
|glm_binomial |Model2     |(Intercept) |   0.8352|    0.5063|    1.6496|  0.0990|.      |
|glm_binomial |Model2     |CO_24h_M1   |  -0.3276|    0.6863|   -0.4774|  0.6331|       |
|glm_binomial |Model3     |(Intercept) |   0.3982|    0.4996|    0.7970|  0.4254|       |
|glm_binomial |Model3     |CO_24h_M2   |   0.2813|    0.6765|    0.4158|  0.6775|       |
|glm_binomial |Model4     |(Intercept) |   0.4336|    0.4912|    0.8828|  0.3774|       |
|glm_binomial |Model4     |CO_24h_M3   |   0.2303|    0.6592|    0.3493|  0.7268|       |
|glm_binomial |Model5     |(Intercept) |   0.7563|    0.5643|    1.3403|  0.1801|       |
|glm_binomial |Model5     |CO_24h_M0   |   0.4139|    1.3046|    0.3173|  0.7510|       |
|glm_binomial |Model5     |CO_24h_M1   |  -0.6265|    1.1639|   -0.5382|  0.5904|       |
|glm_binomial |Model6     |(Intercept) |   0.5968|    0.5767|    1.0348|  0.3008|       |
|glm_binomial |Model6     |CO_24h_M0   |   0.2308|    1.3088|    0.1763|  0.8600|       |
|glm_binomial |Model6     |CO_24h_M1   |  -1.9841|    1.5129|   -1.3114|  0.1897|       |
|glm_binomial |Model6     |CO_24h_M2   |   1.7551|    1.2483|    1.4059|  0.1597|       |
|glm_binomial |Model7     |(Intercept) |   0.5957|    0.5937|    1.0034|  0.3157|       |
|glm_binomial |Model7     |CO_24h_M0   |   0.2319|    1.3160|    0.1762|  0.8601|       |
|glm_binomial |Model7     |CO_24h_M1   |  -1.9849|    1.5164|   -1.3089|  0.1906|       |
|glm_binomial |Model7     |CO_24h_M2   |   1.7460|    1.7193|    1.0156|  0.3098|       |
|glm_binomial |Model7     |CO_24h_M3   |   0.0103|    1.3350|    0.0077|  0.9939|       |

---

### 污染物: NO2 Table: 模型汇总: NO2 对 Seizures 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   1.3632|    0.2854|    4.7763|  0.0000|***    |
|glm_binomial |Model1     |NO2_M0      |  -0.0316|    0.0106|   -2.9881|  0.0028|**     |
|glm_binomial |Model2     |(Intercept) |   1.2397|    0.2688|    4.6126|  0.0000|***    |
|glm_binomial |Model2     |NO2_M1      |  -0.0265|    0.0098|   -2.6936|  0.0071|**     |
|glm_binomial |Model3     |(Intercept) |   1.0447|    0.2647|    3.9474|  0.0001|***    |
|glm_binomial |Model3     |NO2_M2      |  -0.0180|    0.0095|   -1.8981|  0.0577|.      |
|glm_binomial |Model4     |(Intercept) |   0.9071|    0.2566|    3.5357|  0.0004|***    |
|glm_binomial |Model4     |NO2_M3      |  -0.0123|    0.0090|   -1.3580|  0.1745|       |
|glm_binomial |Model5     |(Intercept) |   1.3838|    0.2903|    4.7676|  0.0000|***    |
|glm_binomial |Model5     |NO2_M0      |  -0.0256|    0.0184|   -1.3908|  0.1643|       |
|glm_binomial |Model5     |NO2_M1      |  -0.0068|    0.0172|   -0.3982|  0.6905|       |
|glm_binomial |Model6     |(Intercept) |   1.3420|    0.2962|    4.5302|  0.0000|***    |
|glm_binomial |Model6     |NO2_M0      |  -0.0281|    0.0189|   -1.4918|  0.1358|       |
|glm_binomial |Model6     |NO2_M1      |  -0.0144|    0.0203|   -0.7078|  0.4791|       |
|glm_binomial |Model6     |NO2_M2      |   0.0115|    0.0163|    0.7075|  0.4793|       |
|glm_binomial |Model7     |(Intercept) |   1.3096|    0.3021|    4.3350|  0.0000|***    |
|glm_binomial |Model7     |NO2_M0      |  -0.0279|    0.0189|   -1.4782|  0.1394|       |
|glm_binomial |Model7     |NO2_M1      |  -0.0161|    0.0206|   -0.7801|  0.4353|       |
|glm_binomial |Model7     |NO2_M2      |   0.0064|    0.0190|    0.3354|  0.7374|       |
|glm_binomial |Model7     |NO2_M3      |   0.0079|    0.0149|    0.5276|  0.5978|       |

---

### 污染物: NO2_24h Table: 模型汇总: NO2_24h 对 Seizures 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   1.3636|    0.2854|    4.7774|  0.0000|***    |
|glm_binomial |Model1     |NO2_24h_M0  |  -0.0317|    0.0106|   -2.9897|  0.0028|**     |
|glm_binomial |Model2     |(Intercept) |   1.2366|    0.2688|    4.6008|  0.0000|***    |
|glm_binomial |Model2     |NO2_24h_M1  |  -0.0264|    0.0098|   -2.6803|  0.0074|**     |
|glm_binomial |Model3     |(Intercept) |   1.0389|    0.2647|    3.9250|  0.0001|***    |
|glm_binomial |Model3     |NO2_24h_M2  |  -0.0178|    0.0095|   -1.8727|  0.0611|.      |
|glm_binomial |Model4     |(Intercept) |   0.9155|    0.2567|    3.5667|  0.0004|***    |
|glm_binomial |Model4     |NO2_24h_M3  |  -0.0126|    0.0091|   -1.3945|  0.1632|       |
|glm_binomial |Model5     |(Intercept) |   1.3830|    0.2903|    4.7641|  0.0000|***    |
|glm_binomial |Model5     |NO2_24h_M0  |  -0.0260|    0.0184|   -1.4119|  0.1580|       |
|glm_binomial |Model5     |NO2_24h_M1  |  -0.0064|    0.0172|   -0.3739|  0.7085|       |
|glm_binomial |Model6     |(Intercept) |   1.3393|    0.2963|    4.5205|  0.0000|***    |
|glm_binomial |Model6     |NO2_24h_M0  |  -0.0286|    0.0189|   -1.5178|  0.1291|       |
|glm_binomial |Model6     |NO2_24h_M1  |  -0.0144|    0.0204|   -0.7067|  0.4798|       |
|glm_binomial |Model6     |NO2_24h_M2  |   0.0121|    0.0164|    0.7412|  0.4586|       |
|glm_binomial |Model7     |(Intercept) |   1.3124|    0.3024|    4.3400|  0.0000|***    |
|glm_binomial |Model7     |NO2_24h_M0  |  -0.0284|    0.0189|   -1.5003|  0.1335|       |
|glm_binomial |Model7     |NO2_24h_M1  |  -0.0160|    0.0208|   -0.7687|  0.4421|       |
|glm_binomial |Model7     |NO2_24h_M2  |   0.0080|    0.0190|    0.4201|  0.6744|       |
|glm_binomial |Model7     |NO2_24h_M3  |   0.0064|    0.0149|    0.4311|  0.6664|       |

---

### 污染物: O3 Table: 模型汇总: O3 对 Seizures 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   0.6994|    0.4614|    1.5158|  0.1296|       |
|glm_binomial |Model1     |O3_M0       |  -0.0017|    0.0077|   -0.2218|  0.8245|       |
|glm_binomial |Model2     |(Intercept) |   0.1133|    0.5063|    0.2238|  0.8229|       |
|glm_binomial |Model2     |O3_M1       |   0.0085|    0.0086|    0.9851|  0.3246|       |
|glm_binomial |Model3     |(Intercept) |   0.2470|    0.4772|    0.5175|  0.6048|       |
|glm_binomial |Model3     |O3_M2       |   0.0061|    0.0080|    0.7614|  0.4464|       |
|glm_binomial |Model4     |(Intercept) |   0.4089|    0.4610|    0.8869|  0.3751|       |
|glm_binomial |Model4     |O3_M3       |   0.0034|    0.0079|    0.4289|  0.6680|       |
|glm_binomial |Model5     |(Intercept) |   0.3050|    0.5547|    0.5498|  0.5825|       |
|glm_binomial |Model5     |O3_M0       |  -0.0076|    0.0090|   -0.8450|  0.3981|       |
|glm_binomial |Model5     |O3_M1       |   0.0129|    0.0101|    1.2727|  0.2031|       |
|glm_binomial |Model6     |(Intercept) |   0.2203|    0.6240|    0.3530|  0.7241|       |
|glm_binomial |Model6     |O3_M0       |  -0.0074|    0.0090|   -0.8228|  0.4106|       |
|glm_binomial |Model6     |O3_M1       |   0.0114|    0.0112|    1.0263|  0.3048|       |
|glm_binomial |Model6     |O3_M2       |   0.0027|    0.0090|    0.2960|  0.7672|       |
|glm_binomial |Model7     |(Intercept) |   0.2097|    0.6926|    0.3027|  0.7621|       |
|glm_binomial |Model7     |O3_M0       |  -0.0074|    0.0091|   -0.8151|  0.4150|       |
|glm_binomial |Model7     |O3_M1       |   0.0115|    0.0112|    1.0267|  0.3045|       |
|glm_binomial |Model7     |O3_M2       |   0.0025|    0.0102|    0.2441|  0.8072|       |
|glm_binomial |Model7     |O3_M3       |   0.0003|    0.0091|    0.0353|  0.9719|       |

---

### 污染物: PM10 Table: 模型汇总: PM10 对 Seizures 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   1.0934|    0.3538|    3.0908|  0.0020|**     |
|glm_binomial |Model1     |PM10_M0     |  -0.0119|    0.0080|   -1.4892|  0.1364|       |
|glm_binomial |Model2     |(Intercept) |   0.7707|    0.3331|    2.3139|  0.0207|*      |
|glm_binomial |Model2     |PM10_M1     |  -0.0041|    0.0074|   -0.5477|  0.5839|       |
|glm_binomial |Model3     |(Intercept) |   0.5521|    0.3318|    1.6642|  0.0961|.      |
|glm_binomial |Model3     |PM10_M2     |   0.0011|    0.0073|    0.1557|  0.8763|       |
|glm_binomial |Model4     |(Intercept) |   0.3646|    0.3241|    1.1250|  0.2606|       |
|glm_binomial |Model4     |PM10_M3     |   0.0055|    0.0070|    0.7763|  0.4376|       |
|glm_binomial |Model5     |(Intercept) |   1.0142|    0.3714|    2.7308|  0.0063|**     |
|glm_binomial |Model5     |PM10_M0     |  -0.0173|    0.0112|   -1.5454|  0.1223|       |
|glm_binomial |Model5     |PM10_M1     |   0.0073|    0.0106|    0.6922|  0.4888|       |
|glm_binomial |Model6     |(Intercept) |   0.9139|    0.3867|    2.3633|  0.0181|*      |
|glm_binomial |Model6     |PM10_M0     |  -0.0177|    0.0112|   -1.5714|  0.1161|       |
|glm_binomial |Model6     |PM10_M1     |  -0.0008|    0.0137|   -0.0567|  0.9548|       |
|glm_binomial |Model6     |PM10_M2     |   0.0107|    0.0114|    0.9323|  0.3512|       |
|glm_binomial |Model7     |(Intercept) |   0.8223|    0.4183|    1.9660|  0.0493|*      |
|glm_binomial |Model7     |PM10_M0     |  -0.0157|    0.0117|   -1.3427|  0.1794|       |
|glm_binomial |Model7     |PM10_M1     |  -0.0022|    0.0139|   -0.1565|  0.8757|       |
|glm_binomial |Model7     |PM10_M2     |   0.0062|    0.0139|    0.4429|  0.6578|       |
|glm_binomial |Model7     |PM10_M3     |   0.0061|    0.0107|    0.5669|  0.5708|       |

---

### 污染物: PM10_24h Table: 模型汇总: PM10_24h 对 Seizures 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   1.0754|    0.3514|    3.0602|  0.0022|**     |
|glm_binomial |Model1     |PM10_24h_M0 |  -0.0115|    0.0079|   -1.4453|  0.1484|       |
|glm_binomial |Model2     |(Intercept) |   0.7552|    0.3308|    2.2832|  0.0224|*      |
|glm_binomial |Model2     |PM10_24h_M1 |  -0.0037|    0.0074|   -0.5017|  0.6158|       |
|glm_binomial |Model3     |(Intercept) |   0.5440|    0.3298|    1.6497|  0.0990|.      |
|glm_binomial |Model3     |PM10_24h_M2 |   0.0013|    0.0073|    0.1830|  0.8548|       |
|glm_binomial |Model4     |(Intercept) |   0.3848|    0.3226|    1.1928|  0.2330|       |
|glm_binomial |Model4     |PM10_24h_M3 |   0.0050|    0.0070|    0.7140|  0.4752|       |
|glm_binomial |Model5     |(Intercept) |   0.9949|    0.3690|    2.6960|  0.0070|**     |
|glm_binomial |Model5     |PM10_24h_M0 |  -0.0170|    0.0111|   -1.5251|  0.1272|       |
|glm_binomial |Model5     |PM10_24h_M1 |   0.0074|    0.0105|    0.7049|  0.4809|       |
|glm_binomial |Model6     |(Intercept) |   0.8963|    0.3842|    2.3329|  0.0197|*      |
|glm_binomial |Model6     |PM10_24h_M0 |  -0.0173|    0.0112|   -1.5508|  0.1209|       |
|glm_binomial |Model6     |PM10_24h_M1 |  -0.0006|    0.0136|   -0.0475|  0.9621|       |
|glm_binomial |Model6     |PM10_24h_M2 |   0.0106|    0.0114|    0.9244|  0.3553|       |
|glm_binomial |Model7     |(Intercept) |   0.8229|    0.4159|    1.9786|  0.0479|*      |
|glm_binomial |Model7     |PM10_24h_M0 |  -0.0158|    0.0116|   -1.3590|  0.1741|       |
|glm_binomial |Model7     |PM10_24h_M1 |  -0.0018|    0.0139|   -0.1290|  0.8973|       |
|glm_binomial |Model7     |PM10_24h_M2 |   0.0071|    0.0138|    0.5127|  0.6081|       |
|glm_binomial |Model7     |PM10_24h_M3 |   0.0048|    0.0105|    0.4569|  0.6478|       |

---

### 污染物: PM2.5 Table: 模型汇总: PM2.5 对 Seizures 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   0.9461|    0.3074|    3.0775|  0.0021|**     |
|glm_binomial |Model1     |PM2.5_M0    |  -0.0143|    0.0116|   -1.2258|  0.2203|       |
|glm_binomial |Model2     |(Intercept) |   0.7358|    0.2937|    2.5049|  0.0122|*      |
|glm_binomial |Model2     |PM2.5_M1    |  -0.0055|    0.0109|   -0.5040|  0.6143|       |
|glm_binomial |Model3     |(Intercept) |   0.5180|    0.2788|    1.8582|  0.0631|.      |
|glm_binomial |Model3     |PM2.5_M2    |   0.0033|    0.0101|    0.3251|  0.7451|       |
|glm_binomial |Model4     |(Intercept) |   0.3979|    0.2747|    1.4487|  0.1474|       |
|glm_binomial |Model4     |PM2.5_M3    |   0.0079|    0.0098|    0.8096|  0.4182|       |
|glm_binomial |Model5     |(Intercept) |   0.8913|    0.3198|    2.7873|  0.0053|**     |
|glm_binomial |Model5     |PM2.5_M0    |  -0.0223|    0.0175|   -1.2710|  0.2037|       |
|glm_binomial |Model5     |PM2.5_M1    |   0.0101|    0.0165|    0.6116|  0.5408|       |
|glm_binomial |Model6     |(Intercept) |   0.8042|    0.3295|    2.4402|  0.0147|*      |
|glm_binomial |Model6     |PM2.5_M0    |  -0.0189|    0.0178|   -1.0603|  0.2890|       |
|glm_binomial |Model6     |PM2.5_M1    |  -0.0104|    0.0248|   -0.4201|  0.6744|       |
|glm_binomial |Model6     |PM2.5_M2    |   0.0203|    0.0184|    1.1059|  0.2688|       |
|glm_binomial |Model7     |(Intercept) |   0.7322|    0.3560|    2.0566|  0.0397|*      |
|glm_binomial |Model7     |PM2.5_M0    |  -0.0154|    0.0190|   -0.8071|  0.4196|       |
|glm_binomial |Model7     |PM2.5_M1    |  -0.0130|    0.0253|   -0.5147|  0.6067|       |
|glm_binomial |Model7     |PM2.5_M2    |   0.0129|    0.0230|    0.5606|  0.5751|       |
|glm_binomial |Model7     |PM2.5_M3    |   0.0093|    0.0174|    0.5323|  0.5946|       |

---

### 污染物: PM2.5_24h Table: 模型汇总: PM2.5_24h 对 Seizures 的影响

|model_type   |model_name |term         | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:------------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept)  |   0.9422|    0.3068|    3.0709|  0.0021|**     |
|glm_binomial |Model1     |PM2.5_24h_M0 |  -0.0141|    0.0116|   -1.2149|  0.2244|       |
|glm_binomial |Model2     |(Intercept)  |   0.7306|    0.2932|    2.4914|  0.0127|*      |
|glm_binomial |Model2     |PM2.5_24h_M1 |  -0.0053|    0.0109|   -0.4855|  0.6273|       |
|glm_binomial |Model3     |(Intercept)  |   0.5055|    0.2786|    1.8143|  0.0696|.      |
|glm_binomial |Model3     |PM2.5_24h_M2 |   0.0038|    0.0101|    0.3748|  0.7078|       |
|glm_binomial |Model4     |(Intercept)  |   0.4062|    0.2746|    1.4793|  0.1391|       |
|glm_binomial |Model4     |PM2.5_24h_M3 |   0.0076|    0.0098|    0.7772|  0.4370|       |
|glm_binomial |Model5     |(Intercept)  |   0.8864|    0.3194|    2.7755|  0.0055|**     |
|glm_binomial |Model5     |PM2.5_24h_M0 |  -0.0222|    0.0175|   -1.2714|  0.2036|       |
|glm_binomial |Model5     |PM2.5_24h_M1 |   0.0102|    0.0165|    0.6195|  0.5356|       |
|glm_binomial |Model6     |(Intercept)  |   0.7935|    0.3294|    2.4087|  0.0160|*      |
|glm_binomial |Model6     |PM2.5_24h_M0 |  -0.0186|    0.0177|   -1.0461|  0.2955|       |
|glm_binomial |Model6     |PM2.5_24h_M1 |  -0.0115|    0.0248|   -0.4644|  0.6423|       |
|glm_binomial |Model6     |PM2.5_24h_M2 |   0.0215|    0.0184|    1.1646|  0.2442|       |
|glm_binomial |Model7     |(Intercept)  |   0.7354|    0.3556|    2.0680|  0.0386|*      |
|glm_binomial |Model7     |PM2.5_24h_M0 |  -0.0157|    0.0189|   -0.8312|  0.4059|       |
|glm_binomial |Model7     |PM2.5_24h_M1 |  -0.0138|    0.0254|   -0.5439|  0.5865|       |
|glm_binomial |Model7     |PM2.5_24h_M2 |   0.0158|    0.0226|    0.6990|  0.4845|       |
|glm_binomial |Model7     |PM2.5_24h_M3 |   0.0074|    0.0171|    0.4318|  0.6659|       |

---

### 污染物: SO2 Table: 模型汇总: SO2 对 Seizures 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   1.0754|    0.3514|    3.0602|  0.0022|**     |
|glm_binomial |Model1     |SO2_M0      |  -0.0115|    0.0079|   -1.4453|  0.1484|       |
|glm_binomial |Model2     |(Intercept) |   0.7552|    0.3308|    2.2832|  0.0224|*      |
|glm_binomial |Model2     |SO2_M1      |  -0.0037|    0.0074|   -0.5017|  0.6158|       |
|glm_binomial |Model3     |(Intercept) |   0.5440|    0.3298|    1.6497|  0.0990|.      |
|glm_binomial |Model3     |SO2_M2      |   0.0013|    0.0073|    0.1830|  0.8548|       |
|glm_binomial |Model4     |(Intercept) |   0.3848|    0.3226|    1.1928|  0.2330|       |
|glm_binomial |Model4     |SO2_M3      |   0.0050|    0.0070|    0.7140|  0.4752|       |
|glm_binomial |Model5     |(Intercept) |   0.9949|    0.3690|    2.6960|  0.0070|**     |
|glm_binomial |Model5     |SO2_M0      |  -0.0170|    0.0111|   -1.5251|  0.1272|       |
|glm_binomial |Model5     |SO2_M1      |   0.0074|    0.0105|    0.7049|  0.4809|       |
|glm_binomial |Model6     |(Intercept) |   0.8963|    0.3842|    2.3329|  0.0197|*      |
|glm_binomial |Model6     |SO2_M0      |  -0.0173|    0.0112|   -1.5508|  0.1209|       |
|glm_binomial |Model6     |SO2_M1      |  -0.0006|    0.0136|   -0.0475|  0.9621|       |
|glm_binomial |Model6     |SO2_M2      |   0.0106|    0.0114|    0.9244|  0.3553|       |
|glm_binomial |Model7     |(Intercept) |   0.8229|    0.4159|    1.9786|  0.0479|*      |
|glm_binomial |Model7     |SO2_M0      |  -0.0158|    0.0116|   -1.3590|  0.1741|       |
|glm_binomial |Model7     |SO2_M1      |  -0.0018|    0.0139|   -0.1290|  0.8973|       |
|glm_binomial |Model7     |SO2_M2      |   0.0071|    0.0138|    0.5127|  0.6081|       |
|glm_binomial |Model7     |SO2_M3      |   0.0048|    0.0105|    0.4569|  0.6478|       |

---

### 污染物: SO2_24h Table: 模型汇总: SO2_24h 对 Seizures 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   0.1659|    0.3345|    0.4959|  0.6200|       |
|glm_binomial |Model1     |SO2_24h_M0  |   0.0523|    0.0381|    1.3714|  0.1703|       |
|glm_binomial |Model2     |(Intercept) |   0.1731|    0.3345|    0.5176|  0.6047|       |
|glm_binomial |Model2     |SO2_24h_M1  |   0.0512|    0.0379|    1.3500|  0.1770|       |
|glm_binomial |Model3     |(Intercept) |  -0.1102|    0.3358|   -0.3282|  0.7428|       |
|glm_binomial |Model3     |SO2_24h_M2  |   0.0848|    0.0383|    2.2152|  0.0267|*      |
|glm_binomial |Model4     |(Intercept) |  -0.1015|    0.3244|   -0.3130|  0.7543|       |
|glm_binomial |Model4     |SO2_24h_M3  |   0.0827|    0.0364|    2.2711|  0.0231|*      |
|glm_binomial |Model5     |(Intercept) |   0.1384|    0.3456|    0.4003|  0.6889|       |
|glm_binomial |Model5     |SO2_24h_M0  |   0.0332|    0.0735|    0.4518|  0.6514|       |
|glm_binomial |Model5     |SO2_24h_M1  |   0.0223|    0.0739|    0.3010|  0.7634|       |
|glm_binomial |Model6     |(Intercept) |  -0.0532|    0.3652|   -0.1458|  0.8841|       |
|glm_binomial |Model6     |SO2_24h_M0  |   0.0360|    0.0759|    0.4741|  0.6354|       |
|glm_binomial |Model6     |SO2_24h_M1  |  -0.0957|    0.0946|   -1.0120|  0.3115|       |
|glm_binomial |Model6     |SO2_24h_M2  |   0.1377|    0.0683|    2.0169|  0.0437|*      |
|glm_binomial |Model7     |(Intercept) |  -0.1259|    0.3759|   -0.3349|  0.7377|       |
|glm_binomial |Model7     |SO2_24h_M0  |   0.0435|    0.0763|    0.5710|  0.5680|       |
|glm_binomial |Model7     |SO2_24h_M1  |  -0.1028|    0.0954|   -1.0777|  0.2812|       |
|glm_binomial |Model7     |SO2_24h_M2  |   0.0894|    0.0877|    1.0195|  0.3080|       |
|glm_binomial |Model7     |SO2_24h_M3  |   0.0558|    0.0635|    0.8791|  0.3794|       |

---


## 分析症状: Memory dysfunction

---

### 污染物: AQI Table: 模型汇总: AQI 对 Memory dysfunction 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.5372|    0.3977|   -1.3508|  0.1768|       |
|glm_binomial |Model1     |AQI_M0      |   0.0118|    0.0090|    1.3096|  0.1903|       |
|glm_binomial |Model2     |(Intercept) |  -0.7215|    0.3817|   -1.8900|  0.0588|.      |
|glm_binomial |Model2     |AQI_M1      |   0.0161|    0.0086|    1.8738|  0.0610|.      |
|glm_binomial |Model3     |(Intercept) |  -0.4957|    0.3654|   -1.3565|  0.1749|       |
|glm_binomial |Model3     |AQI_M2      |   0.0105|    0.0080|    1.3170|  0.1879|       |
|glm_binomial |Model4     |(Intercept) |  -0.3715|    0.3538|   -1.0500|  0.2937|       |
|glm_binomial |Model4     |AQI_M3      |   0.0076|    0.0076|    0.9952|  0.3197|       |
|glm_binomial |Model5     |(Intercept) |  -0.7162|    0.4203|   -1.7042|  0.0883|.      |
|glm_binomial |Model5     |AQI_M0      |  -0.0004|    0.0128|   -0.0300|  0.9761|       |
|glm_binomial |Model5     |AQI_M1      |   0.0163|    0.0121|    1.3478|  0.1777|       |
|glm_binomial |Model6     |(Intercept) |  -0.6873|    0.4343|   -1.5825|  0.1135|       |
|glm_binomial |Model6     |AQI_M0      |  -0.0006|    0.0128|   -0.0435|  0.9653|       |
|glm_binomial |Model6     |AQI_M1      |   0.0193|    0.0166|    1.1639|  0.2445|       |
|glm_binomial |Model6     |AQI_M2      |  -0.0034|    0.0129|   -0.2626|  0.7928|       |
|glm_binomial |Model7     |(Intercept) |  -0.6747|    0.4664|   -1.4467|  0.1480|       |
|glm_binomial |Model7     |AQI_M0      |  -0.0009|    0.0134|   -0.0638|  0.9491|       |
|glm_binomial |Model7     |AQI_M1      |   0.0195|    0.0170|    1.1530|  0.2489|       |
|glm_binomial |Model7     |AQI_M2      |  -0.0028|    0.0156|   -0.1761|  0.8602|       |
|glm_binomial |Model7     |AQI_M3      |  -0.0009|    0.0121|   -0.0740|  0.9410|       |

---

### 污染物: CO Table: 模型汇总: CO 对 Memory dysfunction 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.9862|    0.5463|   -1.8051|  0.0711|.      |
|glm_binomial |Model1     |CO_M0       |   1.3414|    0.7568|    1.7725|  0.0763|.      |
|glm_binomial |Model2     |(Intercept) |  -1.4520|    0.5286|   -2.7470|  0.0060|**     |
|glm_binomial |Model2     |CO_M1       |   1.9806|    0.7257|    2.7293|  0.0063|**     |
|glm_binomial |Model3     |(Intercept) |  -1.2764|    0.4955|   -2.5759|  0.0100|**     |
|glm_binomial |Model3     |CO_M2       |   1.7229|    0.6728|    2.5606|  0.0104|*      |
|glm_binomial |Model4     |(Intercept) |  -1.1271|    0.4817|   -2.3399|  0.0193|*      |
|glm_binomial |Model4     |CO_M3       |   1.5024|    0.6472|    2.3216|  0.0203|*      |
|glm_binomial |Model5     |(Intercept) |  -1.2621|    0.5689|   -2.2183|  0.0265|*      |
|glm_binomial |Model5     |CO_M0       |  -1.2180|    1.3279|   -0.9172|  0.3590|       |
|glm_binomial |Model5     |CO_M1       |   2.9212|    1.2727|    2.2952|  0.0217|*      |
|glm_binomial |Model6     |(Intercept) |  -1.3145|    0.5765|   -2.2804|  0.0226|*      |
|glm_binomial |Model6     |CO_M0       |  -1.2702|    1.3296|   -0.9554|  0.3394|       |
|glm_binomial |Model6     |CO_M1       |   2.3826|    1.5858|    1.5025|  0.1330|       |
|glm_binomial |Model6     |CO_M2       |   0.6592|    1.1740|    0.5615|  0.5745|       |
|glm_binomial |Model7     |(Intercept) |  -1.3220|    0.5890|   -2.2444|  0.0248|*      |
|glm_binomial |Model7     |CO_M0       |  -1.2610|    1.3375|   -0.9429|  0.3458|       |
|glm_binomial |Model7     |CO_M1       |   2.3758|    1.5893|    1.4949|  0.1349|       |
|glm_binomial |Model7     |CO_M2       |   0.5862|    1.6658|    0.3519|  0.7249|       |
|glm_binomial |Model7     |CO_M3       |   0.0805|    1.3026|    0.0618|  0.9507|       |

---

### 污染物: CO_24h Table: 模型汇总: CO_24h 对 Memory dysfunction 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.9546|    0.5441|   -1.7544|  0.0794|.      |
|glm_binomial |Model1     |CO_24h_M0   |   1.2968|    0.7536|    1.7209|  0.0853|.      |
|glm_binomial |Model2     |(Intercept) |  -1.4264|    0.5253|   -2.7154|  0.0066|**     |
|glm_binomial |Model2     |CO_24h_M1   |   1.9461|    0.7214|    2.6977|  0.0070|**     |
|glm_binomial |Model3     |(Intercept) |  -1.2859|    0.4953|   -2.5962|  0.0094|**     |
|glm_binomial |Model3     |CO_24h_M2   |   1.7364|    0.6726|    2.5816|  0.0098|**     |
|glm_binomial |Model4     |(Intercept) |  -1.1556|    0.4825|   -2.3948|  0.0166|*      |
|glm_binomial |Model4     |CO_24h_M3   |   1.5435|    0.6491|    2.3779|  0.0174|*      |
|glm_binomial |Model5     |(Intercept) |  -1.2295|    0.5663|   -2.1709|  0.0299|*      |
|glm_binomial |Model5     |CO_24h_M0   |  -1.2452|    1.3177|   -0.9450|  0.3447|       |
|glm_binomial |Model5     |CO_24h_M1   |   2.9045|    1.2612|    2.3030|  0.0213|*      |
|glm_binomial |Model6     |(Intercept) |  -1.2940|    0.5746|   -2.2519|  0.0243|*      |
|glm_binomial |Model6     |CO_24h_M0   |  -1.3094|    1.3192|   -0.9925|  0.3209|       |
|glm_binomial |Model6     |CO_24h_M1   |   2.2758|    1.5684|    1.4510|  0.1468|       |
|glm_binomial |Model6     |CO_24h_M2   |   0.7768|    1.1707|    0.6636|  0.5070|       |
|glm_binomial |Model7     |(Intercept) |  -1.3107|    0.5879|   -2.2295|  0.0258|*      |
|glm_binomial |Model7     |CO_24h_M0   |  -1.2886|    1.3276|   -0.9706|  0.3317|       |
|glm_binomial |Model7     |CO_24h_M1   |   2.2582|    1.5731|    1.4355|  0.1512|       |
|glm_binomial |Model7     |CO_24h_M2   |   0.6228|    1.6402|    0.3797|  0.7041|       |
|glm_binomial |Model7     |CO_24h_M3   |   0.1729|    1.2898|    0.1341|  0.8933|       |

---

### 污染物: NO2 Table: 模型汇总: NO2 对 Memory dysfunction 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.4391|    0.2644|   -1.6608|  0.0968|.      |
|glm_binomial |Model1     |NO2_M0      |   0.0170|    0.0102|    1.6756|  0.0938|.      |
|glm_binomial |Model2     |(Intercept) |  -0.5291|    0.2523|   -2.0973|  0.0360|*      |
|glm_binomial |Model2     |NO2_M1      |   0.0208|    0.0096|    2.1717|  0.0299|*      |
|glm_binomial |Model3     |(Intercept) |  -0.4312|    0.2509|   -1.7190|  0.0856|.      |
|glm_binomial |Model3     |NO2_M2      |   0.0163|    0.0093|    1.7521|  0.0798|.      |
|glm_binomial |Model4     |(Intercept) |  -0.3519|    0.2436|   -1.4444|  0.1486|       |
|glm_binomial |Model4     |NO2_M3      |   0.0128|    0.0088|    1.4521|  0.1465|       |
|glm_binomial |Model5     |(Intercept) |  -0.5081|    0.2693|   -1.8864|  0.0592|.      |
|glm_binomial |Model5     |NO2_M0      |  -0.0040|    0.0180|   -0.2225|  0.8239|       |
|glm_binomial |Model5     |NO2_M1      |   0.0239|    0.0170|    1.4112|  0.1582|       |
|glm_binomial |Model6     |(Intercept) |  -0.5104|    0.2751|   -1.8555|  0.0635|.      |
|glm_binomial |Model6     |NO2_M0      |  -0.0041|    0.0183|   -0.2265|  0.8208|       |
|glm_binomial |Model6     |NO2_M1      |   0.0235|    0.0199|    1.1779|  0.2389|       |
|glm_binomial |Model6     |NO2_M2      |   0.0007|    0.0158|    0.0421|  0.9665|       |
|glm_binomial |Model7     |(Intercept) |  -0.5042|    0.2806|   -1.7966|  0.0724|.      |
|glm_binomial |Model7     |NO2_M0      |  -0.0042|    0.0183|   -0.2292|  0.8187|       |
|glm_binomial |Model7     |NO2_M1      |   0.0238|    0.0202|    1.1805|  0.2378|       |
|glm_binomial |Model7     |NO2_M2      |   0.0017|    0.0185|    0.0942|  0.9249|       |
|glm_binomial |Model7     |NO2_M3      |  -0.0016|    0.0143|   -0.1119|  0.9109|       |

---

### 污染物: NO2_24h Table: 模型汇总: NO2_24h 对 Memory dysfunction 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.4288|    0.2643|   -1.6227|  0.1046|       |
|glm_binomial |Model1     |NO2_24h_M0  |   0.0166|    0.0102|    1.6338|  0.1023|       |
|glm_binomial |Model2     |(Intercept) |  -0.5192|    0.2522|   -2.0585|  0.0395|*      |
|glm_binomial |Model2     |NO2_24h_M1  |   0.0204|    0.0096|    2.1287|  0.0333|*      |
|glm_binomial |Model3     |(Intercept) |  -0.4337|    0.2510|   -1.7276|  0.0841|.      |
|glm_binomial |Model3     |NO2_24h_M2  |   0.0164|    0.0093|    1.7615|  0.0782|.      |
|glm_binomial |Model4     |(Intercept) |  -0.3607|    0.2437|   -1.4798|  0.1389|       |
|glm_binomial |Model4     |NO2_24h_M3  |   0.0131|    0.0088|    1.4918|  0.1358|       |
|glm_binomial |Model5     |(Intercept) |  -0.4973|    0.2693|   -1.8467|  0.0648|.      |
|glm_binomial |Model5     |NO2_24h_M0  |  -0.0042|    0.0180|   -0.2314|  0.8170|       |
|glm_binomial |Model5     |NO2_24h_M1  |   0.0237|    0.0170|    1.3952|  0.1629|       |
|glm_binomial |Model6     |(Intercept) |  -0.5038|    0.2751|   -1.8316|  0.0670|.      |
|glm_binomial |Model6     |NO2_24h_M0  |  -0.0045|    0.0183|   -0.2486|  0.8037|       |
|glm_binomial |Model6     |NO2_24h_M1  |   0.0224|    0.0200|    1.1221|  0.2618|       |
|glm_binomial |Model6     |NO2_24h_M2  |   0.0018|    0.0158|    0.1162|  0.9075|       |
|glm_binomial |Model7     |(Intercept) |  -0.5008|    0.2808|   -1.7837|  0.0745|.      |
|glm_binomial |Model7     |NO2_24h_M0  |  -0.0046|    0.0183|   -0.2504|  0.8023|       |
|glm_binomial |Model7     |NO2_24h_M1  |   0.0226|    0.0203|    1.1144|  0.2651|       |
|glm_binomial |Model7     |NO2_24h_M2  |   0.0023|    0.0185|    0.1267|  0.8992|       |
|glm_binomial |Model7     |NO2_24h_M3  |  -0.0008|    0.0143|   -0.0525|  0.9581|       |

---

### 污染物: O3 Table: 模型汇总: O3 对 Memory dysfunction 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.4048|    0.4416|   -0.9168|  0.3593|       |
|glm_binomial |Model1     |O3_M0       |   0.0064|    0.0074|    0.8599|  0.3898|       |
|glm_binomial |Model2     |(Intercept) |  -0.8435|    0.4893|   -1.7238|  0.0847|.      |
|glm_binomial |Model2     |O3_M1       |   0.0140|    0.0083|    1.6921|  0.0906|.      |
|glm_binomial |Model3     |(Intercept) |   0.2563|    0.4558|    0.5622|  0.5740|       |
|glm_binomial |Model3     |O3_M2       |  -0.0050|    0.0076|   -0.6646|  0.5063|       |
|glm_binomial |Model4     |(Intercept) |   0.3513|    0.4413|    0.7962|  0.4259|       |
|glm_binomial |Model4     |O3_M3       |  -0.0068|    0.0075|   -0.9105|  0.3626|       |
|glm_binomial |Model5     |(Intercept) |  -0.8429|    0.5362|   -1.5720|  0.1159|       |
|glm_binomial |Model5     |O3_M0       |   0.0000|    0.0086|   -0.0027|  0.9978|       |
|glm_binomial |Model5     |O3_M1       |   0.0140|    0.0096|    1.4637|  0.1433|       |
|glm_binomial |Model6     |(Intercept) |  -0.4000|    0.6010|   -0.6655|  0.5057|       |
|glm_binomial |Model6     |O3_M0       |  -0.0011|    0.0087|   -0.1244|  0.9010|       |
|glm_binomial |Model6     |O3_M1       |   0.0217|    0.0108|    2.0118|  0.0442|*      |
|glm_binomial |Model6     |O3_M2       |  -0.0140|    0.0087|   -1.6166|  0.1060|       |
|glm_binomial |Model7     |(Intercept) |  -0.2483|    0.6691|   -0.3711|  0.7106|       |
|glm_binomial |Model7     |O3_M0       |  -0.0015|    0.0087|   -0.1759|  0.8604|       |
|glm_binomial |Model7     |O3_M1       |   0.0216|    0.0108|    2.0021|  0.0453|*      |
|glm_binomial |Model7     |O3_M2       |  -0.0117|    0.0098|   -1.1950|  0.2321|       |
|glm_binomial |Model7     |O3_M3       |  -0.0045|    0.0088|   -0.5165|  0.6055|       |

---

### 污染物: PM10 Table: 模型汇总: PM10 对 Memory dysfunction 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.3758|    0.3356|   -1.1199|  0.2628|       |
|glm_binomial |Model1     |PM10_M0     |   0.0082|    0.0077|    1.0694|  0.2849|       |
|glm_binomial |Model2     |(Intercept) |  -0.5089|    0.3204|   -1.5883|  0.1122|       |
|glm_binomial |Model2     |PM10_M1     |   0.0113|    0.0072|    1.5697|  0.1165|       |
|glm_binomial |Model3     |(Intercept) |  -0.3857|    0.3180|   -1.2129|  0.2252|       |
|glm_binomial |Model3     |PM10_M2     |   0.0082|    0.0070|    1.1697|  0.2421|       |
|glm_binomial |Model4     |(Intercept) |  -0.3421|    0.3097|   -1.1046|  0.2693|       |
|glm_binomial |Model4     |PM10_M3     |   0.0070|    0.0067|    1.0548|  0.2915|       |
|glm_binomial |Model5     |(Intercept) |  -0.5020|    0.3535|   -1.4202|  0.1556|       |
|glm_binomial |Model5     |PM10_M0     |  -0.0005|    0.0107|   -0.0459|  0.9634|       |
|glm_binomial |Model5     |PM10_M1     |   0.0117|    0.0101|    1.1541|  0.2485|       |
|glm_binomial |Model6     |(Intercept) |  -0.4968|    0.3680|   -1.3498|  0.1771|       |
|glm_binomial |Model6     |PM10_M0     |  -0.0005|    0.0108|   -0.0445|  0.9645|       |
|glm_binomial |Model6     |PM10_M1     |   0.0121|    0.0131|    0.9224|  0.3563|       |
|glm_binomial |Model6     |PM10_M2     |  -0.0006|    0.0109|   -0.0511|  0.9593|       |
|glm_binomial |Model7     |(Intercept) |  -0.5374|    0.3981|   -1.3499|  0.1770|       |
|glm_binomial |Model7     |PM10_M0     |   0.0004|    0.0112|    0.0336|  0.9732|       |
|glm_binomial |Model7     |PM10_M1     |   0.0114|    0.0133|    0.8601|  0.3897|       |
|glm_binomial |Model7     |PM10_M2     |  -0.0026|    0.0132|   -0.1944|  0.8459|       |
|glm_binomial |Model7     |PM10_M3     |   0.0027|    0.0101|    0.2683|  0.7885|       |

---

### 污染物: PM10_24h Table: 模型汇总: PM10_24h 对 Memory dysfunction 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.3686|    0.3335|   -1.1051|  0.2691|       |
|glm_binomial |Model1     |PM10_24h_M0 |   0.0081|    0.0077|    1.0538|  0.2920|       |
|glm_binomial |Model2     |(Intercept) |  -0.5022|    0.3182|   -1.5784|  0.1145|       |
|glm_binomial |Model2     |PM10_24h_M1 |   0.0112|    0.0072|    1.5597|  0.1188|       |
|glm_binomial |Model3     |(Intercept) |  -0.3986|    0.3162|   -1.2606|  0.2074|       |
|glm_binomial |Model3     |PM10_24h_M2 |   0.0085|    0.0070|    1.2208|  0.2221|       |
|glm_binomial |Model4     |(Intercept) |  -0.3711|    0.3085|   -1.2029|  0.2290|       |
|glm_binomial |Model4     |PM10_24h_M3 |   0.0077|    0.0067|    1.1605|  0.2459|       |
|glm_binomial |Model5     |(Intercept) |  -0.4945|    0.3514|   -1.4070|  0.1594|       |
|glm_binomial |Model5     |PM10_24h_M0 |  -0.0006|    0.0107|   -0.0517|  0.9588|       |
|glm_binomial |Model5     |PM10_24h_M1 |   0.0116|    0.0100|    1.1551|  0.2480|       |
|glm_binomial |Model6     |(Intercept) |  -0.4982|    0.3658|   -1.3619|  0.1732|       |
|glm_binomial |Model6     |PM10_24h_M0 |  -0.0006|    0.0107|   -0.0527|  0.9580|       |
|glm_binomial |Model6     |PM10_24h_M1 |   0.0113|    0.0131|    0.8637|  0.3877|       |
|glm_binomial |Model6     |PM10_24h_M2 |   0.0004|    0.0109|    0.0366|  0.9708|       |
|glm_binomial |Model7     |(Intercept) |  -0.5544|    0.3961|   -1.3996|  0.1616|       |
|glm_binomial |Model7     |PM10_24h_M0 |   0.0006|    0.0111|    0.0534|  0.9574|       |
|glm_binomial |Model7     |PM10_24h_M1 |   0.0104|    0.0133|    0.7827|  0.4338|       |
|glm_binomial |Model7     |PM10_24h_M2 |  -0.0023|    0.0131|   -0.1762|  0.8601|       |
|glm_binomial |Model7     |PM10_24h_M3 |   0.0037|    0.0100|    0.3712|  0.7105|       |

---

### 污染物: PM2.5 Table: 模型汇总: PM2.5 对 Memory dysfunction 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.3800|    0.2928|   -1.2979|  0.1943|       |
|glm_binomial |Model1     |PM2.5_M0    |   0.0143|    0.0113|    1.2660|  0.2055|       |
|glm_binomial |Model2     |(Intercept) |  -0.4544|    0.2821|   -1.6107|  0.1072|       |
|glm_binomial |Model2     |PM2.5_M1    |   0.0170|    0.0106|    1.6097|  0.1075|       |
|glm_binomial |Model3     |(Intercept) |  -0.3527|    0.2677|   -1.3172|  0.1878|       |
|glm_binomial |Model3     |PM2.5_M2    |   0.0125|    0.0097|    1.2953|  0.1952|       |
|glm_binomial |Model4     |(Intercept) |  -0.3159|    0.2630|   -1.2009|  0.2298|       |
|glm_binomial |Model4     |PM2.5_M3    |   0.0108|    0.0093|    1.1694|  0.2423|       |
|glm_binomial |Model5     |(Intercept) |  -0.4661|    0.3055|   -1.5256|  0.1271|       |
|glm_binomial |Model5     |PM2.5_M0    |   0.0017|    0.0168|    0.0996|  0.9207|       |
|glm_binomial |Model5     |PM2.5_M1    |   0.0158|    0.0158|    1.0044|  0.3152|       |
|glm_binomial |Model6     |(Intercept) |  -0.4626|    0.3142|   -1.4721|  0.1410|       |
|glm_binomial |Model6     |PM2.5_M0    |   0.0015|    0.0171|    0.0900|  0.9283|       |
|glm_binomial |Model6     |PM2.5_M1    |   0.0167|    0.0237|    0.7043|  0.4813|       |
|glm_binomial |Model6     |PM2.5_M2    |  -0.0008|    0.0173|   -0.0476|  0.9620|       |
|glm_binomial |Model7     |(Intercept) |  -0.5011|    0.3395|   -1.4760|  0.1399|       |
|glm_binomial |Model7     |PM2.5_M0    |   0.0034|    0.0182|    0.1879|  0.8509|       |
|glm_binomial |Model7     |PM2.5_M1    |   0.0152|    0.0241|    0.6321|  0.5273|       |
|glm_binomial |Model7     |PM2.5_M2    |  -0.0047|    0.0217|   -0.2189|  0.8268|       |
|glm_binomial |Model7     |PM2.5_M3    |   0.0049|    0.0164|    0.3007|  0.7637|       |

---

### 污染物: PM2.5_24h Table: 模型汇总: PM2.5_24h 对 Memory dysfunction 的影响

|model_type   |model_name |term         | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:------------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept)  |  -0.3750|    0.2923|   -1.2832|  0.1994|       |
|glm_binomial |Model1     |PM2.5_24h_M0 |   0.0141|    0.0112|    1.2502|  0.2112|       |
|glm_binomial |Model2     |(Intercept)  |  -0.4354|    0.2815|   -1.5466|  0.1220|       |
|glm_binomial |Model2     |PM2.5_24h_M1 |   0.0162|    0.0105|    1.5403|  0.1235|       |
|glm_binomial |Model3     |(Intercept)  |  -0.3662|    0.2677|   -1.3680|  0.1713|       |
|glm_binomial |Model3     |PM2.5_24h_M2 |   0.0131|    0.0097|    1.3510|  0.1767|       |
|glm_binomial |Model4     |(Intercept)  |  -0.3302|    0.2631|   -1.2553|  0.2094|       |
|glm_binomial |Model4     |PM2.5_24h_M3 |   0.0114|    0.0093|    1.2294|  0.2189|       |
|glm_binomial |Model5     |(Intercept)  |  -0.4541|    0.3050|   -1.4885|  0.1366|       |
|glm_binomial |Model5     |PM2.5_24h_M0 |   0.0027|    0.0167|    0.1595|  0.8733|       |
|glm_binomial |Model5     |PM2.5_24h_M1 |   0.0144|    0.0157|    0.9182|  0.3585|       |
|glm_binomial |Model6     |(Intercept)  |  -0.4667|    0.3140|   -1.4861|  0.1372|       |
|glm_binomial |Model6     |PM2.5_24h_M0 |   0.0032|    0.0170|    0.1863|  0.8522|       |
|glm_binomial |Model6     |PM2.5_24h_M1 |   0.0114|    0.0236|    0.4830|  0.6291|       |
|glm_binomial |Model6     |PM2.5_24h_M2 |   0.0029|    0.0173|    0.1694|  0.8655|       |
|glm_binomial |Model7     |(Intercept)  |  -0.5118|    0.3393|   -1.5084|  0.1315|       |
|glm_binomial |Model7     |PM2.5_24h_M0 |   0.0053|    0.0181|    0.2956|  0.7675|       |
|glm_binomial |Model7     |PM2.5_24h_M1 |   0.0096|    0.0241|    0.3977|  0.6908|       |
|glm_binomial |Model7     |PM2.5_24h_M2 |  -0.0014|    0.0213|   -0.0658|  0.9475|       |
|glm_binomial |Model7     |PM2.5_24h_M3 |   0.0057|    0.0162|    0.3523|  0.7246|       |

---

### 污染物: SO2 Table: 模型汇总: SO2 对 Memory dysfunction 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.3686|    0.3335|   -1.1051|  0.2691|       |
|glm_binomial |Model1     |SO2_M0      |   0.0081|    0.0077|    1.0538|  0.2920|       |
|glm_binomial |Model2     |(Intercept) |  -0.5022|    0.3182|   -1.5784|  0.1145|       |
|glm_binomial |Model2     |SO2_M1      |   0.0112|    0.0072|    1.5597|  0.1188|       |
|glm_binomial |Model3     |(Intercept) |  -0.3986|    0.3162|   -1.2606|  0.2074|       |
|glm_binomial |Model3     |SO2_M2      |   0.0085|    0.0070|    1.2208|  0.2221|       |
|glm_binomial |Model4     |(Intercept) |  -0.3711|    0.3085|   -1.2029|  0.2290|       |
|glm_binomial |Model4     |SO2_M3      |   0.0077|    0.0067|    1.1605|  0.2459|       |
|glm_binomial |Model5     |(Intercept) |  -0.4945|    0.3514|   -1.4070|  0.1594|       |
|glm_binomial |Model5     |SO2_M0      |  -0.0006|    0.0107|   -0.0517|  0.9588|       |
|glm_binomial |Model5     |SO2_M1      |   0.0116|    0.0100|    1.1551|  0.2480|       |
|glm_binomial |Model6     |(Intercept) |  -0.4982|    0.3658|   -1.3619|  0.1732|       |
|glm_binomial |Model6     |SO2_M0      |  -0.0006|    0.0107|   -0.0527|  0.9580|       |
|glm_binomial |Model6     |SO2_M1      |   0.0113|    0.0131|    0.8637|  0.3877|       |
|glm_binomial |Model6     |SO2_M2      |   0.0004|    0.0109|    0.0366|  0.9708|       |
|glm_binomial |Model7     |(Intercept) |  -0.5544|    0.3961|   -1.3996|  0.1616|       |
|glm_binomial |Model7     |SO2_M0      |   0.0006|    0.0111|    0.0534|  0.9574|       |
|glm_binomial |Model7     |SO2_M1      |   0.0104|    0.0133|    0.7827|  0.4338|       |
|glm_binomial |Model7     |SO2_M2      |  -0.0023|    0.0131|   -0.1762|  0.8601|       |
|glm_binomial |Model7     |SO2_M3      |   0.0037|    0.0100|    0.3712|  0.7105|       |

---

### 污染物: SO2_24h Table: 模型汇总: SO2_24h 对 Memory dysfunction 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.5958|    0.3175|   -1.8762|  0.0606|.      |
|glm_binomial |Model1     |SO2_24h_M0  |   0.0663|    0.0354|    1.8716|  0.0613|.      |
|glm_binomial |Model2     |(Intercept) |  -0.5483|    0.3180|   -1.7245|  0.0846|.      |
|glm_binomial |Model2     |SO2_24h_M1  |   0.0605|    0.0353|    1.7136|  0.0866|.      |
|glm_binomial |Model3     |(Intercept) |  -0.3584|    0.3055|   -1.1731|  0.2408|       |
|glm_binomial |Model3     |SO2_24h_M2  |   0.0375|    0.0333|    1.1278|  0.2594|       |
|glm_binomial |Model4     |(Intercept) |  -0.3341|    0.2922|   -1.1435|  0.2528|       |
|glm_binomial |Model4     |SO2_24h_M3  |   0.0342|    0.0312|    1.0978|  0.2723|       |
|glm_binomial |Model5     |(Intercept) |  -0.6077|    0.3293|   -1.8451|  0.0650|.      |
|glm_binomial |Model5     |SO2_24h_M0  |   0.0584|    0.0689|    0.8476|  0.3966|       |
|glm_binomial |Model5     |SO2_24h_M1  |   0.0093|    0.0695|    0.1340|  0.8934|       |
|glm_binomial |Model6     |(Intercept) |  -0.5690|    0.3371|   -1.6881|  0.0914|.      |
|glm_binomial |Model6     |SO2_24h_M0  |   0.0579|    0.0687|    0.8423|  0.3996|       |
|glm_binomial |Model6     |SO2_24h_M1  |   0.0358|    0.0867|    0.4129|  0.6797|       |
|glm_binomial |Model6     |SO2_24h_M2  |  -0.0302|    0.0590|   -0.5112|  0.6092|       |
|glm_binomial |Model7     |(Intercept) |  -0.6013|    0.3451|   -1.7421|  0.0815|.      |
|glm_binomial |Model7     |SO2_24h_M0  |   0.0613|    0.0691|    0.8875|  0.3748|       |
|glm_binomial |Model7     |SO2_24h_M1  |   0.0338|    0.0869|    0.3892|  0.6971|       |
|glm_binomial |Model7     |SO2_24h_M2  |  -0.0532|    0.0790|   -0.6743|  0.5001|       |
|glm_binomial |Model7     |SO2_24h_M3  |   0.0251|    0.0569|    0.4410|  0.6592|       |

---


## 分析症状: Psychiatric symptoms

---

### 污染物: AQI Table: 模型汇总: AQI 对 Psychiatric symptoms 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   2.2315|    0.5899|    3.7829|  0.0002|***    |
|glm_binomial |Model1     |AQI_M0      |  -0.0080|    0.0131|   -0.6098|  0.5420|       |
|glm_binomial |Model2     |(Intercept) |   1.5540|    0.5579|    2.7855|  0.0053|**     |
|glm_binomial |Model2     |AQI_M1      |   0.0080|    0.0128|    0.6230|  0.5333|       |
|glm_binomial |Model3     |(Intercept) |   1.8496|    0.5374|    3.4416|  0.0006|***    |
|glm_binomial |Model3     |AQI_M2      |   0.0009|    0.0118|    0.0788|  0.9372|       |
|glm_binomial |Model4     |(Intercept) |   1.4422|    0.5196|    2.7755|  0.0055|**     |
|glm_binomial |Model4     |AQI_M3      |   0.0104|    0.0116|    0.8923|  0.3722|       |
|glm_binomial |Model5     |(Intercept) |   1.9373|    0.6207|    3.1211|  0.0018|**     |
|glm_binomial |Model5     |AQI_M0      |  -0.0292|    0.0194|   -1.5090|  0.1313|       |
|glm_binomial |Model5     |AQI_M1      |   0.0285|    0.0192|    1.4813|  0.1385|       |
|glm_binomial |Model6     |(Intercept) |   2.0579|    0.6422|    3.2043|  0.0014|**     |
|glm_binomial |Model6     |AQI_M0      |  -0.0299|    0.0194|   -1.5393|  0.1237|       |
|glm_binomial |Model6     |AQI_M1      |   0.0406|    0.0253|    1.6044|  0.1086|       |
|glm_binomial |Model6     |AQI_M2      |  -0.0139|    0.0187|   -0.7416|  0.4583|       |
|glm_binomial |Model7     |(Intercept) |   1.8566|    0.6843|    2.7130|  0.0067|**     |
|glm_binomial |Model7     |AQI_M0      |  -0.0250|    0.0203|   -1.2326|  0.2177|       |
|glm_binomial |Model7     |AQI_M1      |   0.0369|    0.0259|    1.4254|  0.1540|       |
|glm_binomial |Model7     |AQI_M2      |  -0.0259|    0.0237|   -1.0912|  0.2752|       |
|glm_binomial |Model7     |AQI_M3      |   0.0155|    0.0188|    0.8275|  0.4079|       |

---

### 污染物: CO Table: 模型汇总: CO 对 Psychiatric symptoms 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   1.9194|    0.7912|    2.4258|  0.0153|*      |
|glm_binomial |Model1     |CO_M0       |  -0.0415|    1.0925|   -0.0380|  0.9697|       |
|glm_binomial |Model2     |(Intercept) |   1.6965|    0.7367|    2.3030|  0.0213|*      |
|glm_binomial |Model2     |CO_M1       |   0.2714|    1.0109|    0.2685|  0.7884|       |
|glm_binomial |Model3     |(Intercept) |   1.8414|    0.7043|    2.6146|  0.0089|**     |
|glm_binomial |Model3     |CO_M2       |   0.0676|    0.9527|    0.0709|  0.9435|       |
|glm_binomial |Model4     |(Intercept) |   1.4914|    0.7046|    2.1166|  0.0343|*      |
|glm_binomial |Model4     |CO_M3       |   0.5540|    0.9605|    0.5767|  0.5641|       |
|glm_binomial |Model5     |(Intercept) |   1.8424|    0.8090|    2.2773|  0.0228|*      |
|glm_binomial |Model5     |CO_M0       |  -0.8442|    1.8988|   -0.4446|  0.6566|       |
|glm_binomial |Model5     |CO_M1       |   0.9050|    1.7772|    0.5092|  0.6106|       |
|glm_binomial |Model6     |(Intercept) |   1.8759|    0.8222|    2.2814|  0.0225|*      |
|glm_binomial |Model6     |CO_M0       |  -0.8125|    1.9108|   -0.4252|  0.6707|       |
|glm_binomial |Model6     |CO_M1       |   1.2293|    2.2510|    0.5461|  0.5850|       |
|glm_binomial |Model6     |CO_M2       |  -0.3991|    1.6778|   -0.2379|  0.8120|       |
|glm_binomial |Model7     |(Intercept) |   1.6699|    0.8470|    1.9717|  0.0486|*      |
|glm_binomial |Model7     |CO_M0       |  -0.5939|    1.9221|   -0.3090|  0.7573|       |
|glm_binomial |Model7     |CO_M1       |   1.1132|    2.2466|    0.4955|  0.6203|       |
|glm_binomial |Model7     |CO_M2       |  -2.2534|    2.4781|   -0.9093|  0.3632|       |
|glm_binomial |Model7     |CO_M3       |   2.0402|    1.9962|    1.0220|  0.3068|       |

---

### 污染物: CO_24h Table: 模型汇总: CO_24h 对 Psychiatric symptoms 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   1.9274|    0.7888|    2.4436|  0.0145|*      |
|glm_binomial |Model1     |CO_24h_M0   |  -0.0529|    1.0888|   -0.0486|  0.9613|       |
|glm_binomial |Model2     |(Intercept) |   1.7033|    0.7337|    2.3216|  0.0203|*      |
|glm_binomial |Model2     |CO_24h_M1   |   0.2620|    1.0071|    0.2601|  0.7948|       |
|glm_binomial |Model3     |(Intercept) |   1.8722|    0.7027|    2.6644|  0.0077|**     |
|glm_binomial |Model3     |CO_24h_M2   |   0.0247|    0.9494|    0.0260|  0.9793|       |
|glm_binomial |Model4     |(Intercept) |   1.4800|    0.7050|    2.0991|  0.0358|*      |
|glm_binomial |Model4     |CO_24h_M3   |   0.5707|    0.9627|    0.5928|  0.5533|       |
|glm_binomial |Model5     |(Intercept) |   1.8508|    0.8063|    2.2953|  0.0217|*      |
|glm_binomial |Model5     |CO_24h_M0   |  -0.8453|    1.8850|   -0.4484|  0.6538|       |
|glm_binomial |Model5     |CO_24h_M1   |   0.8951|    1.7631|    0.5077|  0.6117|       |
|glm_binomial |Model6     |(Intercept) |   1.8944|    0.8205|    2.3088|  0.0210|*      |
|glm_binomial |Model6     |CO_24h_M0   |  -0.8051|    1.8998|   -0.4238|  0.6717|       |
|glm_binomial |Model6     |CO_24h_M1   |   1.3048|    2.2343|    0.5840|  0.5592|       |
|glm_binomial |Model6     |CO_24h_M2   |  -0.5058|    1.6657|   -0.3037|  0.7614|       |
|glm_binomial |Model7     |(Intercept) |   1.6652|    0.8470|    1.9660|  0.0493|*      |
|glm_binomial |Model7     |CO_24h_M0   |  -0.5589|    1.9197|   -0.2911|  0.7710|       |
|glm_binomial |Model7     |CO_24h_M1   |   1.1475|    2.2319|    0.5141|  0.6072|       |
|glm_binomial |Model7     |CO_24h_M2   |  -2.4921|    2.4460|   -1.0188|  0.3083|       |
|glm_binomial |Model7     |CO_24h_M3   |   2.2221|    1.9938|    1.1145|  0.2651|       |

---

### 污染物: NO2 Table: 模型汇总: NO2 对 Psychiatric symptoms 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   1.9006|    0.3877|    4.9027|  0.0000|***    |
|glm_binomial |Model1     |NO2_M0      |  -0.0004|    0.0148|   -0.0303|  0.9758|       |
|glm_binomial |Model2     |(Intercept) |   1.6364|    0.3667|    4.4627|  0.0000|***    |
|glm_binomial |Model2     |NO2_M1      |   0.0110|    0.0145|    0.7566|  0.4493|       |
|glm_binomial |Model3     |(Intercept) |   2.1330|    0.3704|    5.7591|  0.0000|***    |
|glm_binomial |Model3     |NO2_M2      |  -0.0098|    0.0131|   -0.7501|  0.4532|       |
|glm_binomial |Model4     |(Intercept) |   1.9347|    0.3586|    5.3950|  0.0000|***    |
|glm_binomial |Model4     |NO2_M3      |  -0.0018|    0.0128|   -0.1414|  0.8876|       |
|glm_binomial |Model5     |(Intercept) |   1.7950|    0.3928|    4.5701|  0.0000|***    |
|glm_binomial |Model5     |NO2_M0      |  -0.0319|    0.0266|   -1.2014|  0.2296|       |
|glm_binomial |Model5     |NO2_M1      |   0.0368|    0.0267|    1.3810|  0.1673|       |
|glm_binomial |Model6     |(Intercept) |   1.9146|    0.4058|    4.7181|  0.0000|***    |
|glm_binomial |Model6     |NO2_M0      |  -0.0167|    0.0274|   -0.6074|  0.5436|       |
|glm_binomial |Model6     |NO2_M1      |   0.0623|    0.0289|    2.1588|  0.0309|*      |
|glm_binomial |Model6     |NO2_M2      |  -0.0433|    0.0217|   -1.9933|  0.0462|*      |
|glm_binomial |Model7     |(Intercept) |   1.8677|    0.4147|    4.5033|  0.0000|***    |
|glm_binomial |Model7     |NO2_M0      |  -0.0170|    0.0274|   -0.6186|  0.5362|       |
|glm_binomial |Model7     |NO2_M1      |   0.0620|    0.0292|    2.1283|  0.0333|*      |
|glm_binomial |Model7     |NO2_M2      |  -0.0525|    0.0285|   -1.8453|  0.0650|.      |
|glm_binomial |Model7     |NO2_M3      |   0.0116|    0.0230|    0.5055|  0.6132|       |

---

### 污染物: NO2_24h Table: 模型汇总: NO2_24h 对 Psychiatric symptoms 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   1.8923|    0.3877|    4.8811|  0.0000|***    |
|glm_binomial |Model1     |NO2_24h_M0  |  -0.0001|    0.0149|   -0.0067|  0.9947|       |
|glm_binomial |Model2     |(Intercept) |   1.6314|    0.3667|    4.4483|  0.0000|***    |
|glm_binomial |Model2     |NO2_24h_M1  |   0.0112|    0.0146|    0.7708|  0.4408|       |
|glm_binomial |Model3     |(Intercept) |   2.1343|    0.3705|    5.7602|  0.0000|***    |
|glm_binomial |Model3     |NO2_24h_M2  |  -0.0099|    0.0131|   -0.7539|  0.4509|       |
|glm_binomial |Model4     |(Intercept) |   1.9363|    0.3586|    5.3993|  0.0000|***    |
|glm_binomial |Model4     |NO2_24h_M3  |  -0.0019|    0.0128|   -0.1464|  0.8836|       |
|glm_binomial |Model5     |(Intercept) |   1.7880|    0.3930|    4.5493|  0.0000|***    |
|glm_binomial |Model5     |NO2_24h_M0  |  -0.0315|    0.0267|   -1.1790|  0.2384|       |
|glm_binomial |Model5     |NO2_24h_M1  |   0.0367|    0.0268|    1.3717|  0.1702|       |
|glm_binomial |Model6     |(Intercept) |   1.9084|    0.4059|    4.7014|  0.0000|***    |
|glm_binomial |Model6     |NO2_24h_M0  |  -0.0159|    0.0276|   -0.5763|  0.5644|       |
|glm_binomial |Model6     |NO2_24h_M1  |   0.0635|    0.0291|    2.1804|  0.0292|*      |
|glm_binomial |Model6     |NO2_24h_M2  |  -0.0449|    0.0220|   -2.0406|  0.0413|*      |
|glm_binomial |Model7     |(Intercept) |   1.8626|    0.4153|    4.4844|  0.0000|***    |
|glm_binomial |Model7     |NO2_24h_M0  |  -0.0160|    0.0276|   -0.5817|  0.5608|       |
|glm_binomial |Model7     |NO2_24h_M1  |   0.0632|    0.0294|    2.1478|  0.0317|*      |
|glm_binomial |Model7     |NO2_24h_M2  |  -0.0537|    0.0287|   -1.8695|  0.0615|.      |
|glm_binomial |Model7     |NO2_24h_M3  |   0.0111|    0.0231|    0.4830|  0.6291|       |

---

### 污染物: O3 Table: 模型汇总: O3 对 Psychiatric symptoms 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   2.6052|    0.6491|    4.0133|  0.0001|***    |
|glm_binomial |Model1     |O3_M0       |  -0.0122|    0.0105|   -1.1601|  0.2460|       |
|glm_binomial |Model2     |(Intercept) |   2.1752|    0.7163|    3.0367|  0.0024|**     |
|glm_binomial |Model2     |O3_M1       |  -0.0049|    0.0120|   -0.4117|  0.6806|       |
|glm_binomial |Model3     |(Intercept) |   0.9604|    0.6828|    1.4066|  0.1596|       |
|glm_binomial |Model3     |O3_M2       |   0.0162|    0.0118|    1.3731|  0.1697|       |
|glm_binomial |Model4     |(Intercept) |   1.0794|    0.6643|    1.6249|  0.1042|       |
|glm_binomial |Model4     |O3_M3       |   0.0145|    0.0118|    1.2347|  0.2169|       |
|glm_binomial |Model5     |(Intercept) |   2.5163|    0.7843|    3.2085|  0.0013|**     |
|glm_binomial |Model5     |O3_M0       |  -0.0134|    0.0122|   -1.0978|  0.2723|       |
|glm_binomial |Model5     |O3_M1       |   0.0028|    0.0141|    0.2007|  0.8409|       |
|glm_binomial |Model6     |(Intercept) |   1.8016|    0.8782|    2.0515|  0.0402|*      |
|glm_binomial |Model6     |O3_M0       |  -0.0127|    0.0124|   -1.0233|  0.3061|       |
|glm_binomial |Model6     |O3_M1       |  -0.0090|    0.0156|   -0.5793|  0.5624|       |
|glm_binomial |Model6     |O3_M2       |   0.0238|    0.0140|    1.7033|  0.0885|.      |
|glm_binomial |Model7     |(Intercept) |   1.5820|    0.9830|    1.6094|  0.1075|       |
|glm_binomial |Model7     |O3_M0       |  -0.0118|    0.0124|   -0.9489|  0.3427|       |
|glm_binomial |Model7     |O3_M1       |  -0.0093|    0.0156|   -0.5961|  0.5511|       |
|glm_binomial |Model7     |O3_M2       |   0.0206|    0.0154|    1.3329|  0.1826|       |
|glm_binomial |Model7     |O3_M3       |   0.0065|    0.0136|    0.4814|  0.6302|       |

---

### 污染物: PM10 Table: 模型汇总: PM10 对 Psychiatric symptoms 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   2.2426|    0.5002|    4.4839|  0.0000|***    |
|glm_binomial |Model1     |PM10_M0     |  -0.0084|    0.0111|   -0.7593|  0.4476|       |
|glm_binomial |Model2     |(Intercept) |   1.5045|    0.4712|    3.1933|  0.0014|**     |
|glm_binomial |Model2     |PM10_M1     |   0.0095|    0.0110|    0.8562|  0.3919|       |
|glm_binomial |Model3     |(Intercept) |   1.9122|    0.4684|    4.0825|  0.0000|***    |
|glm_binomial |Model3     |PM10_M2     |  -0.0005|    0.0103|   -0.0509|  0.9594|       |
|glm_binomial |Model4     |(Intercept) |   1.5882|    0.4545|    3.4943|  0.0005|***    |
|glm_binomial |Model4     |PM10_M3     |   0.0071|    0.0101|    0.7007|  0.4835|       |
|glm_binomial |Model5     |(Intercept) |   1.9061|    0.5258|    3.6252|  0.0003|***    |
|glm_binomial |Model5     |PM10_M0     |  -0.0320|    0.0164|   -1.9518|  0.0510|.      |
|glm_binomial |Model5     |PM10_M1     |   0.0325|    0.0170|    1.9090|  0.0563|.      |
|glm_binomial |Model6     |(Intercept) |   2.0456|    0.5438|    3.7616|  0.0002|***    |
|glm_binomial |Model6     |PM10_M0     |  -0.0315|    0.0165|   -1.9141|  0.0556|.      |
|glm_binomial |Model6     |PM10_M1     |   0.0452|    0.0211|    2.1447|  0.0320|*      |
|glm_binomial |Model6     |PM10_M2     |  -0.0160|    0.0153|   -1.0461|  0.2955|       |
|glm_binomial |Model7     |(Intercept) |   1.9262|    0.5827|    3.3057|  0.0009|***    |
|glm_binomial |Model7     |PM10_M0     |  -0.0289|    0.0171|   -1.6889|  0.0912|.      |
|glm_binomial |Model7     |PM10_M1     |   0.0434|    0.0213|    2.0368|  0.0417|*      |
|glm_binomial |Model7     |PM10_M2     |  -0.0227|    0.0196|   -1.1594|  0.2463|       |
|glm_binomial |Model7     |PM10_M3     |   0.0086|    0.0157|    0.5485|  0.5833|       |

---

### 污染物: PM10_24h Table: 模型汇总: PM10_24h 对 Psychiatric symptoms 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   2.2194|    0.4967|    4.4685|  0.0000|***    |
|glm_binomial |Model1     |PM10_24h_M0 |  -0.0079|    0.0111|   -0.7143|  0.4750|       |
|glm_binomial |Model2     |(Intercept) |   1.4593|    0.4683|    3.1162|  0.0018|**     |
|glm_binomial |Model2     |PM10_24h_M1 |   0.0106|    0.0111|    0.9609|  0.3366|       |
|glm_binomial |Model3     |(Intercept) |   1.9338|    0.4655|    4.1540|  0.0000|***    |
|glm_binomial |Model3     |PM10_24h_M2 |  -0.0010|    0.0102|   -0.1010|  0.9196|       |
|glm_binomial |Model4     |(Intercept) |   1.5782|    0.4523|    3.4892|  0.0005|***    |
|glm_binomial |Model4     |PM10_24h_M3 |   0.0074|    0.0101|    0.7275|  0.4669|       |
|glm_binomial |Model5     |(Intercept) |   1.8656|    0.5226|    3.5700|  0.0004|***    |
|glm_binomial |Model5     |PM10_24h_M0 |  -0.0325|    0.0163|   -1.9914|  0.0464|*      |
|glm_binomial |Model5     |PM10_24h_M1 |   0.0342|    0.0171|    1.9993|  0.0456|*      |
|glm_binomial |Model6     |(Intercept) |   2.0287|    0.5403|    3.7548|  0.0002|***    |
|glm_binomial |Model6     |PM10_24h_M0 |  -0.0320|    0.0164|   -1.9465|  0.0516|.      |
|glm_binomial |Model6     |PM10_24h_M1 |   0.0497|    0.0213|    2.3308|  0.0198|*      |
|glm_binomial |Model6     |PM10_24h_M2 |  -0.0193|    0.0152|   -1.2644|  0.2061|       |
|glm_binomial |Model7     |(Intercept) |   1.8921|    0.5789|    3.2687|  0.0011|**     |
|glm_binomial |Model7     |PM10_24h_M0 |  -0.0291|    0.0170|   -1.7077|  0.0877|.      |
|glm_binomial |Model7     |PM10_24h_M1 |   0.0478|    0.0216|    2.2128|  0.0269|*      |
|glm_binomial |Model7     |PM10_24h_M2 |  -0.0269|    0.0195|   -1.3811|  0.1672|       |
|glm_binomial |Model7     |PM10_24h_M3 |   0.0099|    0.0157|    0.6291|  0.5293|       |

---

### 污染物: PM2.5 Table: 模型汇总: PM2.5 对 Psychiatric symptoms 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   1.9133|    0.4312|    4.4372|  0.0000|***    |
|glm_binomial |Model1     |PM2.5_M0    |  -0.0010|    0.0165|   -0.0587|  0.9532|       |
|glm_binomial |Model2     |(Intercept) |   1.6301|    0.4114|    3.9620|  0.0001|***    |
|glm_binomial |Model2     |PM2.5_M1    |   0.0108|    0.0159|    0.6772|  0.4983|       |
|glm_binomial |Model3     |(Intercept) |   1.7653|    0.3938|    4.4822|  0.0000|***    |
|glm_binomial |Model3     |PM2.5_M2    |   0.0050|    0.0145|    0.3455|  0.7297|       |
|glm_binomial |Model4     |(Intercept) |   1.5661|    0.3851|    4.0663|  0.0000|***    |
|glm_binomial |Model4     |PM2.5_M3    |   0.0130|    0.0143|    0.9064|  0.3647|       |
|glm_binomial |Model5     |(Intercept) |   1.7755|    0.4471|    3.9707|  0.0001|***    |
|glm_binomial |Model5     |PM2.5_M0    |  -0.0220|    0.0254|   -0.8668|  0.3861|       |
|glm_binomial |Model5     |PM2.5_M1    |   0.0267|    0.0248|    1.0767|  0.2816|       |
|glm_binomial |Model6     |(Intercept) |   1.8341|    0.4606|    3.9815|  0.0001|***    |
|glm_binomial |Model6     |PM2.5_M0    |  -0.0243|    0.0257|   -0.9429|  0.3457|       |
|glm_binomial |Model6     |PM2.5_M1    |   0.0408|    0.0362|    1.1280|  0.2593|       |
|glm_binomial |Model6     |PM2.5_M2    |  -0.0138|    0.0255|   -0.5404|  0.5889|       |
|glm_binomial |Model7     |(Intercept) |   1.6784|    0.4969|    3.3776|  0.0007|***    |
|glm_binomial |Model7     |PM2.5_M0    |  -0.0164|    0.0274|   -0.6003|  0.5483|       |
|glm_binomial |Model7     |PM2.5_M1    |   0.0353|    0.0369|    0.9572|  0.3385|       |
|glm_binomial |Model7     |PM2.5_M2    |  -0.0312|    0.0330|   -0.9445|  0.3449|       |
|glm_binomial |Model7     |PM2.5_M3    |   0.0214|    0.0259|    0.8247|  0.4096|       |

---

### 污染物: PM2.5_24h Table: 模型汇总: PM2.5_24h 对 Psychiatric symptoms 的影响

|model_type   |model_name |term         | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:------------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept)  |   1.8994|    0.4303|    4.4144|  0.0000|***    |
|glm_binomial |Model1     |PM2.5_24h_M0 |  -0.0004|    0.0165|   -0.0239|  0.9809|       |
|glm_binomial |Model2     |(Intercept)  |   1.6301|    0.4107|    3.9687|  0.0001|***    |
|glm_binomial |Model2     |PM2.5_24h_M1 |   0.0108|    0.0159|    0.6786|  0.4974|       |
|glm_binomial |Model3     |(Intercept)  |   1.8026|    0.3935|    4.5812|  0.0000|***    |
|glm_binomial |Model3     |PM2.5_24h_M2 |   0.0035|    0.0144|    0.2429|  0.8081|       |
|glm_binomial |Model4     |(Intercept)  |   1.5508|    0.3851|    4.0273|  0.0001|***    |
|glm_binomial |Model4     |PM2.5_24h_M3 |   0.0136|    0.0144|    0.9481|  0.3431|       |
|glm_binomial |Model5     |(Intercept)  |   1.7660|    0.4463|    3.9570|  0.0001|***    |
|glm_binomial |Model5     |PM2.5_24h_M0 |  -0.0204|    0.0252|   -0.8101|  0.4179|       |
|glm_binomial |Model5     |PM2.5_24h_M1 |   0.0255|    0.0246|    1.0364|  0.3000|       |
|glm_binomial |Model6     |(Intercept)  |   1.8435|    0.4599|    4.0086|  0.0001|***    |
|glm_binomial |Model6     |PM2.5_24h_M0 |  -0.0235|    0.0256|   -0.9173|  0.3590|       |
|glm_binomial |Model6     |PM2.5_24h_M1 |   0.0444|    0.0361|    1.2298|  0.2188|       |
|glm_binomial |Model6     |PM2.5_24h_M2 |  -0.0183|    0.0252|   -0.7246|  0.4687|       |
|glm_binomial |Model7     |(Intercept)  |   1.6469|    0.4976|    3.3096|  0.0009|***    |
|glm_binomial |Model7     |PM2.5_24h_M0 |  -0.0138|    0.0273|   -0.5058|  0.6130|       |
|glm_binomial |Model7     |PM2.5_24h_M1 |   0.0369|    0.0369|    1.0001|  0.3173|       |
|glm_binomial |Model7     |PM2.5_24h_M2 |  -0.0391|    0.0323|   -1.2090|  0.2267|       |
|glm_binomial |Model7     |PM2.5_24h_M3 |   0.0267|    0.0260|    1.0249|  0.3054|       |

---

### 污染物: SO2 Table: 模型汇总: SO2 对 Psychiatric symptoms 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   2.2194|    0.4967|    4.4685|  0.0000|***    |
|glm_binomial |Model1     |SO2_M0      |  -0.0079|    0.0111|   -0.7143|  0.4750|       |
|glm_binomial |Model2     |(Intercept) |   1.4593|    0.4683|    3.1162|  0.0018|**     |
|glm_binomial |Model2     |SO2_M1      |   0.0106|    0.0111|    0.9609|  0.3366|       |
|glm_binomial |Model3     |(Intercept) |   1.9338|    0.4655|    4.1540|  0.0000|***    |
|glm_binomial |Model3     |SO2_M2      |  -0.0010|    0.0102|   -0.1010|  0.9196|       |
|glm_binomial |Model4     |(Intercept) |   1.5782|    0.4523|    3.4892|  0.0005|***    |
|glm_binomial |Model4     |SO2_M3      |   0.0074|    0.0101|    0.7275|  0.4669|       |
|glm_binomial |Model5     |(Intercept) |   1.8656|    0.5226|    3.5700|  0.0004|***    |
|glm_binomial |Model5     |SO2_M0      |  -0.0325|    0.0163|   -1.9914|  0.0464|*      |
|glm_binomial |Model5     |SO2_M1      |   0.0342|    0.0171|    1.9993|  0.0456|*      |
|glm_binomial |Model6     |(Intercept) |   2.0287|    0.5403|    3.7548|  0.0002|***    |
|glm_binomial |Model6     |SO2_M0      |  -0.0320|    0.0164|   -1.9465|  0.0516|.      |
|glm_binomial |Model6     |SO2_M1      |   0.0497|    0.0213|    2.3308|  0.0198|*      |
|glm_binomial |Model6     |SO2_M2      |  -0.0193|    0.0152|   -1.2644|  0.2061|       |
|glm_binomial |Model7     |(Intercept) |   1.8921|    0.5789|    3.2687|  0.0011|**     |
|glm_binomial |Model7     |SO2_M0      |  -0.0291|    0.0170|   -1.7077|  0.0877|.      |
|glm_binomial |Model7     |SO2_M1      |   0.0478|    0.0216|    2.2128|  0.0269|*      |
|glm_binomial |Model7     |SO2_M2      |  -0.0269|    0.0195|   -1.3811|  0.1672|       |
|glm_binomial |Model7     |SO2_M3      |   0.0099|    0.0157|    0.6291|  0.5293|       |

---

### 污染物: SO2_24h Table: 模型汇总: SO2_24h 对 Psychiatric symptoms 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |   1.2893|    0.4921|    2.6202|  0.0088|**     |
|glm_binomial |Model1     |SO2_24h_M0  |   0.0737|    0.0586|    1.2563|  0.2090|       |
|glm_binomial |Model2     |(Intercept) |   1.0695|    0.4969|    2.1523|  0.0314|*      |
|glm_binomial |Model2     |SO2_24h_M1  |   0.1015|    0.0604|    1.6798|  0.0930|.      |
|glm_binomial |Model3     |(Intercept) |   1.6001|    0.4618|    3.4649|  0.0005|***    |
|glm_binomial |Model3     |SO2_24h_M2  |   0.0345|    0.0521|    0.6613|  0.5084|       |
|glm_binomial |Model4     |(Intercept) |   1.4449|    0.4542|    3.1812|  0.0015|**     |
|glm_binomial |Model4     |SO2_24h_M3  |   0.0528|    0.0516|    1.0240|  0.3058|       |
|glm_binomial |Model5     |(Intercept) |   1.1165|    0.5049|    2.2111|  0.0270|*      |
|glm_binomial |Model5     |SO2_24h_M0  |  -0.0482|    0.1121|   -0.4302|  0.6671|       |
|glm_binomial |Model5     |SO2_24h_M1  |   0.1443|    0.1181|    1.2219|  0.2218|       |
|glm_binomial |Model6     |(Intercept) |   1.2433|    0.5103|    2.4366|  0.0148|*      |
|glm_binomial |Model6     |SO2_24h_M0  |  -0.0510|    0.1096|   -0.4651|  0.6418|       |
|glm_binomial |Model6     |SO2_24h_M1  |   0.2583|    0.1443|    1.7894|  0.0736|.      |
|glm_binomial |Model6     |SO2_24h_M2  |  -0.1221|    0.0861|   -1.4188|  0.1559|       |
|glm_binomial |Model7     |(Intercept) |   1.0839|    0.5318|    2.0382|  0.0415|*      |
|glm_binomial |Model7     |SO2_24h_M0  |  -0.0407|    0.1098|   -0.3707|  0.7109|       |
|glm_binomial |Model7     |SO2_24h_M1  |   0.2698|    0.1484|    1.8177|  0.0691|.      |
|glm_binomial |Model7     |SO2_24h_M2  |  -0.2305|    0.1327|   -1.7369|  0.0824|.      |
|glm_binomial |Model7     |SO2_24h_M3  |   0.1064|    0.0978|    1.0870|  0.2770|       |

---


## 分析症状: Coma

---

### 污染物: AQI Table: 模型汇总: AQI 对 Coma 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -1.6654|    0.5719|   -2.9122|  0.0036|**     |
|glm_binomial |Model1     |AQI_M0      |  -0.0041|    0.0131|   -0.3099|  0.7566|       |
|glm_binomial |Model2     |(Intercept) |  -1.8765|    0.5475|   -3.4272|  0.0006|***    |
|glm_binomial |Model2     |AQI_M1      |   0.0009|    0.0122|    0.0771|  0.9385|       |
|glm_binomial |Model3     |(Intercept) |  -1.2650|    0.5324|   -2.3759|  0.0175|*      |
|glm_binomial |Model3     |AQI_M2      |  -0.0134|    0.0122|   -1.1024|  0.2703|       |
|glm_binomial |Model4     |(Intercept) |  -2.0157|    0.5142|   -3.9202|  0.0001|***    |
|glm_binomial |Model4     |AQI_M3      |   0.0040|    0.0109|    0.3705|  0.7110|       |
|glm_binomial |Model5     |(Intercept) |  -1.7443|    0.6028|   -2.8937|  0.0038|**     |
|glm_binomial |Model5     |AQI_M0      |  -0.0095|    0.0185|   -0.5149|  0.6067|       |
|glm_binomial |Model5     |AQI_M1      |   0.0072|    0.0171|    0.4208|  0.6739|       |
|glm_binomial |Model6     |(Intercept) |  -1.4081|    0.6332|   -2.2236|  0.0262|*      |
|glm_binomial |Model6     |AQI_M0      |  -0.0122|    0.0187|   -0.6517|  0.5146|       |
|glm_binomial |Model6     |AQI_M1      |   0.0406|    0.0244|    1.6626|  0.0964|.      |
|glm_binomial |Model6     |AQI_M2      |  -0.0388|    0.0203|   -1.9134|  0.0557|.      |
|glm_binomial |Model7     |(Intercept) |  -1.8163|    0.6911|   -2.6282|  0.0086|**     |
|glm_binomial |Model7     |AQI_M0      |  -0.0017|    0.0199|   -0.0861|  0.9314|       |
|glm_binomial |Model7     |AQI_M1      |   0.0307|    0.0249|    1.2310|  0.2183|       |
|glm_binomial |Model7     |AQI_M2      |  -0.0577|    0.0236|   -2.4475|  0.0144|*      |
|glm_binomial |Model7     |AQI_M3      |   0.0271|    0.0170|    1.5944|  0.1108|       |

---

### 污染物: CO Table: 模型汇总: CO 对 Coma 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -1.4127|    0.7944|   -1.7784|  0.0753|.      |
|glm_binomial |Model1     |CO_M0       |  -0.6028|    1.1145|   -0.5408|  0.5886|       |
|glm_binomial |Model2     |(Intercept) |  -1.3952|    0.7391|   -1.8875|  0.0591|.      |
|glm_binomial |Model2     |CO_M1       |  -0.6217|    1.0251|   -0.6065|  0.5442|       |
|glm_binomial |Model3     |(Intercept) |  -1.3634|    0.7080|   -1.9257|  0.0541|.      |
|glm_binomial |Model3     |CO_M2       |  -0.6632|    0.9764|   -0.6793|  0.4970|       |
|glm_binomial |Model4     |(Intercept) |  -1.6390|    0.6830|   -2.3997|  0.0164|*      |
|glm_binomial |Model4     |CO_M3       |  -0.2729|    0.9220|   -0.2960|  0.7672|       |
|glm_binomial |Model5     |(Intercept) |  -1.3698|    0.8098|   -1.6916|  0.0907|.      |
|glm_binomial |Model5     |CO_M0       |  -0.1454|    1.8982|   -0.0766|  0.9389|       |
|glm_binomial |Model5     |CO_M1       |  -0.5134|    1.7407|   -0.2950|  0.7680|       |
|glm_binomial |Model6     |(Intercept) |  -1.3248|    0.8215|   -1.6126|  0.1068|       |
|glm_binomial |Model6     |CO_M0       |  -0.0959|    1.8962|   -0.0506|  0.9596|       |
|glm_binomial |Model6     |CO_M1       |  -0.0879|    2.2013|   -0.0399|  0.9682|       |
|glm_binomial |Model6     |CO_M2       |  -0.5354|    1.7221|   -0.3109|  0.7559|       |
|glm_binomial |Model7     |(Intercept) |  -1.4315|    0.8403|   -1.7035|  0.0885|.      |
|glm_binomial |Model7     |CO_M0       |   0.0190|    1.9076|    0.0100|  0.9921|       |
|glm_binomial |Model7     |CO_M1       |  -0.1724|    2.2165|   -0.0778|  0.9380|       |
|glm_binomial |Model7     |CO_M2       |  -1.5771|    2.4112|   -0.6541|  0.5131|       |
|glm_binomial |Model7     |CO_M3       |   1.1464|    1.8578|    0.6171|  0.5372|       |

---

### 污染物: CO_24h Table: 模型汇总: CO_24h 对 Coma 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -1.3877|    0.7930|   -1.7500|  0.0801|.      |
|glm_binomial |Model1     |CO_24h_M0   |  -0.6387|    1.1135|   -0.5736|  0.5662|       |
|glm_binomial |Model2     |(Intercept) |  -1.4277|    0.7339|   -1.9452|  0.0518|.      |
|glm_binomial |Model2     |CO_24h_M1   |  -0.5760|    1.0172|   -0.5663|  0.5712|       |
|glm_binomial |Model3     |(Intercept) |  -1.3513|    0.7075|   -1.9100|  0.0561|.      |
|glm_binomial |Model3     |CO_24h_M2   |  -0.6806|    0.9764|   -0.6971|  0.4857|       |
|glm_binomial |Model4     |(Intercept) |  -1.6701|    0.6823|   -2.4479|  0.0144|*      |
|glm_binomial |Model4     |CO_24h_M3   |  -0.2300|    0.9207|   -0.2498|  0.8028|       |
|glm_binomial |Model5     |(Intercept) |  -1.3623|    0.8067|   -1.6887|  0.0913|.      |
|glm_binomial |Model5     |CO_24h_M0   |  -0.3653|    1.8817|   -0.1941|  0.8461|       |
|glm_binomial |Model5     |CO_24h_M1   |  -0.3064|    1.7094|   -0.1793|  0.8577|       |
|glm_binomial |Model6     |(Intercept) |  -1.3036|    0.8191|   -1.5915|  0.1115|       |
|glm_binomial |Model6     |CO_24h_M0   |  -0.2982|    1.8775|   -0.1588|  0.8738|       |
|glm_binomial |Model6     |CO_24h_M1   |   0.2254|    2.1627|    0.1042|  0.9170|       |
|glm_binomial |Model6     |CO_24h_M2   |  -0.6781|    1.7228|   -0.3936|  0.6939|       |
|glm_binomial |Model7     |(Intercept) |  -1.4311|    0.8387|   -1.7062|  0.0880|.      |
|glm_binomial |Model7     |CO_24h_M0   |  -0.1571|    1.8859|   -0.0833|  0.9336|       |
|glm_binomial |Model7     |CO_24h_M1   |   0.1077|    2.1823|    0.0493|  0.9606|       |
|glm_binomial |Model7     |CO_24h_M2   |  -1.8550|    2.3768|   -0.7805|  0.4351|       |
|glm_binomial |Model7     |CO_24h_M3   |   1.3158|    1.8289|    0.7195|  0.4719|       |

---

### 污染物: NO2 Table: 模型汇总: NO2 对 Coma 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -1.6810|    0.3793|   -4.4319|  0.0000|***    |
|glm_binomial |Model1     |NO2_M0      |  -0.0067|    0.0149|   -0.4471|  0.6548|       |
|glm_binomial |Model2     |(Intercept) |  -1.8026|    0.3606|   -4.9992|  0.0000|***    |
|glm_binomial |Model2     |NO2_M1      |  -0.0014|    0.0137|   -0.1040|  0.9172|       |
|glm_binomial |Model3     |(Intercept) |  -1.4178|    0.3607|   -3.9305|  0.0001|***    |
|glm_binomial |Model3     |NO2_M2      |  -0.0180|    0.0144|   -1.2489|  0.2117|       |
|glm_binomial |Model4     |(Intercept) |  -1.8575|    0.3514|   -5.2867|  0.0000|***    |
|glm_binomial |Model4     |NO2_M3      |   0.0009|    0.0126|    0.0685|  0.9454|       |
|glm_binomial |Model5     |(Intercept) |  -1.7120|    0.3861|   -4.4343|  0.0000|***    |
|glm_binomial |Model5     |NO2_M0      |  -0.0169|    0.0264|   -0.6423|  0.5207|       |
|glm_binomial |Model5     |NO2_M1      |   0.0115|    0.0240|    0.4782|  0.6325|       |
|glm_binomial |Model6     |(Intercept) |  -1.4958|    0.3999|   -3.7406|  0.0002|***    |
|glm_binomial |Model6     |NO2_M0      |  -0.0122|    0.0275|   -0.4428|  0.6579|       |
|glm_binomial |Model6     |NO2_M1      |   0.0496|    0.0322|    1.5413|  0.1232|       |
|glm_binomial |Model6     |NO2_M2      |  -0.0528|    0.0274|   -1.9295|  0.0537|.      |
|glm_binomial |Model7     |(Intercept) |  -1.5937|    0.4100|   -3.8873|  0.0001|***    |
|glm_binomial |Model7     |NO2_M0      |  -0.0091|    0.0278|   -0.3266|  0.7440|       |
|glm_binomial |Model7     |NO2_M1      |   0.0378|    0.0325|    1.1644|  0.2443|       |
|glm_binomial |Model7     |NO2_M2      |  -0.0670|    0.0290|   -2.3119|  0.0208|*      |
|glm_binomial |Model7     |NO2_M3      |   0.0258|    0.0198|    1.3069|  0.1913|       |

---

### 污染物: NO2_24h Table: 模型汇总: NO2_24h 对 Coma 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -1.6668|    0.3792|   -4.3950|  0.0000|***    |
|glm_binomial |Model1     |NO2_24h_M0  |  -0.0073|    0.0149|   -0.4875|  0.6259|       |
|glm_binomial |Model2     |(Intercept) |  -1.8046|    0.3607|   -5.0027|  0.0000|***    |
|glm_binomial |Model2     |NO2_24h_M1  |  -0.0013|    0.0137|   -0.0979|  0.9220|       |
|glm_binomial |Model3     |(Intercept) |  -1.4157|    0.3610|   -3.9211|  0.0001|***    |
|glm_binomial |Model3     |NO2_24h_M2  |  -0.0181|    0.0144|   -1.2538|  0.2099|       |
|glm_binomial |Model4     |(Intercept) |  -1.8600|    0.3514|   -5.2936|  0.0000|***    |
|glm_binomial |Model4     |NO2_24h_M3  |   0.0010|    0.0126|    0.0766|  0.9389|       |
|glm_binomial |Model5     |(Intercept) |  -1.7025|    0.3862|   -4.4084|  0.0000|***    |
|glm_binomial |Model5     |NO2_24h_M0  |  -0.0191|    0.0264|   -0.7222|  0.4701|       |
|glm_binomial |Model5     |NO2_24h_M1  |   0.0132|    0.0240|    0.5488|  0.5832|       |
|glm_binomial |Model6     |(Intercept) |  -1.4836|    0.4003|   -3.7064|  0.0002|***    |
|glm_binomial |Model6     |NO2_24h_M0  |  -0.0145|    0.0274|   -0.5267|  0.5984|       |
|glm_binomial |Model6     |NO2_24h_M1  |   0.0518|    0.0322|    1.6119|  0.1070|       |
|glm_binomial |Model6     |NO2_24h_M2  |  -0.0533|    0.0274|   -1.9459|  0.0517|.      |
|glm_binomial |Model7     |(Intercept) |  -1.5809|    0.4106|   -3.8506|  0.0001|***    |
|glm_binomial |Model7     |NO2_24h_M0  |  -0.0109|    0.0277|   -0.3941|  0.6935|       |
|glm_binomial |Model7     |NO2_24h_M1  |   0.0393|    0.0326|    1.2056|  0.2280|       |
|glm_binomial |Model7     |NO2_24h_M2  |  -0.0667|    0.0288|   -2.3128|  0.0207|*      |
|glm_binomial |Model7     |NO2_24h_M3  |   0.0254|    0.0199|    1.2796|  0.2007|       |

---

### 污染物: O3 Table: 模型汇总: O3 对 Coma 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -1.9671|    0.6376|   -3.0852|  0.0020|**     |
|glm_binomial |Model1     |O3_M0       |   0.0023|    0.0106|    0.2130|  0.8313|       |
|glm_binomial |Model2     |(Intercept) |  -1.5273|    0.6997|   -2.1826|  0.0291|*      |
|glm_binomial |Model2     |O3_M1       |  -0.0054|    0.0120|   -0.4510|  0.6520|       |
|glm_binomial |Model3     |(Intercept) |  -1.4196|    0.6631|   -2.1409|  0.0323|*      |
|glm_binomial |Model3     |O3_M2       |  -0.0072|    0.0112|   -0.6417|  0.5211|       |
|glm_binomial |Model4     |(Intercept) |  -1.3079|    0.6456|   -2.0258|  0.0428|*      |
|glm_binomial |Model4     |O3_M3       |  -0.0094|    0.0113|   -0.8345|  0.4040|       |
|glm_binomial |Model5     |(Intercept) |  -1.6870|    0.7656|   -2.2036|  0.0276|*      |
|glm_binomial |Model5     |O3_M0       |   0.0064|    0.0123|    0.5192|  0.6036|       |
|glm_binomial |Model5     |O3_M1       |  -0.0091|    0.0141|   -0.6486|  0.5166|       |
|glm_binomial |Model6     |(Intercept) |  -1.5042|    0.8599|   -1.7492|  0.0802|.      |
|glm_binomial |Model6     |O3_M0       |   0.0060|    0.0124|    0.4880|  0.6255|       |
|glm_binomial |Model6     |O3_M1       |  -0.0061|    0.0155|   -0.3899|  0.6966|       |
|glm_binomial |Model6     |O3_M2       |  -0.0058|    0.0127|   -0.4593|  0.6461|       |
|glm_binomial |Model7     |(Intercept) |  -1.2648|    0.9525|   -1.3280|  0.1842|       |
|glm_binomial |Model7     |O3_M0       |   0.0052|    0.0123|    0.4235|  0.6719|       |
|glm_binomial |Model7     |O3_M1       |  -0.0061|    0.0155|   -0.3913|  0.6956|       |
|glm_binomial |Model7     |O3_M2       |  -0.0020|    0.0144|   -0.1387|  0.8897|       |
|glm_binomial |Model7     |O3_M3       |  -0.0073|    0.0130|   -0.5642|  0.5726|       |

---

### 污染物: PM10 Table: 模型汇总: PM10 对 Coma 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -1.7271|    0.4840|   -3.5681|  0.0004|***    |
|glm_binomial |Model1     |PM10_M0     |  -0.0027|    0.0112|   -0.2382|  0.8117|       |
|glm_binomial |Model2     |(Intercept) |  -1.8702|    0.4610|   -4.0565|  0.0000|***    |
|glm_binomial |Model2     |PM10_M1     |   0.0008|    0.0103|    0.0790|  0.9371|       |
|glm_binomial |Model3     |(Intercept) |  -1.2539|    0.4632|   -2.7069|  0.0068|**     |
|glm_binomial |Model3     |PM10_M2     |  -0.0142|    0.0109|   -1.3022|  0.1928|       |
|glm_binomial |Model4     |(Intercept) |  -1.9617|    0.4495|   -4.3642|  0.0000|***    |
|glm_binomial |Model4     |PM10_M3     |   0.0029|    0.0095|    0.3013|  0.7631|       |
|glm_binomial |Model5     |(Intercept) |  -1.7800|    0.5089|   -3.4979|  0.0005|***    |
|glm_binomial |Model5     |PM10_M0     |  -0.0064|    0.0156|   -0.4095|  0.6821|       |
|glm_binomial |Model5     |PM10_M1     |   0.0049|    0.0143|    0.3452|  0.7299|       |
|glm_binomial |Model6     |(Intercept) |  -1.4027|    0.5431|   -2.5826|  0.0098|**     |
|glm_binomial |Model6     |PM10_M0     |  -0.0068|    0.0157|   -0.4303|  0.6670|       |
|glm_binomial |Model6     |PM10_M1     |   0.0340|    0.0197|    1.7252|  0.0845|.      |
|glm_binomial |Model6     |PM10_M2     |  -0.0383|    0.0181|   -2.1116|  0.0347|*      |
|glm_binomial |Model7     |(Intercept) |  -1.7782|    0.5952|   -2.9875|  0.0028|**     |
|glm_binomial |Model7     |PM10_M0     |   0.0016|    0.0166|    0.0975|  0.9223|       |
|glm_binomial |Model7     |PM10_M1     |   0.0271|    0.0200|    1.3567|  0.1749|       |
|glm_binomial |Model7     |PM10_M2     |  -0.0560|    0.0210|   -2.6658|  0.0077|**     |
|glm_binomial |Model7     |PM10_M3     |   0.0240|    0.0140|    1.7184|  0.0857|.      |

---

### 污染物: PM10_24h Table: 模型汇总: PM10_24h 对 Coma 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -1.7564|    0.4814|   -3.6488|  0.0003|***    |
|glm_binomial |Model1     |PM10_24h_M0 |  -0.0020|    0.0111|   -0.1754|  0.8608|       |
|glm_binomial |Model2     |(Intercept) |  -1.8720|    0.4579|   -4.0881|  0.0000|***    |
|glm_binomial |Model2     |PM10_24h_M1 |   0.0009|    0.0103|    0.0838|  0.9332|       |
|glm_binomial |Model3     |(Intercept) |  -1.2632|    0.4604|   -2.7439|  0.0061|**     |
|glm_binomial |Model3     |PM10_24h_M2 |  -0.0140|    0.0108|   -1.2907|  0.1968|       |
|glm_binomial |Model4     |(Intercept) |  -1.9667|    0.4475|   -4.3948|  0.0000|***    |
|glm_binomial |Model4     |PM10_24h_M3 |   0.0030|    0.0095|    0.3152|  0.7526|       |
|glm_binomial |Model5     |(Intercept) |  -1.8006|    0.5062|   -3.5573|  0.0004|***    |
|glm_binomial |Model5     |PM10_24h_M0 |  -0.0050|    0.0155|   -0.3250|  0.7451|       |
|glm_binomial |Model5     |PM10_24h_M1 |   0.0041|    0.0142|    0.2882|  0.7732|       |
|glm_binomial |Model6     |(Intercept) |  -1.4261|    0.5399|   -2.6412|  0.0083|**     |
|glm_binomial |Model6     |PM10_24h_M0 |  -0.0054|    0.0156|   -0.3439|  0.7309|       |
|glm_binomial |Model6     |PM10_24h_M1 |   0.0331|    0.0196|    1.6855|  0.0919|.      |
|glm_binomial |Model6     |PM10_24h_M2 |  -0.0382|    0.0181|   -2.1038|  0.0354|*      |
|glm_binomial |Model7     |(Intercept) |  -1.7946|    0.5908|   -3.0378|  0.0024|**     |
|glm_binomial |Model7     |PM10_24h_M0 |   0.0028|    0.0164|    0.1704|  0.8647|       |
|glm_binomial |Model7     |PM10_24h_M1 |   0.0262|    0.0199|    1.3127|  0.1893|       |
|glm_binomial |Model7     |PM10_24h_M2 |  -0.0553|    0.0209|   -2.6492|  0.0081|**     |
|glm_binomial |Model7     |PM10_24h_M3 |   0.0236|    0.0138|    1.7133|  0.0867|.      |

---

### 污染物: PM2.5 Table: 模型汇总: PM2.5 对 Coma 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -1.6536|    0.4204|   -3.9333|  0.0001|***    |
|glm_binomial |Model1     |PM2.5_M0    |  -0.0077|    0.0165|   -0.4655|  0.6416|       |
|glm_binomial |Model2     |(Intercept) |  -1.8065|    0.4056|   -4.4536|  0.0000|***    |
|glm_binomial |Model2     |PM2.5_M1    |  -0.0012|    0.0152|   -0.0798|  0.9364|       |
|glm_binomial |Model3     |(Intercept) |  -1.5265|    0.3871|   -3.9429|  0.0001|***    |
|glm_binomial |Model3     |PM2.5_M2    |  -0.0126|    0.0146|   -0.8601|  0.3897|       |
|glm_binomial |Model4     |(Intercept) |  -1.9918|    0.3826|   -5.2056|  0.0000|***    |
|glm_binomial |Model4     |PM2.5_M3    |   0.0060|    0.0132|    0.4548|  0.6493|       |
|glm_binomial |Model5     |(Intercept) |  -1.7022|    0.4386|   -3.8807|  0.0001|***    |
|glm_binomial |Model5     |PM2.5_M0    |  -0.0149|    0.0245|   -0.6092|  0.5424|       |
|glm_binomial |Model5     |PM2.5_M1    |   0.0090|    0.0224|    0.4028|  0.6871|       |
|glm_binomial |Model6     |(Intercept) |  -1.5196|    0.4553|   -3.3376|  0.0008|***    |
|glm_binomial |Model6     |PM2.5_M0    |  -0.0224|    0.0252|   -0.8894|  0.3738|       |
|glm_binomial |Model6     |PM2.5_M1    |   0.0511|    0.0350|    1.4593|  0.1445|       |
|glm_binomial |Model6     |PM2.5_M2    |  -0.0421|    0.0274|   -1.5407|  0.1234|       |
|glm_binomial |Model7     |(Intercept) |  -1.8424|    0.4971|   -3.7063|  0.0002|***    |
|glm_binomial |Model7     |PM2.5_M0    |  -0.0056|    0.0271|   -0.2062|  0.8366|       |
|glm_binomial |Model7     |PM2.5_M1    |   0.0377|    0.0356|    1.0570|  0.2905|       |
|glm_binomial |Model7     |PM2.5_M2    |  -0.0734|    0.0331|   -2.2187|  0.0265|*      |
|glm_binomial |Model7     |PM2.5_M3    |   0.0394|    0.0227|    1.7354|  0.0827|.      |

---

### 污染物: PM2.5_24h Table: 模型汇总: PM2.5_24h 对 Coma 的影响

|model_type   |model_name |term         | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:------------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept)  |  -1.6586|    0.4199|   -3.9503|  0.0001|***    |
|glm_binomial |Model1     |PM2.5_24h_M0 |  -0.0075|    0.0165|   -0.4535|  0.6502|       |
|glm_binomial |Model2     |(Intercept)  |  -1.7959|    0.4048|   -4.4360|  0.0000|***    |
|glm_binomial |Model2     |PM2.5_24h_M1 |  -0.0017|    0.0152|   -0.1085|  0.9136|       |
|glm_binomial |Model3     |(Intercept)  |  -1.5268|    0.3868|   -3.9469|  0.0001|***    |
|glm_binomial |Model3     |PM2.5_24h_M2 |  -0.0126|    0.0146|   -0.8601|  0.3898|       |
|glm_binomial |Model4     |(Intercept)  |  -1.9942|    0.3826|   -5.2128|  0.0000|***    |
|glm_binomial |Model4     |PM2.5_24h_M3 |   0.0061|    0.0132|    0.4618|  0.6443|       |
|glm_binomial |Model5     |(Intercept)  |  -1.7002|    0.4381|   -3.8804|  0.0001|***    |
|glm_binomial |Model5     |PM2.5_24h_M0 |  -0.0136|    0.0244|   -0.5578|  0.5769|       |
|glm_binomial |Model5     |PM2.5_24h_M1 |   0.0077|    0.0223|    0.3432|  0.7315|       |
|glm_binomial |Model6     |(Intercept)  |  -1.5206|    0.4550|   -3.3419|  0.0008|***    |
|glm_binomial |Model6     |PM2.5_24h_M0 |  -0.0209|    0.0250|   -0.8348|  0.4038|       |
|glm_binomial |Model6     |PM2.5_24h_M1 |   0.0487|    0.0351|    1.3872|  0.1654|       |
|glm_binomial |Model6     |PM2.5_24h_M2 |  -0.0411|    0.0276|   -1.4922|  0.1356|       |
|glm_binomial |Model7     |(Intercept)  |  -1.8287|    0.4946|   -3.6971|  0.0002|***    |
|glm_binomial |Model7     |PM2.5_24h_M0 |  -0.0050|    0.0268|   -0.1864|  0.8522|       |
|glm_binomial |Model7     |PM2.5_24h_M1 |   0.0350|    0.0359|    0.9744|  0.3299|       |
|glm_binomial |Model7     |PM2.5_24h_M2 |  -0.0696|    0.0326|   -2.1371|  0.0326|*      |
|glm_binomial |Model7     |PM2.5_24h_M3 |   0.0373|    0.0220|    1.6933|  0.0904|.      |

---

### 污染物: SO2 Table: 模型汇总: SO2 对 Coma 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -1.7564|    0.4814|   -3.6488|  0.0003|***    |
|glm_binomial |Model1     |SO2_M0      |  -0.0020|    0.0111|   -0.1754|  0.8608|       |
|glm_binomial |Model2     |(Intercept) |  -1.8720|    0.4579|   -4.0881|  0.0000|***    |
|glm_binomial |Model2     |SO2_M1      |   0.0009|    0.0103|    0.0838|  0.9332|       |
|glm_binomial |Model3     |(Intercept) |  -1.2632|    0.4604|   -2.7439|  0.0061|**     |
|glm_binomial |Model3     |SO2_M2      |  -0.0140|    0.0108|   -1.2907|  0.1968|       |
|glm_binomial |Model4     |(Intercept) |  -1.9667|    0.4475|   -4.3948|  0.0000|***    |
|glm_binomial |Model4     |SO2_M3      |   0.0030|    0.0095|    0.3152|  0.7526|       |
|glm_binomial |Model5     |(Intercept) |  -1.8006|    0.5062|   -3.5573|  0.0004|***    |
|glm_binomial |Model5     |SO2_M0      |  -0.0050|    0.0155|   -0.3250|  0.7451|       |
|glm_binomial |Model5     |SO2_M1      |   0.0041|    0.0142|    0.2882|  0.7732|       |
|glm_binomial |Model6     |(Intercept) |  -1.4261|    0.5399|   -2.6412|  0.0083|**     |
|glm_binomial |Model6     |SO2_M0      |  -0.0054|    0.0156|   -0.3439|  0.7309|       |
|glm_binomial |Model6     |SO2_M1      |   0.0331|    0.0196|    1.6855|  0.0919|.      |
|glm_binomial |Model6     |SO2_M2      |  -0.0382|    0.0181|   -2.1038|  0.0354|*      |
|glm_binomial |Model7     |(Intercept) |  -1.7946|    0.5908|   -3.0378|  0.0024|**     |
|glm_binomial |Model7     |SO2_M0      |   0.0028|    0.0164|    0.1704|  0.8647|       |
|glm_binomial |Model7     |SO2_M1      |   0.0262|    0.0199|    1.3127|  0.1893|       |
|glm_binomial |Model7     |SO2_M2      |  -0.0553|    0.0209|   -2.6492|  0.0081|**     |
|glm_binomial |Model7     |SO2_M3      |   0.0236|    0.0138|    1.7133|  0.0867|.      |

---

### 污染物: SO2_24h Table: 模型汇总: SO2_24h 对 Coma 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -2.0581|    0.4248|   -4.8448|  0.0000|***    |
|glm_binomial |Model1     |SO2_24h_M0  |   0.0260|    0.0454|    0.5726|  0.5669|       |
|glm_binomial |Model2     |(Intercept) |  -2.0979|    0.4487|   -4.6755|  0.0000|***    |
|glm_binomial |Model2     |SO2_24h_M1  |   0.0306|    0.0482|    0.6344|  0.5258|       |
|glm_binomial |Model3     |(Intercept) |  -1.5098|    0.4545|   -3.3219|  0.0009|***    |
|glm_binomial |Model3     |SO2_24h_M2  |  -0.0389|    0.0515|   -0.7551|  0.4502|       |
|glm_binomial |Model4     |(Intercept) |  -1.7460|    0.4250|   -4.1082|  0.0000|***    |
|glm_binomial |Model4     |SO2_24h_M3  |  -0.0105|    0.0458|   -0.2283|  0.8194|       |
|glm_binomial |Model5     |(Intercept) |  -2.1007|    0.4536|   -4.6314|  0.0000|***    |
|glm_binomial |Model5     |SO2_24h_M0  |   0.0037|    0.0915|    0.0405|  0.9677|       |
|glm_binomial |Model5     |SO2_24h_M1  |   0.0272|    0.0963|    0.2824|  0.7776|       |
|glm_binomial |Model6     |(Intercept) |  -1.8003|    0.4907|   -3.6691|  0.0002|***    |
|glm_binomial |Model6     |SO2_24h_M0  |   0.0123|    0.0978|    0.1256|  0.9001|       |
|glm_binomial |Model6     |SO2_24h_M1  |   0.2008|    0.1237|    1.6238|  0.1044|       |
|glm_binomial |Model6     |SO2_24h_M2  |  -0.2220|    0.1012|   -2.1933|  0.0283|*      |
|glm_binomial |Model7     |(Intercept) |  -1.8580|    0.4987|   -3.7256|  0.0002|***    |
|glm_binomial |Model7     |SO2_24h_M0  |   0.0205|    0.0991|    0.2071|  0.8359|       |
|glm_binomial |Model7     |SO2_24h_M1  |   0.1888|    0.1246|    1.5155|  0.1296|       |
|glm_binomial |Model7     |SO2_24h_M2  |  -0.2628|    0.1191|   -2.2068|  0.0273|*      |
|glm_binomial |Model7     |SO2_24h_M3  |   0.0504|    0.0773|    0.6523|  0.5142|       |

---


## 分析症状: Language problem

---

### 污染物: AQI Table: 模型汇总: AQI 对 Language problem 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.3182|    0.4196|   -0.7584|  0.4482|       |
|glm_binomial |Model1     |AQI_M0      |  -0.0092|    0.0097|   -0.9495|  0.3424|       |
|glm_binomial |Model2     |(Intercept) |  -0.3473|    0.4012|   -0.8656|  0.3867|       |
|glm_binomial |Model2     |AQI_M1      |  -0.0084|    0.0091|   -0.9217|  0.3567|       |
|glm_binomial |Model3     |(Intercept) |  -0.7536|    0.3854|   -1.9551|  0.0506|.      |
|glm_binomial |Model3     |AQI_M2      |   0.0012|    0.0084|    0.1394|  0.8892|       |
|glm_binomial |Model4     |(Intercept) |  -1.0464|    0.3770|   -2.7755|  0.0055|**     |
|glm_binomial |Model4     |AQI_M3      |   0.0078|    0.0080|    0.9670|  0.3335|       |
|glm_binomial |Model5     |(Intercept) |  -0.2689|    0.4420|   -0.6084|  0.5429|       |
|glm_binomial |Model5     |AQI_M0      |  -0.0057|    0.0136|   -0.4212|  0.6736|       |
|glm_binomial |Model5     |AQI_M1      |  -0.0046|    0.0128|   -0.3546|  0.7229|       |
|glm_binomial |Model6     |(Intercept) |  -0.4283|    0.4573|   -0.9367|  0.3489|       |
|glm_binomial |Model6     |AQI_M0      |  -0.0049|    0.0137|   -0.3559|  0.7219|       |
|glm_binomial |Model6     |AQI_M1      |  -0.0212|    0.0177|   -1.2030|  0.2290|       |
|glm_binomial |Model6     |AQI_M2      |   0.0191|    0.0137|    1.3876|  0.1653|       |
|glm_binomial |Model7     |(Intercept) |  -0.6657|    0.4920|   -1.3530|  0.1761|       |
|glm_binomial |Model7     |AQI_M0      |   0.0006|    0.0143|    0.0451|  0.9640|       |
|glm_binomial |Model7     |AQI_M1      |  -0.0263|    0.0180|   -1.4566|  0.1452|       |
|glm_binomial |Model7     |AQI_M2      |   0.0066|    0.0165|    0.3994|  0.6896|       |
|glm_binomial |Model7     |AQI_M3      |   0.0172|    0.0128|    1.3485|  0.1775|       |

---

### 污染物: CO Table: 模型汇总: CO 对 Language problem 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.8206|    0.5671|   -1.4469|  0.1479|       |
|glm_binomial |Model1     |CO_M0       |   0.1667|    0.7824|    0.2131|  0.8313|       |
|glm_binomial |Model2     |(Intercept) |  -0.5587|    0.5225|   -1.0693|  0.2849|       |
|glm_binomial |Model2     |CO_M1       |  -0.2013|    0.7129|   -0.2823|  0.7777|       |
|glm_binomial |Model3     |(Intercept) |  -0.6208|    0.5050|   -1.2292|  0.2190|       |
|glm_binomial |Model3     |CO_M2       |  -0.1137|    0.6829|   -0.1664|  0.8678|       |
|glm_binomial |Model4     |(Intercept) |  -0.8500|    0.4933|   -1.7231|  0.0849|.      |
|glm_binomial |Model4     |CO_M3       |   0.2029|    0.6577|    0.3085|  0.7577|       |
|glm_binomial |Model5     |(Intercept) |  -0.7422|    0.5786|   -1.2828|  0.1996|       |
|glm_binomial |Model5     |CO_M0       |   1.0250|    1.3535|    0.7573|  0.4489|       |
|glm_binomial |Model5     |CO_M1       |  -0.9602|    1.2462|   -0.7705|  0.4410|       |
|glm_binomial |Model6     |(Intercept) |  -0.7481|    0.5880|   -1.2724|  0.2032|       |
|glm_binomial |Model6     |CO_M0       |   1.0189|    1.3582|    0.7502|  0.4531|       |
|glm_binomial |Model6     |CO_M1       |  -1.0151|    1.5824|   -0.6415|  0.5212|       |
|glm_binomial |Model6     |CO_M2       |   0.0688|    1.2178|    0.0565|  0.9550|       |
|glm_binomial |Model7     |(Intercept) |  -0.8793|    0.6037|   -1.4564|  0.1453|       |
|glm_binomial |Model7     |CO_M0       |   1.1609|    1.3704|    0.8471|  0.3969|       |
|glm_binomial |Model7     |CO_M1       |  -1.1041|    1.5949|   -0.6923|  0.4888|       |
|glm_binomial |Model7     |CO_M2       |  -1.1816|    1.7391|   -0.6794|  0.4969|       |
|glm_binomial |Model7     |CO_M3       |   1.3671|    1.3563|    1.0080|  0.3135|       |

---

### 污染物: CO_24h Table: 模型汇总: CO_24h 对 Language problem 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.8351|    0.5655|   -1.4769|  0.1397|       |
|glm_binomial |Model1     |CO_24h_M0   |   0.1872|    0.7799|    0.2400|  0.8103|       |
|glm_binomial |Model2     |(Intercept) |  -0.5460|    0.5213|   -1.0474|  0.2949|       |
|glm_binomial |Model2     |CO_24h_M1   |  -0.2192|    0.7119|   -0.3079|  0.7582|       |
|glm_binomial |Model3     |(Intercept) |  -0.6116|    0.5049|   -1.2115|  0.2257|       |
|glm_binomial |Model3     |CO_24h_M2   |  -0.1264|    0.6829|   -0.1851|  0.8532|       |
|glm_binomial |Model4     |(Intercept) |  -0.8616|    0.4938|   -1.7447|  0.0810|.      |
|glm_binomial |Model4     |CO_24h_M3   |   0.2190|    0.6590|    0.3323|  0.7397|       |
|glm_binomial |Model5     |(Intercept) |  -0.7479|    0.5774|   -1.2954|  0.1952|       |
|glm_binomial |Model5     |CO_24h_M0   |   1.1258|    1.3469|    0.8359|  0.4032|       |
|glm_binomial |Model5     |CO_24h_M1   |  -1.0531|    1.2433|   -0.8470|  0.3970|       |
|glm_binomial |Model6     |(Intercept) |  -0.7536|    0.5872|   -1.2834|  0.1994|       |
|glm_binomial |Model6     |CO_24h_M0   |   1.1202|    1.3516|    0.8288|  0.4072|       |
|glm_binomial |Model6     |CO_24h_M1   |  -1.1045|    1.5771|   -0.7004|  0.4837|       |
|glm_binomial |Model6     |CO_24h_M2   |   0.0645|    1.2144|    0.0531|  0.9576|       |
|glm_binomial |Model7     |(Intercept) |  -0.8984|    0.6036|   -1.4883|  0.1367|       |
|glm_binomial |Model7     |CO_24h_M0   |   1.2819|    1.3638|    0.9399|  0.3473|       |
|glm_binomial |Model7     |CO_24h_M1   |  -1.2269|    1.5924|   -0.7705|  0.4410|       |
|glm_binomial |Model7     |CO_24h_M2   |  -1.2546|    1.7127|   -0.7325|  0.4639|       |
|glm_binomial |Model7     |CO_24h_M3   |   1.4684|    1.3424|    1.0939|  0.2740|       |

---

### 污染物: NO2 Table: 模型汇总: NO2 对 Language problem 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.3716|    0.2789|   -1.3321|  0.1828|       |
|glm_binomial |Model1     |NO2_M0      |  -0.0142|    0.0110|   -1.2943|  0.1956|       |
|glm_binomial |Model2     |(Intercept) |  -0.4207|    0.2643|   -1.5917|  0.1115|       |
|glm_binomial |Model2     |NO2_M1      |  -0.0121|    0.0102|   -1.1784|  0.2386|       |
|glm_binomial |Model3     |(Intercept) |  -0.5142|    0.2638|   -1.9493|  0.0513|.      |
|glm_binomial |Model3     |NO2_M2      |  -0.0078|    0.0099|   -0.7929|  0.4279|       |
|glm_binomial |Model4     |(Intercept) |  -0.7277|    0.2570|   -2.8312|  0.0046|**     |
|glm_binomial |Model4     |NO2_M3      |   0.0010|    0.0092|    0.1103|  0.9122|       |
|glm_binomial |Model5     |(Intercept) |  -0.3622|    0.2831|   -1.2794|  0.2007|       |
|glm_binomial |Model5     |NO2_M0      |  -0.0111|    0.0193|   -0.5765|  0.5643|       |
|glm_binomial |Model5     |NO2_M1      |  -0.0035|    0.0180|   -0.1914|  0.8482|       |
|glm_binomial |Model6     |(Intercept) |  -0.3841|    0.2889|   -1.3294|  0.1837|       |
|glm_binomial |Model6     |NO2_M0      |  -0.0126|    0.0197|   -0.6397|  0.5224|       |
|glm_binomial |Model6     |NO2_M1      |  -0.0079|    0.0212|   -0.3702|  0.7112|       |
|glm_binomial |Model6     |NO2_M2      |   0.0066|    0.0169|    0.3896|  0.6968|       |
|glm_binomial |Model7     |(Intercept) |  -0.4602|    0.2955|   -1.5573|  0.1194|       |
|glm_binomial |Model7     |NO2_M0      |  -0.0121|    0.0198|   -0.6091|  0.5424|       |
|glm_binomial |Model7     |NO2_M1      |  -0.0124|    0.0214|   -0.5796|  0.5622|       |
|glm_binomial |Model7     |NO2_M2      |  -0.0073|    0.0197|   -0.3721|  0.7098|       |
|glm_binomial |Model7     |NO2_M3      |   0.0204|    0.0150|    1.3582|  0.1744|       |

---

### 污染物: NO2_24h Table: 模型汇总: NO2_24h 对 Language problem 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.3735|    0.2789|   -1.3393|  0.1805|       |
|glm_binomial |Model1     |NO2_24h_M0  |  -0.0141|    0.0110|   -1.2872|  0.1980|       |
|glm_binomial |Model2     |(Intercept) |  -0.4160|    0.2644|   -1.5733|  0.1156|       |
|glm_binomial |Model2     |NO2_24h_M1  |  -0.0123|    0.0103|   -1.1973|  0.2312|       |
|glm_binomial |Model3     |(Intercept) |  -0.5155|    0.2640|   -1.9530|  0.0508|.      |
|glm_binomial |Model3     |NO2_24h_M2  |  -0.0078|    0.0099|   -0.7869|  0.4313|       |
|glm_binomial |Model4     |(Intercept) |  -0.7387|    0.2571|   -2.8737|  0.0041|**     |
|glm_binomial |Model4     |NO2_24h_M3  |   0.0015|    0.0092|    0.1589|  0.8737|       |
|glm_binomial |Model5     |(Intercept) |  -0.3617|    0.2831|   -1.2776|  0.2014|       |
|glm_binomial |Model5     |NO2_24h_M0  |  -0.0103|    0.0193|   -0.5354|  0.5923|       |
|glm_binomial |Model5     |NO2_24h_M1  |  -0.0043|    0.0181|   -0.2376|  0.8122|       |
|glm_binomial |Model6     |(Intercept) |  -0.3854|    0.2890|   -1.3338|  0.1823|       |
|glm_binomial |Model6     |NO2_24h_M0  |  -0.0119|    0.0197|   -0.6053|  0.5450|       |
|glm_binomial |Model6     |NO2_24h_M1  |  -0.0091|    0.0213|   -0.4277|  0.6689|       |
|glm_binomial |Model6     |NO2_24h_M2  |   0.0072|    0.0170|    0.4222|  0.6729|       |
|glm_binomial |Model7     |(Intercept) |  -0.4667|    0.2958|   -1.5779|  0.1146|       |
|glm_binomial |Model7     |NO2_24h_M0  |  -0.0110|    0.0198|   -0.5543|  0.5794|       |
|glm_binomial |Model7     |NO2_24h_M1  |  -0.0144|    0.0215|   -0.6686|  0.5037|       |
|glm_binomial |Model7     |NO2_24h_M2  |  -0.0074|    0.0197|   -0.3772|  0.7060|       |
|glm_binomial |Model7     |NO2_24h_M3  |   0.0216|    0.0151|    1.4355|  0.1512|       |

---

### 污染物: O3 Table: 模型汇总: O3 对 Language problem 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.4478|    0.4688|   -0.9551|  0.3395|       |
|glm_binomial |Model1     |O3_M0       |  -0.0044|    0.0079|   -0.5600|  0.5754|       |
|glm_binomial |Model2     |(Intercept) |  -0.3442|    0.5132|   -0.6707|  0.5024|       |
|glm_binomial |Model2     |O3_M1       |  -0.0063|    0.0087|   -0.7151|  0.4745|       |
|glm_binomial |Model3     |(Intercept) |  -0.5722|    0.4834|   -1.1836|  0.2366|       |
|glm_binomial |Model3     |O3_M2       |  -0.0022|    0.0080|   -0.2778|  0.7812|       |
|glm_binomial |Model4     |(Intercept) |  -0.9034|    0.4663|   -1.9373|  0.0527|.      |
|glm_binomial |Model4     |O3_M3       |   0.0035|    0.0079|    0.4465|  0.6552|       |
|glm_binomial |Model5     |(Intercept) |  -0.2913|    0.5632|   -0.5172|  0.6050|       |
|glm_binomial |Model5     |O3_M0       |  -0.0021|    0.0092|   -0.2285|  0.8193|       |
|glm_binomial |Model5     |O3_M1       |  -0.0051|    0.0101|   -0.5001|  0.6170|       |
|glm_binomial |Model6     |(Intercept) |  -0.3017|    0.6331|   -0.4766|  0.6337|       |
|glm_binomial |Model6     |O3_M0       |  -0.0021|    0.0092|   -0.2252|  0.8219|       |
|glm_binomial |Model6     |O3_M1       |  -0.0052|    0.0112|   -0.4671|  0.6404|       |
|glm_binomial |Model6     |O3_M2       |   0.0003|    0.0090|    0.0360|  0.9712|       |
|glm_binomial |Model7     |(Intercept) |  -0.4830|    0.7032|   -0.6868|  0.4922|       |
|glm_binomial |Model7     |O3_M0       |  -0.0016|    0.0093|   -0.1675|  0.8670|       |
|glm_binomial |Model7     |O3_M1       |  -0.0051|    0.0112|   -0.4523|  0.6511|       |
|glm_binomial |Model7     |O3_M2       |  -0.0026|    0.0102|   -0.2532|  0.8001|       |
|glm_binomial |Model7     |O3_M3       |   0.0055|    0.0091|    0.6008|  0.5480|       |

---

### 污染物: PM10 Table: 模型汇总: PM10 对 Language problem 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.2988|    0.3553|   -0.8408|  0.4005|       |
|glm_binomial |Model1     |PM10_M0     |  -0.0099|    0.0083|   -1.1951|  0.2321|       |
|glm_binomial |Model2     |(Intercept) |  -0.3120|    0.3389|   -0.9207|  0.3572|       |
|glm_binomial |Model2     |PM10_M1     |  -0.0095|    0.0078|   -1.2187|  0.2230|       |
|glm_binomial |Model3     |(Intercept) |  -0.6871|    0.3360|   -2.0449|  0.0409|*      |
|glm_binomial |Model3     |PM10_M2     |  -0.0004|    0.0074|   -0.0490|  0.9609|       |
|glm_binomial |Model4     |(Intercept) |  -1.0119|    0.3301|   -3.0658|  0.0022|**     |
|glm_binomial |Model4     |PM10_M3     |   0.0071|    0.0070|    1.0123|  0.3114|       |
|glm_binomial |Model5     |(Intercept) |  -0.2369|    0.3733|   -0.6345|  0.5257|       |
|glm_binomial |Model5     |PM10_M0     |  -0.0055|    0.0116|   -0.4769|  0.6334|       |
|glm_binomial |Model5     |PM10_M1     |  -0.0058|    0.0108|   -0.5379|  0.5907|       |
|glm_binomial |Model6     |(Intercept) |  -0.3850|    0.3884|   -0.9911|  0.3216|       |
|glm_binomial |Model6     |PM10_M0     |  -0.0061|    0.0116|   -0.5221|  0.6016|       |
|glm_binomial |Model6     |PM10_M1     |  -0.0184|    0.0141|   -1.2978|  0.1944|       |
|glm_binomial |Model6     |PM10_M2     |   0.0162|    0.0115|    1.4038|  0.1604|       |
|glm_binomial |Model7     |(Intercept) |  -0.6171|    0.4208|   -1.4664|  0.1425|       |
|glm_binomial |Model7     |PM10_M0     |  -0.0011|    0.0121|   -0.0942|  0.9250|       |
|glm_binomial |Model7     |PM10_M1     |  -0.0222|    0.0144|   -1.5375|  0.1242|       |
|glm_binomial |Model7     |PM10_M2     |   0.0043|    0.0140|    0.3102|  0.7564|       |
|glm_binomial |Model7     |PM10_M3     |   0.0159|    0.0106|    1.4966|  0.1345|       |

---

### 污染物: PM10_24h Table: 模型汇总: PM10_24h 对 Language problem 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.2917|    0.3533|   -0.8256|  0.4090|       |
|glm_binomial |Model1     |PM10_24h_M0 |  -0.0101|    0.0083|   -1.2237|  0.2211|       |
|glm_binomial |Model2     |(Intercept) |  -0.2930|    0.3367|   -0.8700|  0.3843|       |
|glm_binomial |Model2     |PM10_24h_M1 |  -0.0100|    0.0078|   -1.2864|  0.1983|       |
|glm_binomial |Model3     |(Intercept) |  -0.6927|    0.3339|   -2.0743|  0.0381|*      |
|glm_binomial |Model3     |PM10_24h_M2 |  -0.0002|    0.0074|   -0.0317|  0.9747|       |
|glm_binomial |Model4     |(Intercept) |  -0.9986|    0.3284|   -3.0406|  0.0024|**     |
|glm_binomial |Model4     |PM10_24h_M3 |   0.0068|    0.0070|    0.9740|  0.3301|       |
|glm_binomial |Model5     |(Intercept) |  -0.2218|    0.3713|   -0.5974|  0.5502|       |
|glm_binomial |Model5     |PM10_24h_M0 |  -0.0052|    0.0115|   -0.4526|  0.6508|       |
|glm_binomial |Model5     |PM10_24h_M1 |  -0.0066|    0.0108|   -0.6080|  0.5432|       |
|glm_binomial |Model6     |(Intercept) |  -0.3797|    0.3862|   -0.9832|  0.3255|       |
|glm_binomial |Model6     |PM10_24h_M0 |  -0.0058|    0.0116|   -0.5018|  0.6158|       |
|glm_binomial |Model6     |PM10_24h_M1 |  -0.0203|    0.0142|   -1.4293|  0.1529|       |
|glm_binomial |Model6     |PM10_24h_M2 |   0.0176|    0.0116|    1.5236|  0.1276|       |
|glm_binomial |Model7     |(Intercept) |  -0.6017|    0.4184|   -1.4382|  0.1504|       |
|glm_binomial |Model7     |PM10_24h_M0 |  -0.0012|    0.0121|   -0.0992|  0.9210|       |
|glm_binomial |Model7     |PM10_24h_M1 |  -0.0240|    0.0145|   -1.6586|  0.0972|.      |
|glm_binomial |Model7     |PM10_24h_M2 |   0.0066|    0.0139|    0.4728|  0.6364|       |
|glm_binomial |Model7     |PM10_24h_M3 |   0.0151|    0.0105|    1.4362|  0.1509|       |

---

### 污染物: PM2.5 Table: 模型汇总: PM2.5 对 Language problem 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.5377|    0.3087|   -1.7418|  0.0815|.      |
|glm_binomial |Model1     |PM2.5_M0    |  -0.0069|    0.0120|   -0.5755|  0.5649|       |
|glm_binomial |Model2     |(Intercept) |  -0.5138|    0.2967|   -1.7319|  0.0833|.      |
|glm_binomial |Model2     |PM2.5_M1    |  -0.0077|    0.0112|   -0.6898|  0.4903|       |
|glm_binomial |Model3     |(Intercept) |  -0.7937|    0.2828|   -2.8069|  0.0050|**     |
|glm_binomial |Model3     |PM2.5_M2    |   0.0036|    0.0101|    0.3565|  0.7215|       |
|glm_binomial |Model4     |(Intercept) |  -0.9560|    0.2802|   -3.4116|  0.0006|***    |
|glm_binomial |Model4     |PM2.5_M3    |   0.0098|    0.0097|    1.0078|  0.3136|       |
|glm_binomial |Model5     |(Intercept) |  -0.5025|    0.3213|   -1.5641|  0.1178|       |
|glm_binomial |Model5     |PM2.5_M0    |  -0.0016|    0.0179|   -0.0917|  0.9269|       |
|glm_binomial |Model5     |PM2.5_M1    |  -0.0066|    0.0168|   -0.3923|  0.6948|       |
|glm_binomial |Model6     |(Intercept) |  -0.6290|    0.3315|   -1.8977|  0.0577|.      |
|glm_binomial |Model6     |PM2.5_M0    |   0.0034|    0.0183|    0.1865|  0.8521|       |
|glm_binomial |Model6     |PM2.5_M1    |  -0.0379|    0.0255|   -1.4881|  0.1367|       |
|glm_binomial |Model6     |PM2.5_M2    |   0.0304|    0.0184|    1.6565|  0.0976|.      |
|glm_binomial |Model7     |(Intercept) |  -0.8020|    0.3587|   -2.2357|  0.0254|*      |
|glm_binomial |Model7     |PM2.5_M0    |   0.0118|    0.0194|    0.6044|  0.5456|       |
|glm_binomial |Model7     |PM2.5_M1    |  -0.0444|    0.0260|   -1.7067|  0.0879|.      |
|glm_binomial |Model7     |PM2.5_M2    |   0.0127|    0.0229|    0.5526|  0.5806|       |
|glm_binomial |Model7     |PM2.5_M3    |   0.0224|    0.0173|    1.2981|  0.1943|       |

---

### 污染物: PM2.5_24h Table: 模型汇总: PM2.5_24h 对 Language problem 的影响

|model_type   |model_name |term         | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:------------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept)  |  -0.5305|    0.3083|   -1.7211|  0.0852|.      |
|glm_binomial |Model1     |PM2.5_24h_M0 |  -0.0072|    0.0120|   -0.6016|  0.5474|       |
|glm_binomial |Model2     |(Intercept)  |  -0.5048|    0.2962|   -1.7042|  0.0884|.      |
|glm_binomial |Model2     |PM2.5_24h_M1 |  -0.0081|    0.0112|   -0.7240|  0.4691|       |
|glm_binomial |Model3     |(Intercept)  |  -0.7972|    0.2826|   -2.8211|  0.0048|**     |
|glm_binomial |Model3     |PM2.5_24h_M2 |   0.0037|    0.0101|    0.3705|  0.7110|       |
|glm_binomial |Model4     |(Intercept)  |  -0.9539|    0.2801|   -3.4055|  0.0007|***    |
|glm_binomial |Model4     |PM2.5_24h_M3 |   0.0097|    0.0097|    0.9998|  0.3174|       |
|glm_binomial |Model5     |(Intercept)  |  -0.4931|    0.3209|   -1.5364|  0.1245|       |
|glm_binomial |Model5     |PM2.5_24h_M0 |  -0.0017|    0.0179|   -0.0947|  0.9245|       |
|glm_binomial |Model5     |PM2.5_24h_M1 |  -0.0069|    0.0167|   -0.4150|  0.6781|       |
|glm_binomial |Model6     |(Intercept)  |  -0.6258|    0.3314|   -1.8886|  0.0589|.      |
|glm_binomial |Model6     |PM2.5_24h_M0 |   0.0036|    0.0182|    0.1976|  0.8434|       |
|glm_binomial |Model6     |PM2.5_24h_M1 |  -0.0397|    0.0254|   -1.5603|  0.1187|       |
|glm_binomial |Model6     |PM2.5_24h_M2 |   0.0318|    0.0184|    1.7328|  0.0831|.      |
|glm_binomial |Model7     |(Intercept)  |  -0.7977|    0.3583|   -2.2260|  0.0260|*      |
|glm_binomial |Model7     |PM2.5_24h_M0 |   0.0118|    0.0194|    0.6116|  0.5408|       |
|glm_binomial |Model7     |PM2.5_24h_M1 |  -0.0467|    0.0261|   -1.7925|  0.0731|.      |
|glm_binomial |Model7     |PM2.5_24h_M2 |   0.0152|    0.0224|    0.6767|  0.4986|       |
|glm_binomial |Model7     |PM2.5_24h_M3 |   0.0220|    0.0170|    1.2955|  0.1952|       |

---

### 污染物: SO2 Table: 模型汇总: SO2 对 Language problem 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.2917|    0.3533|   -0.8256|  0.4090|       |
|glm_binomial |Model1     |SO2_M0      |  -0.0101|    0.0083|   -1.2237|  0.2211|       |
|glm_binomial |Model2     |(Intercept) |  -0.2930|    0.3367|   -0.8700|  0.3843|       |
|glm_binomial |Model2     |SO2_M1      |  -0.0100|    0.0078|   -1.2864|  0.1983|       |
|glm_binomial |Model3     |(Intercept) |  -0.6927|    0.3339|   -2.0743|  0.0381|*      |
|glm_binomial |Model3     |SO2_M2      |  -0.0002|    0.0074|   -0.0317|  0.9747|       |
|glm_binomial |Model4     |(Intercept) |  -0.9986|    0.3284|   -3.0406|  0.0024|**     |
|glm_binomial |Model4     |SO2_M3      |   0.0068|    0.0070|    0.9740|  0.3301|       |
|glm_binomial |Model5     |(Intercept) |  -0.2218|    0.3713|   -0.5974|  0.5502|       |
|glm_binomial |Model5     |SO2_M0      |  -0.0052|    0.0115|   -0.4526|  0.6508|       |
|glm_binomial |Model5     |SO2_M1      |  -0.0066|    0.0108|   -0.6080|  0.5432|       |
|glm_binomial |Model6     |(Intercept) |  -0.3797|    0.3862|   -0.9832|  0.3255|       |
|glm_binomial |Model6     |SO2_M0      |  -0.0058|    0.0116|   -0.5018|  0.6158|       |
|glm_binomial |Model6     |SO2_M1      |  -0.0203|    0.0142|   -1.4293|  0.1529|       |
|glm_binomial |Model6     |SO2_M2      |   0.0176|    0.0116|    1.5236|  0.1276|       |
|glm_binomial |Model7     |(Intercept) |  -0.6017|    0.4184|   -1.4382|  0.1504|       |
|glm_binomial |Model7     |SO2_M0      |  -0.0012|    0.0121|   -0.0992|  0.9210|       |
|glm_binomial |Model7     |SO2_M1      |  -0.0240|    0.0145|   -1.6586|  0.0972|.      |
|glm_binomial |Model7     |SO2_M2      |   0.0066|    0.0139|    0.4728|  0.6364|       |
|glm_binomial |Model7     |SO2_M3      |   0.0151|    0.0105|    1.4362|  0.1509|       |

---

### 污染物: SO2_24h Table: 模型汇总: SO2_24h 对 Language problem 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.8202|    0.3194|   -2.5680|  0.0102|*      |
|glm_binomial |Model1     |SO2_24h_M0  |   0.0139|    0.0350|    0.3981|  0.6906|       |
|glm_binomial |Model2     |(Intercept) |  -0.8003|    0.3318|   -2.4124|  0.0158|*      |
|glm_binomial |Model2     |SO2_24h_M1  |   0.0115|    0.0365|    0.3164|  0.7517|       |
|glm_binomial |Model3     |(Intercept) |  -0.7843|    0.3210|   -2.4435|  0.0145|*      |
|glm_binomial |Model3     |SO2_24h_M2  |   0.0095|    0.0347|    0.2748|  0.7835|       |
|glm_binomial |Model4     |(Intercept) |  -1.1855|    0.3075|   -3.8557|  0.0001|***    |
|glm_binomial |Model4     |SO2_24h_M3  |   0.0550|    0.0320|    1.7214|  0.0852|.      |
|glm_binomial |Model5     |(Intercept) |  -0.8146|    0.3364|   -2.4213|  0.0155|*      |
|glm_binomial |Model5     |SO2_24h_M0  |   0.0171|    0.0696|    0.2459|  0.8058|       |
|glm_binomial |Model5     |SO2_24h_M1  |  -0.0039|    0.0727|   -0.0532|  0.9576|       |
|glm_binomial |Model6     |(Intercept) |  -0.8163|    0.3446|   -2.3687|  0.0179|*      |
|glm_binomial |Model6     |SO2_24h_M0  |   0.0171|    0.0696|    0.2457|  0.8059|       |
|glm_binomial |Model6     |SO2_24h_M1  |  -0.0051|    0.0901|   -0.0562|  0.9552|       |
|glm_binomial |Model6     |SO2_24h_M2  |   0.0014|    0.0618|    0.0225|  0.9821|       |
|glm_binomial |Model7     |(Intercept) |  -1.0215|    0.3603|   -2.8349|  0.0046|**     |
|glm_binomial |Model7     |SO2_24h_M0  |   0.0414|    0.0715|    0.5795|  0.5623|       |
|glm_binomial |Model7     |SO2_24h_M1  |  -0.0207|    0.0904|   -0.2292|  0.8187|       |
|glm_binomial |Model7     |SO2_24h_M2  |  -0.1496|    0.0850|   -1.7604|  0.0783|.      |
|glm_binomial |Model7     |SO2_24h_M3  |   0.1626|    0.0614|    2.6472|  0.0081|**     |

---


## 分析症状: Dyskinesia/dystonia

---

### 污染物: AQI Table: 模型汇总: AQI 对 Dyskinesia/dystonia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.3054|    0.4058|   -0.7525|  0.4518|       |
|glm_binomial |Model1     |AQI_M0      |  -0.0039|    0.0093|   -0.4249|  0.6709|       |
|glm_binomial |Model2     |(Intercept) |  -0.3625|    0.3875|   -0.9356|  0.3495|       |
|glm_binomial |Model2     |AQI_M1      |  -0.0026|    0.0087|   -0.2928|  0.7697|       |
|glm_binomial |Model3     |(Intercept) |  -0.3418|    0.3733|   -0.9158|  0.3597|       |
|glm_binomial |Model3     |AQI_M2      |  -0.0030|    0.0082|   -0.3632|  0.7165|       |
|glm_binomial |Model4     |(Intercept) |  -0.2444|    0.3624|   -0.6745|  0.5000|       |
|glm_binomial |Model4     |AQI_M3      |  -0.0052|    0.0079|   -0.6574|  0.5109|       |
|glm_binomial |Model5     |(Intercept) |  -0.3069|    0.4273|   -0.7182|  0.4726|       |
|glm_binomial |Model5     |AQI_M0      |  -0.0040|    0.0131|   -0.3084|  0.7578|       |
|glm_binomial |Model5     |AQI_M1      |   0.0001|    0.0123|    0.0113|  0.9910|       |
|glm_binomial |Model6     |(Intercept) |  -0.2806|    0.4421|   -0.6346|  0.5257|       |
|glm_binomial |Model6     |AQI_M0      |  -0.0042|    0.0131|   -0.3201|  0.7489|       |
|glm_binomial |Model6     |AQI_M1      |   0.0028|    0.0169|    0.1672|  0.8672|       |
|glm_binomial |Model6     |AQI_M2      |  -0.0031|    0.0133|   -0.2320|  0.8165|       |
|glm_binomial |Model7     |(Intercept) |  -0.1549|    0.4760|   -0.3254|  0.7449|       |
|glm_binomial |Model7     |AQI_M0      |  -0.0072|    0.0138|   -0.5223|  0.6015|       |
|glm_binomial |Model7     |AQI_M1      |   0.0055|    0.0173|    0.3164|  0.7517|       |
|glm_binomial |Model7     |AQI_M2      |   0.0033|    0.0161|    0.2080|  0.8352|       |
|glm_binomial |Model7     |AQI_M3      |  -0.0089|    0.0125|   -0.7128|  0.4760|       |

---

### 污染物: CO Table: 模型汇总: CO 对 Dyskinesia/dystonia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.8316|    0.5487|   -1.5156|  0.1296|       |
|glm_binomial |Model1     |CO_M0       |   0.5087|    0.7556|    0.6732|  0.5008|       |
|glm_binomial |Model2     |(Intercept) |  -0.5984|    0.5004|   -1.1959|  0.2317|       |
|glm_binomial |Model2     |CO_M1       |   0.1779|    0.6794|    0.2618|  0.7935|       |
|glm_binomial |Model3     |(Intercept) |  -0.2069|    0.4908|   -0.4215|  0.6734|       |
|glm_binomial |Model3     |CO_M2       |  -0.3676|    0.6652|   -0.5525|  0.5806|       |
|glm_binomial |Model4     |(Intercept) |  -0.2113|    0.4815|   -0.4389|  0.6607|       |
|glm_binomial |Model4     |CO_M3       |  -0.3585|    0.6467|   -0.5543|  0.5794|       |
|glm_binomial |Model5     |(Intercept) |  -0.7875|    0.5572|   -1.4135|  0.1575|       |
|glm_binomial |Model5     |CO_M0       |   1.0164|    1.2964|    0.7840|  0.4330|       |
|glm_binomial |Model5     |CO_M1       |  -0.5639|    1.1727|   -0.4809|  0.6306|       |
|glm_binomial |Model6     |(Intercept) |  -0.6331|    0.5681|   -1.1144|  0.2651|       |
|glm_binomial |Model6     |CO_M0       |   1.1898|    1.2997|    0.9155|  0.3600|       |
|glm_binomial |Model6     |CO_M1       |   0.8122|    1.5051|    0.5396|  0.5895|       |
|glm_binomial |Model6     |CO_M2       |  -1.7577|    1.2234|   -1.4367|  0.1508|       |
|glm_binomial |Model7     |(Intercept) |  -0.6266|    0.5838|   -1.0734|  0.2831|       |
|glm_binomial |Model7     |CO_M0       |   1.1835|    1.3061|    0.9062|  0.3649|       |
|glm_binomial |Model7     |CO_M1       |   0.8161|    1.5072|    0.5414|  0.5882|       |
|glm_binomial |Model7     |CO_M2       |  -1.6989|    1.7126|   -0.9920|  0.3212|       |
|glm_binomial |Model7     |CO_M3       |  -0.0650|    1.3265|   -0.0490|  0.9609|       |

---

### 污染物: CO_24h Table: 模型汇总: CO_24h 对 Dyskinesia/dystonia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.8383|    0.5472|   -1.5318|  0.1256|       |
|glm_binomial |Model1     |CO_24h_M0   |   0.5182|    0.7536|    0.6876|  0.4917|       |
|glm_binomial |Model2     |(Intercept) |  -0.5554|    0.4994|   -1.1120|  0.2661|       |
|glm_binomial |Model2     |CO_24h_M1   |   0.1179|    0.6789|    0.1736|  0.8622|       |
|glm_binomial |Model3     |(Intercept) |  -0.2162|    0.4903|   -0.4411|  0.6592|       |
|glm_binomial |Model3     |CO_24h_M2   |  -0.3546|    0.6645|   -0.5336|  0.5936|       |
|glm_binomial |Model4     |(Intercept) |  -0.2056|    0.4820|   -0.4266|  0.6697|       |
|glm_binomial |Model4     |CO_24h_M3   |  -0.3668|    0.6481|   -0.5659|  0.5715|       |
|glm_binomial |Model5     |(Intercept) |  -0.7781|    0.5565|   -1.3981|  0.1621|       |
|glm_binomial |Model5     |CO_24h_M0   |   1.1983|    1.2922|    0.9273|  0.3538|       |
|glm_binomial |Model5     |CO_24h_M1   |  -0.7579|    1.1737|   -0.6457|  0.5185|       |
|glm_binomial |Model6     |(Intercept) |  -0.6386|    0.5674|   -1.1254|  0.2604|       |
|glm_binomial |Model6     |CO_24h_M0   |   1.3508|    1.2943|    1.0437|  0.2966|       |
|glm_binomial |Model6     |CO_24h_M1   |   0.4594|    1.4980|    0.3066|  0.7591|       |
|glm_binomial |Model6     |CO_24h_M2   |  -1.5567|    1.2115|   -1.2850|  0.1988|       |
|glm_binomial |Model7     |(Intercept) |  -0.6244|    0.5834|   -1.0703|  0.2845|       |
|glm_binomial |Model7     |CO_24h_M0   |   1.3367|    1.3014|    1.0271|  0.3044|       |
|glm_binomial |Model7     |CO_24h_M1   |   0.4697|    1.5011|    0.3129|  0.7544|       |
|glm_binomial |Model7     |CO_24h_M2   |  -1.4341|    1.6838|   -0.8517|  0.3944|       |
|glm_binomial |Model7     |CO_24h_M3   |  -0.1376|    1.3137|   -0.1048|  0.9166|       |

---

### 污染物: NO2 Table: 模型汇总: NO2 对 Dyskinesia/dystonia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.4136|    0.2690|   -1.5377|  0.1241|       |
|glm_binomial |Model1     |NO2_M0      |  -0.0024|    0.0103|   -0.2356|  0.8137|       |
|glm_binomial |Model2     |(Intercept) |  -0.3273|    0.2555|   -1.2811|  0.2002|       |
|glm_binomial |Model2     |NO2_M1      |  -0.0061|    0.0097|   -0.6272|  0.5305|       |
|glm_binomial |Model3     |(Intercept) |  -0.3240|    0.2552|   -1.2695|  0.2043|       |
|glm_binomial |Model3     |NO2_M2      |  -0.0061|    0.0095|   -0.6422|  0.5207|       |
|glm_binomial |Model4     |(Intercept) |  -0.2723|    0.2488|   -1.0943|  0.2738|       |
|glm_binomial |Model4     |NO2_M3      |  -0.0081|    0.0091|   -0.8949|  0.3709|       |
|glm_binomial |Model5     |(Intercept) |  -0.3760|    0.2733|   -1.3758|  0.1689|       |
|glm_binomial |Model5     |NO2_M0      |   0.0093|    0.0184|    0.5044|  0.6140|       |
|glm_binomial |Model5     |NO2_M1      |  -0.0133|    0.0174|   -0.7675|  0.4428|       |
|glm_binomial |Model6     |(Intercept) |  -0.3569|    0.2792|   -1.2783|  0.2011|       |
|glm_binomial |Model6     |NO2_M0      |   0.0104|    0.0187|    0.5561|  0.5781|       |
|glm_binomial |Model6     |NO2_M1      |  -0.0098|    0.0204|   -0.4808|  0.6307|       |
|glm_binomial |Model6     |NO2_M2      |  -0.0053|    0.0162|   -0.3298|  0.7415|       |
|glm_binomial |Model7     |(Intercept) |  -0.3227|    0.2849|   -1.1327|  0.2574|       |
|glm_binomial |Model7     |NO2_M0      |   0.0102|    0.0187|    0.5429|  0.5872|       |
|glm_binomial |Model7     |NO2_M1      |  -0.0079|    0.0207|   -0.3821|  0.7024|       |
|glm_binomial |Model7     |NO2_M2      |   0.0007|    0.0191|    0.0350|  0.9721|       |
|glm_binomial |Model7     |NO2_M3      |  -0.0089|    0.0149|   -0.5976|  0.5501|       |

---

### 污染物: NO2_24h Table: 模型汇总: NO2_24h 对 Dyskinesia/dystonia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.4066|    0.2690|   -1.5111|  0.1308|       |
|glm_binomial |Model1     |NO2_24h_M0  |  -0.0027|    0.0104|   -0.2645|  0.7914|       |
|glm_binomial |Model2     |(Intercept) |  -0.3179|    0.2556|   -1.2438|  0.2136|       |
|glm_binomial |Model2     |NO2_24h_M1  |  -0.0065|    0.0098|   -0.6676|  0.5044|       |
|glm_binomial |Model3     |(Intercept) |  -0.3279|    0.2554|   -1.2839|  0.1992|       |
|glm_binomial |Model3     |NO2_24h_M2  |  -0.0059|    0.0095|   -0.6250|  0.5320|       |
|glm_binomial |Model4     |(Intercept) |  -0.2716|    0.2488|   -1.0917|  0.2750|       |
|glm_binomial |Model4     |NO2_24h_M3  |  -0.0082|    0.0091|   -0.8976|  0.3694|       |
|glm_binomial |Model5     |(Intercept) |  -0.3673|    0.2734|   -1.3436|  0.1791|       |
|glm_binomial |Model5     |NO2_24h_M0  |   0.0094|    0.0184|    0.5118|  0.6088|       |
|glm_binomial |Model5     |NO2_24h_M1  |  -0.0138|    0.0174|   -0.7964|  0.4258|       |
|glm_binomial |Model6     |(Intercept) |  -0.3533|    0.2793|   -1.2650|  0.2059|       |
|glm_binomial |Model6     |NO2_24h_M0  |   0.0102|    0.0187|    0.5475|  0.5840|       |
|glm_binomial |Model6     |NO2_24h_M1  |  -0.0112|    0.0205|   -0.5484|  0.5834|       |
|glm_binomial |Model6     |NO2_24h_M2  |  -0.0040|    0.0162|   -0.2438|  0.8074|       |
|glm_binomial |Model7     |(Intercept) |  -0.3185|    0.2852|   -1.1168|  0.2641|       |
|glm_binomial |Model7     |NO2_24h_M0  |   0.0099|    0.0187|    0.5270|  0.5982|       |
|glm_binomial |Model7     |NO2_24h_M1  |  -0.0092|    0.0208|   -0.4397|  0.6602|       |
|glm_binomial |Model7     |NO2_24h_M2  |   0.0020|    0.0191|    0.1057|  0.9158|       |
|glm_binomial |Model7     |NO2_24h_M3  |  -0.0089|    0.0149|   -0.6001|  0.5484|       |

---

### 污染物: O3 Table: 模型汇总: O3 对 Dyskinesia/dystonia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.2718|    0.4530|   -0.6001|  0.5484|       |
|glm_binomial |Model1     |O3_M0       |  -0.0035|    0.0076|   -0.4538|  0.6500|       |
|glm_binomial |Model2     |(Intercept) |  -0.4181|    0.4959|   -0.8432|  0.3991|       |
|glm_binomial |Model2     |O3_M1       |  -0.0009|    0.0084|   -0.1096|  0.9127|       |
|glm_binomial |Model3     |(Intercept) |  -0.7265|    0.4679|   -1.5526|  0.1205|       |
|glm_binomial |Model3     |O3_M2       |   0.0044|    0.0077|    0.5643|  0.5726|       |
|glm_binomial |Model4     |(Intercept) |  -0.8784|    0.4525|   -1.9411|  0.0522|.      |
|glm_binomial |Model4     |O3_M3       |   0.0071|    0.0076|    0.9335|  0.3506|       |
|glm_binomial |Model5     |(Intercept) |  -0.3144|    0.5443|   -0.5777|  0.5635|       |
|glm_binomial |Model5     |O3_M0       |  -0.0041|    0.0088|   -0.4625|  0.6437|       |
|glm_binomial |Model5     |O3_M1       |   0.0014|    0.0097|    0.1413|  0.8877|       |
|glm_binomial |Model6     |(Intercept) |  -0.4980|    0.6129|   -0.8124|  0.4165|       |
|glm_binomial |Model6     |O3_M0       |  -0.0036|    0.0089|   -0.4117|  0.6806|       |
|glm_binomial |Model6     |O3_M1       |  -0.0017|    0.0108|   -0.1545|  0.8773|       |
|glm_binomial |Model6     |O3_M2       |   0.0057|    0.0087|    0.6552|  0.5123|       |
|glm_binomial |Model7     |(Intercept) |  -0.7005|    0.6822|   -1.0269|  0.3045|       |
|glm_binomial |Model7     |O3_M0       |  -0.0031|    0.0089|   -0.3451|  0.7300|       |
|glm_binomial |Model7     |O3_M1       |  -0.0015|    0.0108|   -0.1359|  0.8919|       |
|glm_binomial |Model7     |O3_M2       |   0.0025|    0.0098|    0.2513|  0.8016|       |
|glm_binomial |Model7     |O3_M3       |   0.0061|    0.0089|    0.6862|  0.4926|       |

---

### 污染物: PM10 Table: 模型汇总: PM10 对 Dyskinesia/dystonia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.3902|    0.3433|   -1.1367|  0.2557|       |
|glm_binomial |Model1     |PM10_M0     |  -0.0020|    0.0079|   -0.2495|  0.8029|       |
|glm_binomial |Model2     |(Intercept) |  -0.4244|    0.3263|   -1.3007|  0.1934|       |
|glm_binomial |Model2     |PM10_M1     |  -0.0011|    0.0074|   -0.1525|  0.8788|       |
|glm_binomial |Model3     |(Intercept) |  -0.3464|    0.3253|   -1.0650|  0.2869|       |
|glm_binomial |Model3     |PM10_M2     |  -0.0029|    0.0072|   -0.4085|  0.6829|       |
|glm_binomial |Model4     |(Intercept) |  -0.1994|    0.3173|   -0.6284|  0.5297|       |
|glm_binomial |Model4     |PM10_M3     |  -0.0063|    0.0069|   -0.9140|  0.3607|       |
|glm_binomial |Model5     |(Intercept) |  -0.3936|    0.3606|   -1.0916|  0.2750|       |
|glm_binomial |Model5     |PM10_M0     |  -0.0022|    0.0110|   -0.2001|  0.8414|       |
|glm_binomial |Model5     |PM10_M1     |   0.0003|    0.0103|    0.0311|  0.9752|       |
|glm_binomial |Model6     |(Intercept) |  -0.3460|    0.3761|   -0.9199|  0.3576|       |
|glm_binomial |Model6     |PM10_M0     |  -0.0021|    0.0110|   -0.1884|  0.8506|       |
|glm_binomial |Model6     |PM10_M1     |   0.0042|    0.0134|    0.3115|  0.7554|       |
|glm_binomial |Model6     |PM10_M2     |  -0.0050|    0.0112|   -0.4485|  0.6538|       |
|glm_binomial |Model7     |(Intercept) |  -0.1885|    0.4073|   -0.4628|  0.6435|       |
|glm_binomial |Model7     |PM10_M0     |  -0.0054|    0.0115|   -0.4695|  0.6387|       |
|glm_binomial |Model7     |PM10_M1     |   0.0067|    0.0137|    0.4877|  0.6258|       |
|glm_binomial |Model7     |PM10_M2     |   0.0028|    0.0137|    0.2020|  0.8399|       |
|glm_binomial |Model7     |PM10_M3     |  -0.0105|    0.0105|   -0.9996|  0.3175|       |

---

### 污染物: PM10_24h Table: 模型汇总: PM10_24h 对 Dyskinesia/dystonia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.3935|    0.3412|   -1.1533|  0.2488|       |
|glm_binomial |Model1     |PM10_24h_M0 |  -0.0019|    0.0078|   -0.2410|  0.8096|       |
|glm_binomial |Model2     |(Intercept) |  -0.4094|    0.3241|   -1.2633|  0.2065|       |
|glm_binomial |Model2     |PM10_24h_M1 |  -0.0015|    0.0073|   -0.2030|  0.8391|       |
|glm_binomial |Model3     |(Intercept) |  -0.3478|    0.3233|   -1.0760|  0.2819|       |
|glm_binomial |Model3     |PM10_24h_M2 |  -0.0029|    0.0072|   -0.4068|  0.6842|       |
|glm_binomial |Model4     |(Intercept) |  -0.1949|    0.3158|   -0.6170|  0.5373|       |
|glm_binomial |Model4     |PM10_24h_M3 |  -0.0064|    0.0069|   -0.9341|  0.3503|       |
|glm_binomial |Model5     |(Intercept) |  -0.3881|    0.3585|   -1.0825|  0.2790|       |
|glm_binomial |Model5     |PM10_24h_M0 |  -0.0015|    0.0109|   -0.1388|  0.8896|       |
|glm_binomial |Model5     |PM10_24h_M1 |  -0.0005|    0.0102|   -0.0488|  0.9611|       |
|glm_binomial |Model6     |(Intercept) |  -0.3474|    0.3737|   -0.9296|  0.3526|       |
|glm_binomial |Model6     |PM10_24h_M0 |  -0.0014|    0.0109|   -0.1285|  0.8978|       |
|glm_binomial |Model6     |PM10_24h_M1 |   0.0028|    0.0134|    0.2129|  0.8314|       |
|glm_binomial |Model6     |PM10_24h_M2 |  -0.0044|    0.0112|   -0.3882|  0.6979|       |
|glm_binomial |Model7     |(Intercept) |  -0.1890|    0.4051|   -0.4666|  0.6408|       |
|glm_binomial |Model7     |PM10_24h_M0 |  -0.0047|    0.0114|   -0.4102|  0.6816|       |
|glm_binomial |Model7     |PM10_24h_M1 |   0.0054|    0.0136|    0.3948|  0.6930|       |
|glm_binomial |Model7     |PM10_24h_M2 |   0.0033|    0.0136|    0.2422|  0.8087|       |
|glm_binomial |Model7     |PM10_24h_M3 |  -0.0105|    0.0104|   -1.0067|  0.3141|       |

---

### 污染物: PM2.5 Table: 模型汇总: PM2.5 对 Dyskinesia/dystonia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.3674|    0.2989|   -1.2293|  0.2190|       |
|glm_binomial |Model1     |PM2.5_M0    |  -0.0043|    0.0115|   -0.3746|  0.7080|       |
|glm_binomial |Model2     |(Intercept) |  -0.3638|    0.2873|   -1.2665|  0.2054|       |
|glm_binomial |Model2     |PM2.5_M1    |  -0.0044|    0.0108|   -0.4063|  0.6845|       |
|glm_binomial |Model3     |(Intercept) |  -0.3824|    0.2735|   -1.3983|  0.1620|       |
|glm_binomial |Model3     |PM2.5_M2    |  -0.0035|    0.0099|   -0.3562|  0.7217|       |
|glm_binomial |Model4     |(Intercept) |  -0.3144|    0.2690|   -1.1686|  0.2426|       |
|glm_binomial |Model4     |PM2.5_M3    |  -0.0061|    0.0096|   -0.6413|  0.5213|       |
|glm_binomial |Model5     |(Intercept) |  -0.3509|    0.3112|   -1.1275|  0.2595|       |
|glm_binomial |Model5     |PM2.5_M0    |  -0.0019|    0.0173|   -0.1080|  0.9140|       |
|glm_binomial |Model5     |PM2.5_M1    |  -0.0031|    0.0161|   -0.1910|  0.8485|       |
|glm_binomial |Model6     |(Intercept) |  -0.3466|    0.3203|   -1.0824|  0.2791|       |
|glm_binomial |Model6     |PM2.5_M0    |  -0.0020|    0.0175|   -0.1160|  0.9077|       |
|glm_binomial |Model6     |PM2.5_M1    |  -0.0021|    0.0243|   -0.0853|  0.9320|       |
|glm_binomial |Model6     |PM2.5_M2    |  -0.0010|    0.0178|   -0.0558|  0.9555|       |
|glm_binomial |Model7     |(Intercept) |  -0.2561|    0.3466|   -0.7389|  0.4600|       |
|glm_binomial |Model7     |PM2.5_M0    |  -0.0065|    0.0187|   -0.3456|  0.7296|       |
|glm_binomial |Model7     |PM2.5_M1    |   0.0013|    0.0248|    0.0505|  0.9597|       |
|glm_binomial |Model7     |PM2.5_M2    |   0.0082|    0.0224|    0.3686|  0.7124|       |
|glm_binomial |Model7     |PM2.5_M3    |  -0.0117|    0.0171|   -0.6832|  0.4945|       |

---

### 污染物: PM2.5_24h Table: 模型汇总: PM2.5_24h 对 Dyskinesia/dystonia 的影响

|model_type   |model_name |term         | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:------------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept)  |  -0.3787|    0.2984|   -1.2690|  0.2044|       |
|glm_binomial |Model1     |PM2.5_24h_M0 |  -0.0039|    0.0115|   -0.3344|  0.7380|       |
|glm_binomial |Model2     |(Intercept)  |  -0.3467|    0.2868|   -1.2087|  0.2268|       |
|glm_binomial |Model2     |PM2.5_24h_M1 |  -0.0051|    0.0108|   -0.4719|  0.6370|       |
|glm_binomial |Model3     |(Intercept)  |  -0.3896|    0.2733|   -1.4258|  0.1539|       |
|glm_binomial |Model3     |PM2.5_24h_M2 |  -0.0032|    0.0099|   -0.3276|  0.7432|       |
|glm_binomial |Model4     |(Intercept)  |  -0.3069|    0.2690|   -1.1411|  0.2538|       |
|glm_binomial |Model4     |PM2.5_24h_M3 |  -0.0064|    0.0096|   -0.6719|  0.5016|       |
|glm_binomial |Model5     |(Intercept)  |  -0.3495|    0.3108|   -1.1245|  0.2608|       |
|glm_binomial |Model5     |PM2.5_24h_M0 |   0.0004|    0.0172|    0.0241|  0.9808|       |
|glm_binomial |Model5     |PM2.5_24h_M1 |  -0.0054|    0.0161|   -0.3341|  0.7383|       |
|glm_binomial |Model6     |(Intercept)  |  -0.3585|    0.3200|   -1.1201|  0.2627|       |
|glm_binomial |Model6     |PM2.5_24h_M0 |   0.0008|    0.0174|    0.0439|  0.9650|       |
|glm_binomial |Model6     |PM2.5_24h_M1 |  -0.0075|    0.0242|   -0.3094|  0.7570|       |
|glm_binomial |Model6     |PM2.5_24h_M2 |   0.0021|    0.0178|    0.1172|  0.9067|       |
|glm_binomial |Model7     |(Intercept)  |  -0.2649|    0.3462|   -0.7651|  0.4442|       |
|glm_binomial |Model7     |PM2.5_24h_M0 |  -0.0038|    0.0186|   -0.2029|  0.8392|       |
|glm_binomial |Model7     |PM2.5_24h_M1 |  -0.0038|    0.0248|   -0.1527|  0.8786|       |
|glm_binomial |Model7     |PM2.5_24h_M2 |   0.0112|    0.0219|    0.5087|  0.6109|       |
|glm_binomial |Model7     |PM2.5_24h_M3 |  -0.0119|    0.0168|   -0.7080|  0.4789|       |

---

### 污染物: SO2 Table: 模型汇总: SO2 对 Dyskinesia/dystonia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.3935|    0.3412|   -1.1533|  0.2488|       |
|glm_binomial |Model1     |SO2_M0      |  -0.0019|    0.0078|   -0.2410|  0.8096|       |
|glm_binomial |Model2     |(Intercept) |  -0.4094|    0.3241|   -1.2633|  0.2065|       |
|glm_binomial |Model2     |SO2_M1      |  -0.0015|    0.0073|   -0.2030|  0.8391|       |
|glm_binomial |Model3     |(Intercept) |  -0.3478|    0.3233|   -1.0760|  0.2819|       |
|glm_binomial |Model3     |SO2_M2      |  -0.0029|    0.0072|   -0.4068|  0.6842|       |
|glm_binomial |Model4     |(Intercept) |  -0.1949|    0.3158|   -0.6170|  0.5373|       |
|glm_binomial |Model4     |SO2_M3      |  -0.0064|    0.0069|   -0.9341|  0.3503|       |
|glm_binomial |Model5     |(Intercept) |  -0.3881|    0.3585|   -1.0825|  0.2790|       |
|glm_binomial |Model5     |SO2_M0      |  -0.0015|    0.0109|   -0.1388|  0.8896|       |
|glm_binomial |Model5     |SO2_M1      |  -0.0005|    0.0102|   -0.0488|  0.9611|       |
|glm_binomial |Model6     |(Intercept) |  -0.3474|    0.3737|   -0.9296|  0.3526|       |
|glm_binomial |Model6     |SO2_M0      |  -0.0014|    0.0109|   -0.1285|  0.8978|       |
|glm_binomial |Model6     |SO2_M1      |   0.0028|    0.0134|    0.2129|  0.8314|       |
|glm_binomial |Model6     |SO2_M2      |  -0.0044|    0.0112|   -0.3882|  0.6979|       |
|glm_binomial |Model7     |(Intercept) |  -0.1890|    0.4051|   -0.4666|  0.6408|       |
|glm_binomial |Model7     |SO2_M0      |  -0.0047|    0.0114|   -0.4102|  0.6816|       |
|glm_binomial |Model7     |SO2_M1      |   0.0054|    0.0136|    0.3948|  0.6930|       |
|glm_binomial |Model7     |SO2_M2      |   0.0033|    0.0136|    0.2422|  0.8087|       |
|glm_binomial |Model7     |SO2_M3      |  -0.0105|    0.0104|   -1.0067|  0.3141|       |

---

### 污染物: SO2_24h Table: 模型汇总: SO2_24h 对 Dyskinesia/dystonia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -0.7612|    0.3115|   -2.4435|  0.0145|*      |
|glm_binomial |Model1     |SO2_24h_M0  |   0.0343|    0.0341|    1.0058|  0.3145|       |
|glm_binomial |Model2     |(Intercept) |  -0.6537|    0.3213|   -2.0348|  0.0419|*      |
|glm_binomial |Model2     |SO2_24h_M1  |   0.0216|    0.0353|    0.6106|  0.5414|       |
|glm_binomial |Model3     |(Intercept) |  -0.5453|    0.3109|   -1.7539|  0.0794|.      |
|glm_binomial |Model3     |SO2_24h_M2  |   0.0087|    0.0337|    0.2575|  0.7968|       |
|glm_binomial |Model4     |(Intercept) |  -0.3927|    0.2989|   -1.3139|  0.1889|       |
|glm_binomial |Model4     |SO2_24h_M3  |  -0.0090|    0.0319|   -0.2835|  0.7768|       |
|glm_binomial |Model5     |(Intercept) |  -0.7088|    0.3281|   -2.1601|  0.0308|*      |
|glm_binomial |Model5     |SO2_24h_M0  |   0.0648|    0.0683|    0.9501|  0.3421|       |
|glm_binomial |Model5     |SO2_24h_M1  |  -0.0368|    0.0710|   -0.5181|  0.6044|       |
|glm_binomial |Model6     |(Intercept) |  -0.6759|    0.3361|   -2.0112|  0.0443|*      |
|glm_binomial |Model6     |SO2_24h_M0  |   0.0650|    0.0681|    0.9534|  0.3404|       |
|glm_binomial |Model6     |SO2_24h_M1  |  -0.0138|    0.0878|   -0.1572|  0.8751|       |
|glm_binomial |Model6     |SO2_24h_M2  |  -0.0267|    0.0605|   -0.4410|  0.6592|       |
|glm_binomial |Model7     |(Intercept) |  -0.6194|    0.3453|   -1.7937|  0.0729|.      |
|glm_binomial |Model7     |SO2_24h_M0  |   0.0587|    0.0689|    0.8517|  0.3944|       |
|glm_binomial |Model7     |SO2_24h_M1  |  -0.0095|    0.0885|   -0.1076|  0.9143|       |
|glm_binomial |Model7     |SO2_24h_M2  |   0.0128|    0.0804|    0.1595|  0.8733|       |
|glm_binomial |Model7     |SO2_24h_M3  |  -0.0436|    0.0580|   -0.7520|  0.4521|       |

---


## 分析症状: Gait instability and ataxia

---

### 污染物: AQI Table: 模型汇总: AQI 对 Gait instability and ataxia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -2.0070|    0.7582|   -2.6470|  0.0081|**     |
|glm_binomial |Model1     |AQI_M0      |  -0.0134|    0.0180|   -0.7429|  0.4575|       |
|glm_binomial |Model2     |(Intercept) |  -3.3497|    0.7444|   -4.4997|  0.0000|***    |
|glm_binomial |Model2     |AQI_M1      |   0.0180|    0.0157|    1.1470|  0.2514|       |
|glm_binomial |Model3     |(Intercept) |  -2.6235|    0.7022|   -3.7362|  0.0002|***    |
|glm_binomial |Model3     |AQI_M2      |   0.0015|    0.0153|    0.0980|  0.9220|       |
|glm_binomial |Model4     |(Intercept) |  -3.3082|    0.7033|   -4.7040|  0.0000|***    |
|glm_binomial |Model4     |AQI_M3      |   0.0165|    0.0142|    1.1601|  0.2460|       |
|glm_binomial |Model5     |(Intercept) |  -2.5765|    0.8138|   -3.1661|  0.0015|**     |
|glm_binomial |Model5     |AQI_M0      |  -0.0520|    0.0250|   -2.0794|  0.0376|*      |
|glm_binomial |Model5     |AQI_M1      |   0.0494|    0.0209|    2.3583|  0.0184|*      |
|glm_binomial |Model6     |(Intercept) |  -2.2554|    0.8521|   -2.6467|  0.0081|**     |
|glm_binomial |Model6     |AQI_M0      |  -0.0553|    0.0253|   -2.1845|  0.0289|*      |
|glm_binomial |Model6     |AQI_M1      |   0.0836|    0.0316|    2.6420|  0.0082|**     |
|glm_binomial |Model6     |AQI_M2      |  -0.0388|    0.0267|   -1.4522|  0.1464|       |
|glm_binomial |Model7     |(Intercept) |  -2.5649|    0.9444|   -2.7159|  0.0066|**     |
|glm_binomial |Model7     |AQI_M0      |  -0.0485|    0.0267|   -1.8154|  0.0695|.      |
|glm_binomial |Model7     |AQI_M1      |   0.0760|    0.0326|    2.3340|  0.0196|*      |
|glm_binomial |Model7     |AQI_M2      |  -0.0496|    0.0298|   -1.6672|  0.0955|.      |
|glm_binomial |Model7     |AQI_M3      |   0.0183|    0.0226|    0.8111|  0.4173|       |

---

### 污染物: CO Table: 模型汇总: CO 对 Gait instability and ataxia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -2.1802|    1.0592|   -2.0583|  0.0396|*      |
|glm_binomial |Model1     |CO_M0       |  -0.5383|    1.4869|   -0.3620|  0.7173|       |
|glm_binomial |Model2     |(Intercept) |  -2.6627|    0.9340|   -2.8507|  0.0044|**     |
|glm_binomial |Model2     |CO_M1       |   0.1456|    1.2633|    0.1153|  0.9082|       |
|glm_binomial |Model3     |(Intercept) |  -3.1115|    0.8891|   -3.4996|  0.0005|***    |
|glm_binomial |Model3     |CO_M2       |   0.7576|    1.1641|    0.6508|  0.5152|       |
|glm_binomial |Model4     |(Intercept) |  -3.4244|    0.8638|   -3.9644|  0.0001|***    |
|glm_binomial |Model4     |CO_M3       |   1.1661|    1.0997|    1.0604|  0.2890|       |
|glm_binomial |Model5     |(Intercept) |  -2.2679|    1.0570|   -2.1455|  0.0319|*      |
|glm_binomial |Model5     |CO_M0       |  -1.8747|    2.4509|   -0.7649|  0.4443|       |
|glm_binomial |Model5     |CO_M1       |   1.4309|    2.0069|    0.7130|  0.4758|       |
|glm_binomial |Model6     |(Intercept) |  -2.4414|    1.0825|   -2.2553|  0.0241|*      |
|glm_binomial |Model6     |CO_M0       |  -2.2147|    2.5409|   -0.8716|  0.3834|       |
|glm_binomial |Model6     |CO_M1       |  -0.1929|    2.5840|   -0.0747|  0.9405|       |
|glm_binomial |Model6     |CO_M2       |   2.1601|    2.0012|    1.0794|  0.2804|       |
|glm_binomial |Model7     |(Intercept) |  -2.6340|    1.1053|   -2.3832|  0.0172|*      |
|glm_binomial |Model7     |CO_M0       |  -2.0196|    2.5514|   -0.7916|  0.4286|       |
|glm_binomial |Model7     |CO_M1       |  -0.2488|    2.6195|   -0.0950|  0.9243|       |
|glm_binomial |Model7     |CO_M2       |   0.1372|    3.0107|    0.0456|  0.9637|       |
|glm_binomial |Model7     |CO_M3       |   2.1176|    2.3683|    0.8941|  0.3712|       |

---

### 污染物: CO_24h Table: 模型汇总: CO_24h 对 Gait instability and ataxia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -2.1938|    1.0550|   -2.0795|  0.0376|*      |
|glm_binomial |Model1     |CO_24h_M0   |  -0.5188|    1.4803|   -0.3505|  0.7260|       |
|glm_binomial |Model2     |(Intercept) |  -2.6646|    0.9316|   -2.8602|  0.0042|**     |
|glm_binomial |Model2     |CO_24h_M1   |   0.1484|    1.2607|    0.1177|  0.9063|       |
|glm_binomial |Model3     |(Intercept) |  -3.1197|    0.8894|   -3.5075|  0.0005|***    |
|glm_binomial |Model3     |CO_24h_M2   |   0.7688|    1.1643|    0.6604|  0.5090|       |
|glm_binomial |Model4     |(Intercept) |  -3.4004|    0.8678|   -3.9183|  0.0001|***    |
|glm_binomial |Model4     |CO_24h_M3   |   1.1359|    1.1080|    1.0252|  0.3053|       |
|glm_binomial |Model5     |(Intercept) |  -2.2821|    1.0540|   -2.1653|  0.0304|*      |
|glm_binomial |Model5     |CO_24h_M0   |  -1.8180|    2.4358|   -0.7464|  0.4555|       |
|glm_binomial |Model5     |CO_24h_M1   |   1.3965|    2.0037|    0.6969|  0.4859|       |
|glm_binomial |Model6     |(Intercept) |  -2.4596|    1.0800|   -2.2775|  0.0228|*      |
|glm_binomial |Model6     |CO_24h_M0   |  -2.1705|    2.5339|   -0.8566|  0.3917|       |
|glm_binomial |Model6     |CO_24h_M1   |  -0.2333|    2.5768|   -0.0905|  0.9279|       |
|glm_binomial |Model6     |CO_24h_M2   |   2.1820|    2.0022|    1.0898|  0.2758|       |
|glm_binomial |Model7     |(Intercept) |  -2.6428|    1.1043|   -2.3933|  0.0167|*      |
|glm_binomial |Model7     |CO_24h_M0   |  -1.9605|    2.5375|   -0.7726|  0.4398|       |
|glm_binomial |Model7     |CO_24h_M1   |  -0.3388|    2.6120|   -0.1297|  0.8968|       |
|glm_binomial |Model7     |CO_24h_M2   |   0.4227|    2.9577|    0.1429|  0.8864|       |
|glm_binomial |Model7     |CO_24h_M3   |   1.8832|    2.3420|    0.8041|  0.4213|       |

---

### 污染物: NO2 Table: 模型汇总: NO2 对 Gait instability and ataxia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -2.5306|    0.5064|   -4.9972|  0.0000|***    |
|glm_binomial |Model1     |NO2_M0      |  -0.0012|    0.0195|   -0.0603|  0.9519|       |
|glm_binomial |Model2     |(Intercept) |  -3.1678|    0.4999|   -6.3368|  0.0000|***    |
|glm_binomial |Model2     |NO2_M1      |   0.0242|    0.0168|    1.4396|  0.1500|       |
|glm_binomial |Model3     |(Intercept) |  -2.7707|    0.4838|   -5.7272|  0.0000|***    |
|glm_binomial |Model3     |NO2_M2      |   0.0086|    0.0171|    0.5023|  0.6154|       |
|glm_binomial |Model4     |(Intercept) |  -2.9778|    0.4788|   -6.2194|  0.0000|***    |
|glm_binomial |Model4     |NO2_M3      |   0.0162|    0.0158|    1.0296|  0.3032|       |
|glm_binomial |Model5     |(Intercept) |  -2.7359|    0.5352|   -5.1118|  0.0000|***    |
|glm_binomial |Model5     |NO2_M0      |  -0.0726|    0.0359|   -2.0183|  0.0436|*      |
|glm_binomial |Model5     |NO2_M1      |   0.0751|    0.0289|    2.5972|  0.0094|**     |
|glm_binomial |Model6     |(Intercept) |  -2.5875|    0.5556|   -4.6569|  0.0000|***    |
|glm_binomial |Model6     |NO2_M0      |  -0.0719|    0.0365|   -1.9705|  0.0488|*      |
|glm_binomial |Model6     |NO2_M1      |   0.1001|    0.0402|    2.4888|  0.0128|*      |
|glm_binomial |Model6     |NO2_M2      |  -0.0322|    0.0348|   -0.9248|  0.3551|       |
|glm_binomial |Model7     |(Intercept) |  -2.6515|    0.5742|   -4.6180|  0.0000|***    |
|glm_binomial |Model7     |NO2_M0      |  -0.0710|    0.0364|   -1.9479|  0.0514|.      |
|glm_binomial |Model7     |NO2_M1      |   0.0944|    0.0414|    2.2827|  0.0224|*      |
|glm_binomial |Model7     |NO2_M2      |  -0.0368|    0.0356|   -1.0345|  0.3009|       |
|glm_binomial |Model7     |NO2_M3      |   0.0118|    0.0249|    0.4717|  0.6372|       |

---

### 污染物: NO2_24h Table: 模型汇总: NO2_24h 对 Gait instability and ataxia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -2.5556|    0.5068|   -5.0427|  0.0000|***    |
|glm_binomial |Model1     |NO2_24h_M0  |  -0.0001|    0.0194|   -0.0057|  0.9954|       |
|glm_binomial |Model2     |(Intercept) |  -3.1706|    0.5005|   -6.3351|  0.0000|***    |
|glm_binomial |Model2     |NO2_24h_M1  |   0.0244|    0.0169|    1.4444|  0.1486|       |
|glm_binomial |Model3     |(Intercept) |  -2.7632|    0.4838|   -5.7113|  0.0000|***    |
|glm_binomial |Model3     |NO2_24h_M2  |   0.0083|    0.0171|    0.4841|  0.6283|       |
|glm_binomial |Model4     |(Intercept) |  -2.9862|    0.4789|   -6.2354|  0.0000|***    |
|glm_binomial |Model4     |NO2_24h_M3  |   0.0166|    0.0158|    1.0509|  0.2933|       |
|glm_binomial |Model5     |(Intercept) |  -2.7649|    0.5348|   -5.1702|  0.0000|***    |
|glm_binomial |Model5     |NO2_24h_M0  |  -0.0686|    0.0354|   -1.9378|  0.0526|.      |
|glm_binomial |Model5     |NO2_24h_M1  |   0.0727|    0.0288|    2.5249|  0.0116|*      |
|glm_binomial |Model6     |(Intercept) |  -2.6112|    0.5543|   -4.7108|  0.0000|***    |
|glm_binomial |Model6     |NO2_24h_M0  |  -0.0677|    0.0359|   -1.8883|  0.0590|.      |
|glm_binomial |Model6     |NO2_24h_M1  |   0.0987|    0.0399|    2.4699|  0.0135|*      |
|glm_binomial |Model6     |NO2_24h_M2  |  -0.0336|    0.0346|   -0.9695|  0.3323|       |
|glm_binomial |Model7     |(Intercept) |  -2.6731|    0.5731|   -4.6646|  0.0000|***    |
|glm_binomial |Model7     |NO2_24h_M0  |  -0.0665|    0.0359|   -1.8540|  0.0637|.      |
|glm_binomial |Model7     |NO2_24h_M1  |   0.0926|    0.0414|    2.2346|  0.0254|*      |
|glm_binomial |Model7     |NO2_24h_M2  |  -0.0378|    0.0353|   -1.0712|  0.2841|       |
|glm_binomial |Model7     |NO2_24h_M3  |   0.0113|    0.0249|    0.4538|  0.6500|       |

---

### 污染物: O3 Table: 模型汇总: O3 对 Gait instability and ataxia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -2.5787|    0.8512|   -3.0294|  0.0025|**     |
|glm_binomial |Model1     |O3_M0       |   0.0004|    0.0142|    0.0248|  0.9802|       |
|glm_binomial |Model2     |(Intercept) |  -2.7321|    0.9354|   -2.9208|  0.0035|**     |
|glm_binomial |Model2     |O3_M1       |   0.0030|    0.0157|    0.1919|  0.8478|       |
|glm_binomial |Model3     |(Intercept) |  -1.4736|    0.8915|   -1.6529|  0.0984|.      |
|glm_binomial |Model3     |O3_M2       |  -0.0191|    0.0157|   -1.2180|  0.2232|       |
|glm_binomial |Model4     |(Intercept) |  -3.0120|    0.8441|   -3.5682|  0.0004|***    |
|glm_binomial |Model4     |O3_M3       |   0.0079|    0.0140|    0.5637|  0.5729|       |
|glm_binomial |Model5     |(Intercept) |  -2.6968|    1.0260|   -2.6284|  0.0086|**     |
|glm_binomial |Model5     |O3_M0       |  -0.0014|    0.0165|   -0.0838|  0.9332|       |
|glm_binomial |Model5     |O3_M1       |   0.0038|    0.0182|    0.2082|  0.8351|       |
|glm_binomial |Model6     |(Intercept) |  -1.8928|    1.1441|   -1.6544|  0.0980|.      |
|glm_binomial |Model6     |O3_M0       |  -0.0025|    0.0168|   -0.1487|  0.8818|       |
|glm_binomial |Model6     |O3_M1       |   0.0172|    0.0201|    0.8557|  0.3922|       |
|glm_binomial |Model6     |O3_M2       |  -0.0267|    0.0182|   -1.4660|  0.1426|       |
|glm_binomial |Model7     |(Intercept) |  -2.6566|    1.3078|   -2.0314|  0.0422|*      |
|glm_binomial |Model7     |O3_M0       |   0.0000|    0.0177|    0.0006|  0.9995|       |
|glm_binomial |Model7     |O3_M1       |   0.0170|    0.0202|    0.8399|  0.4010|       |
|glm_binomial |Model7     |O3_M2       |  -0.0377|    0.0198|   -1.8987|  0.0576|.      |
|glm_binomial |Model7     |O3_M3       |   0.0218|    0.0158|    1.3824|  0.1669|       |

---

### 污染物: PM10 Table: 模型汇总: PM10 对 Gait instability and ataxia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -2.1284|    0.6419|   -3.3156|  0.0009|***    |
|glm_binomial |Model1     |PM10_M0     |  -0.0107|    0.0154|   -0.6947|  0.4873|       |
|glm_binomial |Model2     |(Intercept) |  -3.4002|    0.6300|   -5.3970|  0.0000|***    |
|glm_binomial |Model2     |PM10_M1     |   0.0193|    0.0129|    1.4945|  0.1350|       |
|glm_binomial |Model3     |(Intercept) |  -2.6312|    0.6126|   -4.2955|  0.0000|***    |
|glm_binomial |Model3     |PM10_M2     |   0.0017|    0.0134|    0.1280|  0.8982|       |
|glm_binomial |Model4     |(Intercept) |  -3.1253|    0.6125|   -5.1027|  0.0000|***    |
|glm_binomial |Model4     |PM10_M3     |   0.0126|    0.0123|    1.0253|  0.3052|       |
|glm_binomial |Model5     |(Intercept) |  -2.6216|    0.6924|   -3.7863|  0.0002|***    |
|glm_binomial |Model5     |PM10_M0     |  -0.0488|    0.0220|   -2.2175|  0.0266|*      |
|glm_binomial |Model5     |PM10_M1     |   0.0465|    0.0169|    2.7539|  0.0059|**     |
|glm_binomial |Model6     |(Intercept) |  -2.2156|    0.7457|   -2.9712|  0.0030|**     |
|glm_binomial |Model6     |PM10_M0     |  -0.0494|    0.0223|   -2.2097|  0.0271|*      |
|glm_binomial |Model6     |PM10_M1     |   0.0739|    0.0248|    2.9831|  0.0029|**     |
|glm_binomial |Model6     |PM10_M2     |  -0.0372|    0.0244|   -1.5245|  0.1274|       |
|glm_binomial |Model7     |(Intercept) |  -2.4119|    0.8290|   -2.9094|  0.0036|**     |
|glm_binomial |Model7     |PM10_M0     |  -0.0457|    0.0232|   -1.9672|  0.0492|*      |
|glm_binomial |Model7     |PM10_M1     |   0.0706|    0.0252|    2.8017|  0.0051|**     |
|glm_binomial |Model7     |PM10_M2     |  -0.0439|    0.0270|   -1.6268|  0.1038|       |
|glm_binomial |Model7     |PM10_M3     |   0.0107|    0.0189|    0.5694|  0.5691|       |

---

### 污染物: PM10_24h Table: 模型汇总: PM10_24h 对 Gait instability and ataxia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -2.1414|    0.6382|   -3.3551|  0.0008|***    |
|glm_binomial |Model1     |PM10_24h_M0 |  -0.0104|    0.0153|   -0.6785|  0.4975|       |
|glm_binomial |Model2     |(Intercept) |  -3.4122|    0.6265|   -5.4467|  0.0000|***    |
|glm_binomial |Model2     |PM10_24h_M1 |   0.0196|    0.0128|    1.5277|  0.1266|       |
|glm_binomial |Model3     |(Intercept) |  -2.6023|    0.6086|   -4.2757|  0.0000|***    |
|glm_binomial |Model3     |PM10_24h_M2 |   0.0010|    0.0134|    0.0776|  0.9381|       |
|glm_binomial |Model4     |(Intercept) |  -3.1146|    0.6094|   -5.1107|  0.0000|***    |
|glm_binomial |Model4     |PM10_24h_M3 |   0.0125|    0.0123|    1.0115|  0.3118|       |
|glm_binomial |Model5     |(Intercept) |  -2.6383|    0.6894|   -3.8268|  0.0001|***    |
|glm_binomial |Model5     |PM10_24h_M0 |  -0.0484|    0.0219|   -2.2118|  0.0270|*      |
|glm_binomial |Model5     |PM10_24h_M1 |   0.0465|    0.0168|    2.7700|  0.0056|**     |
|glm_binomial |Model6     |(Intercept) |  -2.1902|    0.7452|   -2.9391|  0.0033|**     |
|glm_binomial |Model6     |PM10_24h_M0 |  -0.0492|    0.0223|   -2.2080|  0.0272|*      |
|glm_binomial |Model6     |PM10_24h_M1 |   0.0765|    0.0249|    3.0716|  0.0021|**     |
|glm_binomial |Model6     |PM10_24h_M2 |  -0.0407|    0.0247|   -1.6452|  0.0999|.      |
|glm_binomial |Model7     |(Intercept) |  -2.3849|    0.8294|   -2.8753|  0.0040|**     |
|glm_binomial |Model7     |PM10_24h_M0 |  -0.0456|    0.0232|   -1.9660|  0.0493|*      |
|glm_binomial |Model7     |PM10_24h_M1 |   0.0731|    0.0254|    2.8779|  0.0040|**     |
|glm_binomial |Model7     |PM10_24h_M2 |  -0.0471|    0.0271|   -1.7361|  0.0826|.      |
|glm_binomial |Model7     |PM10_24h_M3 |   0.0105|    0.0187|    0.5597|  0.5757|       |

---

### 污染物: PM2.5 Table: 模型汇总: PM2.5 对 Gait instability and ataxia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -2.0529|    0.5559|   -3.6928|  0.0002|***    |
|glm_binomial |Model1     |PM2.5_M0    |  -0.0219|    0.0230|   -0.9499|  0.3422|       |
|glm_binomial |Model2     |(Intercept) |  -2.9776|    0.5535|   -5.3795|  0.0000|***    |
|glm_binomial |Model2     |PM2.5_M1    |   0.0165|    0.0194|    0.8509|  0.3948|       |
|glm_binomial |Model3     |(Intercept) |  -2.6736|    0.5156|   -5.1857|  0.0000|***    |
|glm_binomial |Model3     |PM2.5_M2    |   0.0045|    0.0182|    0.2492|  0.8032|       |
|glm_binomial |Model4     |(Intercept) |  -3.0077|    0.5205|   -5.7788|  0.0000|***    |
|glm_binomial |Model4     |PM2.5_M3    |   0.0168|    0.0170|    0.9895|  0.3224|       |
|glm_binomial |Model5     |(Intercept) |  -2.4092|    0.5957|   -4.0443|  0.0001|***    |
|glm_binomial |Model5     |PM2.5_M0    |  -0.0762|    0.0342|   -2.2304|  0.0257|*      |
|glm_binomial |Model5     |PM2.5_M1    |   0.0637|    0.0271|    2.3470|  0.0189|*      |
|glm_binomial |Model6     |(Intercept) |  -2.2259|    0.6155|   -3.6164|  0.0003|***    |
|glm_binomial |Model6     |PM2.5_M0    |  -0.0848|    0.0351|   -2.4160|  0.0157|*      |
|glm_binomial |Model6     |PM2.5_M1    |   0.1090|    0.0454|    2.4006|  0.0164|*      |
|glm_binomial |Model6     |PM2.5_M2    |  -0.0446|    0.0360|   -1.2390|  0.2153|       |
|glm_binomial |Model7     |(Intercept) |  -2.3474|    0.6777|   -3.4636|  0.0005|***    |
|glm_binomial |Model7     |PM2.5_M0    |  -0.0793|    0.0372|   -2.1297|  0.0332|*      |
|glm_binomial |Model7     |PM2.5_M1    |   0.1039|    0.0466|    2.2280|  0.0259|*      |
|glm_binomial |Model7     |PM2.5_M2    |  -0.0538|    0.0415|   -1.2951|  0.1953|       |
|glm_binomial |Model7     |PM2.5_M3    |   0.0134|    0.0302|    0.4428|  0.6579|       |

---

### 污染物: PM2.5_24h Table: 模型汇总: PM2.5_24h 对 Gait instability and ataxia 的影响

|model_type   |model_name |term         | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:------------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept)  |  -2.0505|    0.5555|   -3.6915|  0.0002|***    |
|glm_binomial |Model1     |PM2.5_24h_M0 |  -0.0220|    0.0230|   -0.9551|  0.3395|       |
|glm_binomial |Model2     |(Intercept)  |  -2.9985|    0.5535|   -5.4175|  0.0000|***    |
|glm_binomial |Model2     |PM2.5_24h_M1 |   0.0173|    0.0194|    0.8947|  0.3710|       |
|glm_binomial |Model3     |(Intercept)  |  -2.6442|    0.5150|   -5.1343|  0.0000|***    |
|glm_binomial |Model3     |PM2.5_24h_M2 |   0.0034|    0.0183|    0.1854|  0.8529|       |
|glm_binomial |Model4     |(Intercept)  |  -3.0014|    0.5200|   -5.7716|  0.0000|***    |
|glm_binomial |Model4     |PM2.5_24h_M3 |   0.0166|    0.0170|    0.9762|  0.3290|       |
|glm_binomial |Model5     |(Intercept)  |  -2.4147|    0.5968|   -4.0461|  0.0001|***    |
|glm_binomial |Model5     |PM2.5_24h_M0 |  -0.0770|    0.0340|   -2.2636|  0.0236|*      |
|glm_binomial |Model5     |PM2.5_24h_M1 |   0.0645|    0.0268|    2.4042|  0.0162|*      |
|glm_binomial |Model6     |(Intercept)  |  -2.1963|    0.6184|   -3.5516|  0.0004|***    |
|glm_binomial |Model6     |PM2.5_24h_M0 |  -0.0869|    0.0349|   -2.4886|  0.0128|*      |
|glm_binomial |Model6     |PM2.5_24h_M1 |   0.1176|    0.0459|    2.5622|  0.0104|*      |
|glm_binomial |Model6     |PM2.5_24h_M2 |  -0.0528|    0.0371|   -1.4218|  0.1551|       |
|glm_binomial |Model7     |(Intercept)  |  -2.3138|    0.6804|   -3.4007|  0.0007|***    |
|glm_binomial |Model7     |PM2.5_24h_M0 |  -0.0816|    0.0370|   -2.2038|  0.0275|*      |
|glm_binomial |Model7     |PM2.5_24h_M1 |   0.1125|    0.0473|    2.3785|  0.0174|*      |
|glm_binomial |Model7     |PM2.5_24h_M2 |  -0.0610|    0.0418|   -1.4593|  0.1445|       |
|glm_binomial |Model7     |PM2.5_24h_M3 |   0.0126|    0.0295|    0.4272|  0.6692|       |

---

### 污染物: SO2 Table: 模型汇总: SO2 对 Gait instability and ataxia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -2.1414|    0.6382|   -3.3551|  0.0008|***    |
|glm_binomial |Model1     |SO2_M0      |  -0.0104|    0.0153|   -0.6785|  0.4975|       |
|glm_binomial |Model2     |(Intercept) |  -3.4122|    0.6265|   -5.4467|  0.0000|***    |
|glm_binomial |Model2     |SO2_M1      |   0.0196|    0.0128|    1.5277|  0.1266|       |
|glm_binomial |Model3     |(Intercept) |  -2.6023|    0.6086|   -4.2757|  0.0000|***    |
|glm_binomial |Model3     |SO2_M2      |   0.0010|    0.0134|    0.0776|  0.9381|       |
|glm_binomial |Model4     |(Intercept) |  -3.1146|    0.6094|   -5.1107|  0.0000|***    |
|glm_binomial |Model4     |SO2_M3      |   0.0125|    0.0123|    1.0115|  0.3118|       |
|glm_binomial |Model5     |(Intercept) |  -2.6383|    0.6894|   -3.8268|  0.0001|***    |
|glm_binomial |Model5     |SO2_M0      |  -0.0484|    0.0219|   -2.2118|  0.0270|*      |
|glm_binomial |Model5     |SO2_M1      |   0.0465|    0.0168|    2.7700|  0.0056|**     |
|glm_binomial |Model6     |(Intercept) |  -2.1902|    0.7452|   -2.9391|  0.0033|**     |
|glm_binomial |Model6     |SO2_M0      |  -0.0492|    0.0223|   -2.2080|  0.0272|*      |
|glm_binomial |Model6     |SO2_M1      |   0.0765|    0.0249|    3.0716|  0.0021|**     |
|glm_binomial |Model6     |SO2_M2      |  -0.0407|    0.0247|   -1.6452|  0.0999|.      |
|glm_binomial |Model7     |(Intercept) |  -2.3849|    0.8294|   -2.8753|  0.0040|**     |
|glm_binomial |Model7     |SO2_M0      |  -0.0456|    0.0232|   -1.9660|  0.0493|*      |
|glm_binomial |Model7     |SO2_M1      |   0.0731|    0.0254|    2.8779|  0.0040|**     |
|glm_binomial |Model7     |SO2_M2      |  -0.0471|    0.0271|   -1.7361|  0.0826|.      |
|glm_binomial |Model7     |SO2_M3      |   0.0105|    0.0187|    0.5597|  0.5757|       |

---

### 污染物: SO2_24h Table: 模型汇总: SO2_24h 对 Gait instability and ataxia 的影响

|model_type   |model_name |term        | estimate| std.error| statistic| p.value|signif |
|:------------|:----------|:-----------|--------:|---------:|---------:|-------:|:------|
|glm_binomial |Model1     |(Intercept) |  -1.5759|    0.6747|   -2.3356|  0.0195|*      |
|glm_binomial |Model1     |SO2_24h_M0  |  -0.1237|    0.0849|   -1.4570|  0.1451|       |
|glm_binomial |Model2     |(Intercept) |  -2.1865|    0.6241|   -3.5036|  0.0005|***    |
|glm_binomial |Model2     |SO2_24h_M1  |  -0.0450|    0.0725|   -0.6210|  0.5346|       |
|glm_binomial |Model3     |(Intercept) |  -1.8063|    0.6406|   -2.8198|  0.0048|**     |
|glm_binomial |Model3     |SO2_24h_M2  |  -0.0924|    0.0775|   -1.1923|  0.2332|       |
|glm_binomial |Model4     |(Intercept) |  -2.1554|    0.5931|   -3.6343|  0.0003|***    |
|glm_binomial |Model4     |SO2_24h_M3  |  -0.0478|    0.0674|   -0.7094|  0.4781|       |
|glm_binomial |Model5     |(Intercept) |  -1.7254|    0.6919|   -2.4936|  0.0126|*      |
|glm_binomial |Model5     |SO2_24h_M0  |  -0.3004|    0.1554|   -1.9322|  0.0533|.      |
|glm_binomial |Model5     |SO2_24h_M1  |   0.1882|    0.1303|    1.4443|  0.1487|       |
|glm_binomial |Model6     |(Intercept) |  -1.4489|    0.7303|   -1.9841|  0.0472|*      |
|glm_binomial |Model6     |SO2_24h_M0  |  -0.3019|    0.1541|   -1.9588|  0.0501|.      |
|glm_binomial |Model6     |SO2_24h_M1  |   0.3284|    0.1645|    1.9958|  0.0460|*      |
|glm_binomial |Model6     |SO2_24h_M2  |  -0.1741|    0.1351|   -1.2890|  0.1974|       |
|glm_binomial |Model7     |(Intercept) |  -1.4889|    0.7424|   -2.0056|  0.0449|*      |
|glm_binomial |Model7     |SO2_24h_M0  |  -0.2961|    0.1550|   -1.9101|  0.0561|.      |
|glm_binomial |Model7     |SO2_24h_M1  |   0.3198|    0.1665|    1.9203|  0.0548|.      |
|glm_binomial |Model7     |SO2_24h_M2  |  -0.2001|    0.1654|   -1.2097|  0.2264|       |
|glm_binomial |Model7     |SO2_24h_M3  |   0.0329|    0.1215|    0.2710|  0.7864|       |

---


## 分析症状: Brainstem dysfunction

---

### 污染物: AQI Table: 模型汇总: AQI 对 Brainstem dysfunction 的影响

|model_type |model_name |term           | estimate| std.error| statistic| p.value|signif |
|:----------|:----------|:--------------|--------:|---------:|---------:|-------:|:------|
|polr       |Model1     |AQI_M0         |  -0.0015|    0.0086|   -0.1746|  0.8615|       |
|polr       |Model1     |0&#124;1       |   0.0870|    0.3793|    0.2293|  0.8188|       |
|polr       |Model1     |1&#124;2       |   0.1121|    0.3794|    0.2956|  0.7677|       |
|polr       |Model1     |2&#124;3       |   1.8826|    0.3994|    4.7134|  0.0000|***    |
|polr       |Model1     |3&#124;1+2     |   1.8826|    0.3994|    4.7134|  0.0000|***    |
|polr       |Model1     |1+2&#124;1+3   |   2.0997|    0.4057|    5.1749|  0.0000|***    |
|polr       |Model1     |1+3&#124;2+3   |   2.0997|    0.4057|    5.1750|  0.0000|***    |
|polr       |Model1     |2+3&#124;1+2+3 |   5.0058|    0.7958|    6.2899|  0.0000|***    |
|polr       |Model2     |AQI_M1         |  -0.0003|    0.0080|   -0.0432|  0.9655|       |
|polr       |Model2     |0&#124;1       |   0.1357|    0.3581|    0.3789|  0.7050|       |
|polr       |Model2     |1&#124;2       |   0.1608|    0.3581|    0.4492|  0.6536|       |
|polr       |Model2     |2&#124;3       |   1.9312|    0.3805|    5.0757|  0.0000|***    |
|polr       |Model2     |3&#124;1+2     |   1.9312|    0.3805|    5.0757|  0.0000|***    |
|polr       |Model2     |1+2&#124;1+3   |   2.1483|    0.3873|    5.5475|  0.0000|***    |
|polr       |Model2     |1+3&#124;2+3   |   2.1483|    0.3873|    5.5476|  0.0000|***    |
|polr       |Model2     |2+3&#124;1+2+3 |   5.0537|    0.7864|    6.4262|  0.0000|***    |
|polr       |Model3     |AQI_M2         |  -0.0101|    0.0077|   -1.3197|  0.1879|       |
|polr       |Model3     |0&#124;1       |  -0.2903|    0.3507|   -0.8276|  0.4085|       |
|polr       |Model3     |1&#124;2       |  -0.2650|    0.3507|   -0.7556|  0.4505|       |
|polr       |Model3     |2&#124;3       |   1.5115|    0.3670|    4.1182|  0.0000|***    |
|polr       |Model3     |3&#124;1+2     |   1.5115|    0.3670|    4.1182|  0.0000|***    |
|polr       |Model3     |1+2&#124;1+3   |   1.7293|    0.3736|    4.6287|  0.0000|***    |
|polr       |Model3     |1+3&#124;2+3   |   1.7293|    0.3736|    4.6287|  0.0000|***    |
|polr       |Model3     |2+3&#124;1+2+3 |   4.6388|    0.7791|    5.9541|  0.0000|***    |
|polr       |Model4     |AQI_M3         |  -0.0098|    0.0074|   -1.3204|  0.1877|       |
|polr       |Model4     |0&#124;1       |  -0.2788|    0.3425|   -0.8141|  0.4162|       |
|polr       |Model4     |1&#124;2       |  -0.2535|    0.3424|   -0.7404|  0.4596|       |
|polr       |Model4     |2&#124;3       |   1.5220|    0.3600|    4.2274|  0.0000|***    |
|polr       |Model4     |3&#124;1+2     |   1.5220|    0.3600|    4.2274|  0.0000|***    |
|polr       |Model4     |1+2&#124;1+3   |   1.7393|    0.3670|    4.7398|  0.0000|***    |
|polr       |Model4     |1+3&#124;2+3   |   1.7393|    0.3670|    4.7398|  0.0000|***    |
|polr       |Model4     |2+3&#124;1+2+3 |   4.6480|    0.7761|    5.9887|  0.0000|***    |
|polr       |Model5     |AQI_M0         |  -0.0025|    0.0124|   -0.2039|  0.8385|       |
|polr       |Model5     |AQI_M1         |   0.0013|    0.0115|    0.1150|  0.9085|       |
|polr       |Model5     |0&#124;1       |   0.1001|    0.3962|    0.2527|  0.8007|       |
|polr       |Model5     |1&#124;2       |   0.1253|    0.3962|    0.3162|  0.7520|       |
|polr       |Model5     |2&#124;3       |   1.8960|    0.4159|    4.5583|  0.0000|***    |
|polr       |Model5     |3&#124;1+2     |   1.8960|    0.4159|    4.5583|  0.0000|***    |
|polr       |Model5     |1+2&#124;1+3   |   2.1131|    0.4221|    5.0067|  0.0000|***    |
|polr       |Model5     |1+3&#124;2+3   |   2.1131|    0.4221|    5.0067|  0.0000|***    |
|polr       |Model5     |2+3&#124;1+2+3 |   5.0191|    0.8042|    6.2411|  0.0000|***    |
|polr       |Model6     |AQI_M0         |  -0.0040|    0.0124|   -0.3201|  0.7491|       |
|polr       |Model6     |AQI_M1         |   0.0246|    0.0160|    1.5398|  0.1246|       |
|polr       |Model6     |AQI_M2         |  -0.0269|    0.0128|   -2.1025|  0.0363|*      |
|polr       |Model6     |0&#124;1       |  -0.1362|    0.4131|   -0.3296|  0.7419|       |
|polr       |Model6     |1&#124;2       |  -0.1109|    0.4131|   -0.2684|  0.7885|       |
|polr       |Model6     |2&#124;3       |   1.6780|    0.4293|    3.9088|  0.0001|***    |
|polr       |Model6     |3&#124;1+2     |   1.6782|    0.4293|    3.9092|  0.0001|***    |
|polr       |Model6     |1+2&#124;1+3   |   1.8940|    0.4350|    4.3545|  0.0000|***    |
|polr       |Model6     |1+3&#124;2+3   |   1.8944|    0.4350|    4.3552|  0.0000|***    |
|polr       |Model6     |2+3&#124;1+2+3 |   4.8067|    0.8104|    5.9314|  0.0000|***    |
|polr       |Model7     |AQI_M0         |  -0.0075|    0.0134|   -0.5578|  0.5774|       |
|polr       |Model7     |AQI_M1         |   0.0275|    0.0165|    1.6648|  0.0970|.      |
|polr       |Model7     |AQI_M2         |  -0.0207|    0.0154|   -1.3463|  0.1792|       |
|polr       |Model7     |AQI_M3         |  -0.0086|    0.0120|   -0.7162|  0.4744|       |
|polr       |Model7     |0&#124;1       |  -0.2677|    0.4532|   -0.5907|  0.5552|       |
|polr       |Model7     |1&#124;2       |  -0.2418|    0.4532|   -0.5335|  0.5941|       |
|polr       |Model7     |2&#124;3       |   1.5479|    0.4672|    3.3130|  0.0010|**     |
|polr       |Model7     |3&#124;1+2     |   1.5480|    0.4672|    3.3131|  0.0010|**     |
|polr       |Model7     |1+2&#124;1+3   |   1.7665|    0.4725|    3.7387|  0.0002|***    |
|polr       |Model7     |1+3&#124;2+3   |   1.7666|    0.4725|    3.7389|  0.0002|***    |
|polr       |Model7     |2+3&#124;1+2+3 |   4.6790|    0.8309|    5.6310|  0.0000|***    |

---

### 污染物: CO Table: 模型汇总: CO 对 Brainstem dysfunction 的影响

|model_type |model_name |term           | estimate| std.error| statistic| p.value|signif |
|:----------|:----------|:--------------|--------:|---------:|---------:|-------:|:------|
|polr       |Model1     |CO_M0          |  -0.1343|    0.7048|   -0.1905|  0.8491|       |
|polr       |Model1     |0&#124;1       |   0.0554|    0.5102|    0.1086|  0.9136|       |
|polr       |Model1     |1&#124;2       |   0.0807|    0.5102|    0.1581|  0.8745|       |
|polr       |Model1     |2&#124;3       |   1.8513|    0.5250|    3.5261|  0.0005|***    |
|polr       |Model1     |3&#124;1+2     |   1.8513|    0.5250|    3.5262|  0.0005|***    |
|polr       |Model1     |1+2&#124;1+3   |   2.0684|    0.5299|    3.9034|  0.0001|***    |
|polr       |Model1     |1+3&#124;2+3   |   2.0684|    0.5299|    3.9034|  0.0001|***    |
|polr       |Model1     |2+3&#124;1+2+3 |   4.9743|    0.8659|    5.7449|  0.0000|***    |
|polr       |Model2     |CO_M1          |  -0.6880|    0.6498|   -1.0588|  0.2905|       |
|polr       |Model2     |0&#124;1       |  -0.3401|    0.4755|   -0.7153|  0.4750|       |
|polr       |Model2     |1&#124;2       |  -0.3149|    0.4754|   -0.6624|  0.5082|       |
|polr       |Model2     |2&#124;3       |   1.4587|    0.4876|    2.9915|  0.0030|**     |
|polr       |Model2     |3&#124;1+2     |   1.4587|    0.4876|    2.9915|  0.0030|**     |
|polr       |Model2     |1+2&#124;1+3   |   1.6759|    0.4928|    3.4008|  0.0008|***    |
|polr       |Model2     |1+3&#124;2+3   |   1.6759|    0.4928|    3.4008|  0.0008|***    |
|polr       |Model2     |2+3&#124;1+2+3 |   4.5839|    0.8431|    5.4368|  0.0000|***    |
|polr       |Model3     |CO_M2          |  -1.2185|    0.6379|   -1.9101|  0.0570|.      |
|polr       |Model3     |0&#124;1       |  -0.7244|    0.4690|   -1.5444|  0.1235|       |
|polr       |Model3     |1&#124;2       |  -0.6989|    0.4689|   -1.4905|  0.1371|       |
|polr       |Model3     |2&#124;3       |   1.0836|    0.4778|    2.2679|  0.0240|*      |
|polr       |Model3     |3&#124;1+2     |   1.0836|    0.4778|    2.2679|  0.0240|*      |
|polr       |Model3     |1+2&#124;1+3   |   1.3016|    0.4827|    2.6965|  0.0074|**     |
|polr       |Model3     |1+3&#124;2+3   |   1.3016|    0.4827|    2.6965|  0.0074|**     |
|polr       |Model3     |2+3&#124;1+2+3 |   4.2152|    0.8367|    5.0377|  0.0000|***    |
|polr       |Model4     |CO_M3          |  -1.0230|    0.6151|   -1.6633|  0.0973|.      |
|polr       |Model4     |0&#124;1       |  -0.5915|    0.4579|   -1.2918|  0.1974|       |
|polr       |Model4     |1&#124;2       |  -0.5662|    0.4578|   -1.2366|  0.2172|       |
|polr       |Model4     |2&#124;3       |   1.2125|    0.4686|    2.5873|  0.0101|*      |
|polr       |Model4     |3&#124;1+2     |   1.2125|    0.4686|    2.5873|  0.0101|*      |
|polr       |Model4     |1+2&#124;1+3   |   1.4303|    0.4736|    3.0200|  0.0027|**     |
|polr       |Model4     |1+3&#124;2+3   |   1.4303|    0.4736|    3.0200|  0.0027|**     |
|polr       |Model4     |2+3&#124;1+2+3 |   4.3434|    0.8312|    5.2252|  0.0000|***    |
|polr       |Model5     |CO_M0          |   1.5088|    1.2568|    1.2005|  0.2308|       |
|polr       |Model5     |CO_M1          |  -1.8279|    1.1752|   -1.5554|  0.1209|       |
|polr       |Model5     |0&#124;1       |  -0.0872|    0.5248|   -0.1661|  0.8682|       |
|polr       |Model5     |1&#124;2       |  -0.0617|    0.5248|   -0.1176|  0.9065|       |
|polr       |Model5     |2&#124;3       |   1.7162|    0.5379|    3.1904|  0.0016|**     |
|polr       |Model5     |3&#124;1+2     |   1.7162|    0.5379|    3.1904|  0.0016|**     |
|polr       |Model5     |1+2&#124;1+3   |   1.9334|    0.5427|    3.5627|  0.0004|***    |
|polr       |Model5     |1+3&#124;2+3   |   1.9334|    0.5427|    3.5627|  0.0004|***    |
|polr       |Model5     |2+3&#124;1+2+3 |   4.8430|    0.8737|    5.5433|  0.0000|***    |
|polr       |Model6     |CO_M0          |   1.7055|    1.2515|    1.3628|  0.1739|       |
|polr       |Model6     |CO_M1          |   0.0434|    1.4816|    0.0293|  0.9766|       |
|polr       |Model6     |CO_M2          |  -2.3331|    1.1779|   -1.9807|  0.0485|*      |
|polr       |Model6     |0&#124;1       |  -0.2887|    0.5341|   -0.5405|  0.5893|       |
|polr       |Model6     |1&#124;2       |  -0.2631|    0.5340|   -0.4926|  0.6227|       |
|polr       |Model6     |2&#124;3       |   1.5285|    0.5458|    2.8005|  0.0054|**     |
|polr       |Model6     |3&#124;1+2     |   1.5285|    0.5458|    2.8005|  0.0054|**     |
|polr       |Model6     |1+2&#124;1+3   |   1.7473|    0.5504|    3.1747|  0.0017|**     |
|polr       |Model6     |1+3&#124;2+3   |   1.7473|    0.5504|    3.1747|  0.0017|**     |
|polr       |Model6     |2+3&#124;1+2+3 |   4.6637|    0.8782|    5.3107|  0.0000|***    |
|polr       |Model7     |CO_M0          |   1.7264|    1.2586|    1.3717|  0.1712|       |
|polr       |Model7     |CO_M1          |   0.0307|    1.4849|    0.0207|  0.9835|       |
|polr       |Model7     |CO_M2          |  -2.5174|    1.6248|   -1.5493|  0.1223|       |
|polr       |Model7     |CO_M3          |   0.2036|    1.2438|    0.1637|  0.8701|       |
|polr       |Model7     |0&#124;1       |  -0.2677|    0.5490|   -0.4877|  0.6261|       |
|polr       |Model7     |1&#124;2       |  -0.2421|    0.5490|   -0.4411|  0.6595|       |
|polr       |Model7     |2&#124;3       |   1.5498|    0.5609|    2.7632|  0.0061|**     |
|polr       |Model7     |3&#124;1+2     |   1.5498|    0.5609|    2.7632|  0.0061|**     |
|polr       |Model7     |1+2&#124;1+3   |   1.7686|    0.5653|    3.1285|  0.0019|**     |
|polr       |Model7     |1+3&#124;2+3   |   1.7686|    0.5653|    3.1285|  0.0019|**     |
|polr       |Model7     |2+3&#124;1+2+3 |   4.6853|    0.8875|    5.2792|  0.0000|***    |

---

### 污染物: CO_24h Table: 模型汇总: CO_24h 对 Brainstem dysfunction 的影响

|model_type |model_name |term           | estimate| std.error| statistic| p.value|signif |
|:----------|:----------|:--------------|--------:|---------:|---------:|-------:|:------|
|polr       |Model1     |CO_24h_M0      |  -0.1354|    0.7026|   -0.1927|  0.8473|       |
|polr       |Model1     |0&#124;1       |   0.0546|    0.5086|    0.1074|  0.9146|       |
|polr       |Model1     |1&#124;2       |   0.0799|    0.5087|    0.1570|  0.8753|       |
|polr       |Model1     |2&#124;3       |   1.8505|    0.5235|    3.5348|  0.0005|***    |
|polr       |Model1     |3&#124;1+2     |   1.8505|    0.5235|    3.5348|  0.0005|***    |
|polr       |Model1     |1+2&#124;1+3   |   2.0676|    0.5284|    3.9128|  0.0001|***    |
|polr       |Model1     |1+3&#124;2+3   |   2.0676|    0.5284|    3.9128|  0.0001|***    |
|polr       |Model1     |2+3&#124;1+2+3 |   4.9735|    0.8649|    5.7501|  0.0000|***    |
|polr       |Model2     |CO_24h_M1      |  -0.7126|    0.6497|   -1.0969|  0.2735|       |
|polr       |Model2     |0&#124;1       |  -0.3574|    0.4749|   -0.7526|  0.4522|       |
|polr       |Model2     |1&#124;2       |  -0.3321|    0.4748|   -0.6995|  0.4848|       |
|polr       |Model2     |2&#124;3       |   1.4420|    0.4869|    2.9615|  0.0033|**     |
|polr       |Model2     |3&#124;1+2     |   1.4420|    0.4869|    2.9615|  0.0033|**     |
|polr       |Model2     |1+2&#124;1+3   |   1.6593|    0.4921|    3.3719|  0.0008|***    |
|polr       |Model2     |1+3&#124;2+3   |   1.6593|    0.4921|    3.3719|  0.0008|***    |
|polr       |Model2     |2+3&#124;1+2+3 |   4.5653|    0.8422|    5.4204|  0.0000|***    |
|polr       |Model3     |CO_24h_M2      |  -1.2289|    0.6378|   -1.9266|  0.0549|.      |
|polr       |Model3     |0&#124;1       |  -0.7317|    0.4689|   -1.5604|  0.1197|       |
|polr       |Model3     |1&#124;2       |  -0.7062|    0.4688|   -1.5065|  0.1329|       |
|polr       |Model3     |2&#124;3       |   1.0765|    0.4776|    2.2540|  0.0249|*      |
|polr       |Model3     |3&#124;1+2     |   1.0765|    0.4776|    2.2540|  0.0249|*      |
|polr       |Model3     |1+2&#124;1+3   |   1.2945|    0.4825|    2.6829|  0.0077|**     |
|polr       |Model3     |1+3&#124;2+3   |   1.2945|    0.4825|    2.6829|  0.0077|**     |
|polr       |Model3     |2+3&#124;1+2+3 |   4.2069|    0.8363|    5.0304|  0.0000|***    |
|polr       |Model4     |CO_24h_M3      |  -1.0150|    0.6159|   -1.6478|  0.1004|       |
|polr       |Model4     |0&#124;1       |  -0.5850|    0.4582|   -1.2768|  0.2026|       |
|polr       |Model4     |1&#124;2       |  -0.5596|    0.4581|   -1.2217|  0.2227|       |
|polr       |Model4     |2&#124;3       |   1.2188|    0.4689|    2.5993|  0.0098|**     |
|polr       |Model4     |3&#124;1+2     |   1.2188|    0.4689|    2.5993|  0.0098|**     |
|polr       |Model4     |1+2&#124;1+3   |   1.4367|    0.4739|    3.0316|  0.0026|**     |
|polr       |Model4     |1+3&#124;2+3   |   1.4367|    0.4739|    3.0317|  0.0026|**     |
|polr       |Model4     |2+3&#124;1+2+3 |   4.3494|    0.8313|    5.2321|  0.0000|***    |
|polr       |Model5     |CO_24h_M0      |   1.5598|    1.2500|    1.2479|  0.2130|       |
|polr       |Model5     |CO_24h_M1      |  -1.8927|    1.1721|   -1.6148|  0.1074|       |
|polr       |Model5     |0&#124;1       |  -0.0963|    0.5237|   -0.1838|  0.8543|       |
|polr       |Model5     |1&#124;2       |  -0.0708|    0.5236|   -0.1353|  0.8925|       |
|polr       |Model5     |2&#124;3       |   1.7077|    0.5368|    3.1815|  0.0016|**     |
|polr       |Model5     |3&#124;1+2     |   1.7077|    0.5368|    3.1815|  0.0016|**     |
|polr       |Model5     |1+2&#124;1+3   |   1.9251|    0.5415|    3.5549|  0.0004|***    |
|polr       |Model5     |1+3&#124;2+3   |   1.9251|    0.5415|    3.5549|  0.0004|***    |
|polr       |Model5     |2+3&#124;1+2+3 |   4.8347|    0.8729|    5.5387|  0.0000|***    |
|polr       |Model6     |CO_24h_M0      |   1.7496|    1.2444|    1.4060|  0.1607|       |
|polr       |Model6     |CO_24h_M1      |  -0.0577|    1.4767|   -0.0391|  0.9689|       |
|polr       |Model6     |CO_24h_M2      |  -2.2906|    1.1721|   -1.9542|  0.0516|.      |
|polr       |Model6     |0&#124;1       |  -0.2991|    0.5334|   -0.5607|  0.5754|       |
|polr       |Model6     |1&#124;2       |  -0.2735|    0.5334|   -0.5128|  0.6085|       |
|polr       |Model6     |2&#124;3       |   1.5185|    0.5451|    2.7859|  0.0057|**     |
|polr       |Model6     |3&#124;1+2     |   1.5185|    0.5451|    2.7859|  0.0057|**     |
|polr       |Model6     |1+2&#124;1+3   |   1.7373|    0.5497|    3.1608|  0.0017|**     |
|polr       |Model6     |1+3&#124;2+3   |   1.7373|    0.5497|    3.1608|  0.0017|**     |
|polr       |Model6     |2+3&#124;1+2+3 |   4.6539|    0.8777|    5.3025|  0.0000|***    |
|polr       |Model7     |CO_24h_M0      |   1.7789|    1.2521|    1.4207|  0.1564|       |
|polr       |Model7     |CO_24h_M1      |  -0.0816|    1.4814|   -0.0551|  0.9561|       |
|polr       |Model7     |CO_24h_M2      |  -2.5230|    1.6009|   -1.5759|  0.1161|       |
|polr       |Model7     |CO_24h_M3      |   0.2627|    1.2296|    0.2137|  0.8310|       |
|polr       |Model7     |0&#124;1       |  -0.2719|    0.5488|   -0.4955|  0.6206|       |
|polr       |Model7     |1&#124;2       |  -0.2463|    0.5488|   -0.4488|  0.6539|       |
|polr       |Model7     |2&#124;3       |   1.5461|    0.5607|    2.7573|  0.0062|**     |
|polr       |Model7     |3&#124;1+2     |   1.5461|    0.5607|    2.7573|  0.0062|**     |
|polr       |Model7     |1+2&#124;1+3   |   1.7649|    0.5652|    3.1228|  0.0020|**     |
|polr       |Model7     |1+3&#124;2+3   |   1.7649|    0.5652|    3.1228|  0.0020|**     |
|polr       |Model7     |2+3&#124;1+2+3 |   4.6813|    0.8873|    5.2760|  0.0000|***    |

---

### 污染物: NO2 Table: 模型汇总: NO2 对 Brainstem dysfunction 的影响

|model_type |model_name |term           | estimate| std.error| statistic| p.value|signif |
|:----------|:----------|:--------------|--------:|---------:|---------:|-------:|:------|
|polr       |Model1     |NO2_M0         |  -0.0054|    0.0097|   -0.5600|  0.5759|       |
|polr       |Model1     |0&#124;1       |   0.0222|    0.2541|    0.0872|  0.9306|       |
|polr       |Model1     |1&#124;2       |   0.0474|    0.2541|    0.1866|  0.8521|       |
|polr       |Model1     |2&#124;3       |   1.8194|    0.2811|    6.4732|  0.0000|***    |
|polr       |Model1     |3&#124;1+2     |   1.8194|    0.2811|    6.4732|  0.0000|***    |
|polr       |Model1     |1+2&#124;1+3   |   2.0365|    0.2901|    7.0211|  0.0000|***    |
|polr       |Model1     |1+3&#124;2+3   |   2.0365|    0.2901|    7.0211|  0.0000|***    |
|polr       |Model1     |2+3&#124;1+2+3 |   4.9450|    0.7445|    6.6419|  0.0000|***    |
|polr       |Model2     |NO2_M1         |  -0.0083|    0.0091|   -0.9060|  0.3657|       |
|polr       |Model2     |0&#124;1       |  -0.0433|    0.2405|   -0.1802|  0.8571|       |
|polr       |Model2     |1&#124;2       |  -0.0180|    0.2404|   -0.0750|  0.9402|       |
|polr       |Model2     |2&#124;3       |   1.7554|    0.2677|    6.5566|  0.0000|***    |
|polr       |Model2     |3&#124;1+2     |   1.7555|    0.2677|    6.5566|  0.0000|***    |
|polr       |Model2     |1+2&#124;1+3   |   1.9725|    0.2773|    7.1139|  0.0000|***    |
|polr       |Model2     |1+3&#124;2+3   |   1.9725|    0.2773|    7.1140|  0.0000|***    |
|polr       |Model2     |2+3&#124;1+2+3 |   4.8774|    0.7388|    6.6015|  0.0000|***    |
|polr       |Model3     |NO2_M2         |  -0.0220|    0.0091|   -2.4184|  0.0162|*      |
|polr       |Model3     |0&#124;1       |  -0.3770|    0.2426|   -1.5540|  0.1212|       |
|polr       |Model3     |1&#124;2       |  -0.3514|    0.2425|   -1.4491|  0.1483|       |
|polr       |Model3     |2&#124;3       |   1.4421|    0.2639|    5.4639|  0.0000|***    |
|polr       |Model3     |3&#124;1+2     |   1.4421|    0.2639|    5.4639|  0.0000|***    |
|polr       |Model3     |1+2&#124;1+3   |   1.6602|    0.2733|    6.0752|  0.0000|***    |
|polr       |Model3     |1+3&#124;2+3   |   1.6602|    0.2733|    6.0752|  0.0000|***    |
|polr       |Model3     |2+3&#124;1+2+3 |   4.5700|    0.7371|    6.1998|  0.0000|***    |
|polr       |Model4     |NO2_M3         |  -0.0174|    0.0087|   -1.9867|  0.0478|*      |
|polr       |Model4     |0&#124;1       |  -0.2723|    0.2385|   -1.1416|  0.2545|       |
|polr       |Model4     |1&#124;2       |  -0.2468|    0.2384|   -1.0351|  0.3014|       |
|polr       |Model4     |2&#124;3       |   1.5394|    0.2620|    5.8754|  0.0000|***    |
|polr       |Model4     |3&#124;1+2     |   1.5394|    0.2620|    5.8754|  0.0000|***    |
|polr       |Model4     |1+2&#124;1+3   |   1.7570|    0.2715|    6.4712|  0.0000|***    |
|polr       |Model4     |1+3&#124;2+3   |   1.7570|    0.2715|    6.4712|  0.0000|***    |
|polr       |Model4     |2+3&#124;1+2+3 |   4.6645|    0.7365|    6.3331|  0.0000|***    |
|polr       |Model5     |NO2_M0         |   0.0060|    0.0173|    0.3468|  0.7290|       |
|polr       |Model5     |NO2_M1         |  -0.0129|    0.0163|   -0.7945|  0.4275|       |
|polr       |Model5     |0&#124;1       |  -0.0115|    0.2575|   -0.0448|  0.9643|       |
|polr       |Model5     |1&#124;2       |   0.0139|    0.2575|    0.0539|  0.9571|       |
|polr       |Model5     |2&#124;3       |   1.7848|    0.2834|    6.2970|  0.0000|***    |
|polr       |Model5     |3&#124;1+2     |   1.7850|    0.2834|    6.2975|  0.0000|***    |
|polr       |Model5     |1+2&#124;1+3   |   2.0026|    0.2924|    6.8486|  0.0000|***    |
|polr       |Model5     |1+3&#124;2+3   |   2.0029|    0.2924|    6.8494|  0.0000|***    |
|polr       |Model5     |2+3&#124;1+2+3 |   4.9113|    0.7455|    6.5882|  0.0000|***    |
|polr       |Model6     |NO2_M0         |   0.0166|    0.0179|    0.9291|  0.3535|       |
|polr       |Model6     |NO2_M1         |   0.0187|    0.0199|    0.9430|  0.3464|       |
|polr       |Model6     |NO2_M2         |  -0.0487|    0.0163|   -2.9904|  0.0030|**     |
|polr       |Model6     |0&#124;1       |  -0.1844|    0.2650|   -0.6959|  0.4870|       |
|polr       |Model6     |1&#124;2       |  -0.1597|    0.2650|   -0.6026|  0.5472|       |
|polr       |Model6     |2&#124;3       |   1.6507|    0.2889|    5.7145|  0.0000|***    |
|polr       |Model6     |3&#124;1+2     |   1.6510|    0.2889|    5.7153|  0.0000|***    |
|polr       |Model6     |1+2&#124;1+3   |   1.8718|    0.2978|    6.2851|  0.0000|***    |
|polr       |Model6     |1+3&#124;2+3   |   1.8722|    0.2978|    6.2860|  0.0000|***    |
|polr       |Model6     |2+3&#124;1+2+3 |   4.7805|    0.7455|    6.4127|  0.0000|***    |
|polr       |Model7     |NO2_M0         |   0.0164|    0.0179|    0.9165|  0.3601|       |
|polr       |Model7     |NO2_M1         |   0.0200|    0.0203|    0.9856|  0.3251|       |
|polr       |Model7     |NO2_M2         |  -0.0448|    0.0188|   -2.3872|  0.0176|*      |
|polr       |Model7     |NO2_M3         |  -0.0058|    0.0143|   -0.4049|  0.6859|       |
|polr       |Model7     |0&#124;1       |  -0.2061|    0.2717|   -0.7585|  0.4488|       |
|polr       |Model7     |1&#124;2       |  -0.1790|    0.2716|   -0.6589|  0.5105|       |
|polr       |Model7     |2&#124;3       |   1.6312|    0.2947|    5.5359|  0.0000|***    |
|polr       |Model7     |3&#124;1+2     |   1.6314|    0.2947|    5.5365|  0.0000|***    |
|polr       |Model7     |1+2&#124;1+3   |   1.8503|    0.3034|    6.0992|  0.0000|***    |
|polr       |Model7     |1+3&#124;2+3   |   1.8506|    0.3034|    6.0997|  0.0000|***    |
|polr       |Model7     |2+3&#124;1+2+3 |   4.7644|    0.7492|    6.3596|  0.0000|***    |

---

### 污染物: NO2_24h Table: 模型汇总: NO2_24h 对 Brainstem dysfunction 的影响

|model_type |model_name |term           | estimate| std.error| statistic| p.value|signif |
|:----------|:----------|:--------------|--------:|---------:|---------:|-------:|:------|
|polr       |Model1     |NO2_24h_M0     |  -0.0054|    0.0097|   -0.5559|  0.5787|       |
|polr       |Model1     |0&#124;1       |   0.0232|    0.2541|    0.0914|  0.9272|       |
|polr       |Model1     |1&#124;2       |   0.0484|    0.2541|    0.1905|  0.8490|       |
|polr       |Model1     |2&#124;3       |   1.8203|    0.2811|    6.4762|  0.0000|***    |
|polr       |Model1     |3&#124;1+2     |   1.8203|    0.2811|    6.4762|  0.0000|***    |
|polr       |Model1     |1+2&#124;1+3   |   2.0375|    0.2901|    7.0245|  0.0000|***    |
|polr       |Model1     |1+3&#124;2+3   |   2.0375|    0.2901|    7.0245|  0.0000|***    |
|polr       |Model1     |2+3&#124;1+2+3 |   4.9435|    0.7439|    6.6456|  0.0000|***    |
|polr       |Model2     |NO2_24h_M1     |  -0.0086|    0.0091|   -0.9402|  0.3478|       |
|polr       |Model2     |0&#124;1       |  -0.0508|    0.2407|   -0.2112|  0.8328|       |
|polr       |Model2     |1&#124;2       |  -0.0256|    0.2406|   -0.1063|  0.9154|       |
|polr       |Model2     |2&#124;3       |   1.7485|    0.2678|    6.5293|  0.0000|***    |
|polr       |Model2     |3&#124;1+2     |   1.7485|    0.2678|    6.5293|  0.0000|***    |
|polr       |Model2     |1+2&#124;1+3   |   1.9656|    0.2773|    7.0878|  0.0000|***    |
|polr       |Model2     |1+3&#124;2+3   |   1.9656|    0.2773|    7.0879|  0.0000|***    |
|polr       |Model2     |2+3&#124;1+2+3 |   4.8709|    0.7389|    6.5918|  0.0000|***    |
|polr       |Model3     |NO2_24h_M2     |  -0.0221|    0.0091|   -2.4258|  0.0158|*      |
|polr       |Model3     |0&#124;1       |  -0.3794|    0.2429|   -1.5621|  0.1193|       |
|polr       |Model3     |1&#124;2       |  -0.3537|    0.2427|   -1.4572|  0.1461|       |
|polr       |Model3     |2&#124;3       |   1.4397|    0.2641|    5.4515|  0.0000|***    |
|polr       |Model3     |3&#124;1+2     |   1.4397|    0.2641|    5.4515|  0.0000|***    |
|polr       |Model3     |1+2&#124;1+3   |   1.6578|    0.2734|    6.0629|  0.0000|***    |
|polr       |Model3     |1+3&#124;2+3   |   1.6578|    0.2734|    6.0629|  0.0000|***    |
|polr       |Model3     |2+3&#124;1+2+3 |   4.5679|    0.7372|    6.1959|  0.0000|***    |
|polr       |Model4     |NO2_24h_M3     |  -0.0176|    0.0088|   -2.0052|  0.0458|*      |
|polr       |Model4     |0&#124;1       |  -0.2767|    0.2387|   -1.1591|  0.2473|       |
|polr       |Model4     |1&#124;2       |  -0.2512|    0.2386|   -1.0528|  0.2933|       |
|polr       |Model4     |2&#124;3       |   1.5352|    0.2621|    5.8568|  0.0000|***    |
|polr       |Model4     |3&#124;1+2     |   1.5352|    0.2621|    5.8568|  0.0000|***    |
|polr       |Model4     |1+2&#124;1+3   |   1.7528|    0.2716|    6.4532|  0.0000|***    |
|polr       |Model4     |1+3&#124;2+3   |   1.7528|    0.2716|    6.4533|  0.0000|***    |
|polr       |Model4     |2+3&#124;1+2+3 |   4.6606|    0.7366|    6.3269|  0.0000|***    |
|polr       |Model5     |NO2_24h_M0     |   0.0070|    0.0173|    0.4031|  0.6871|       |
|polr       |Model5     |NO2_24h_M1     |  -0.0140|    0.0163|   -0.8590|  0.3910|       |
|polr       |Model5     |0&#124;1       |  -0.0140|    0.2576|   -0.0543|  0.9568|       |
|polr       |Model5     |1&#124;2       |   0.0113|    0.2576|    0.0439|  0.9650|       |
|polr       |Model5     |2&#124;3       |   1.7857|    0.2836|    6.2970|  0.0000|***    |
|polr       |Model5     |3&#124;1+2     |   1.7857|    0.2836|    6.2970|  0.0000|***    |
|polr       |Model5     |1+2&#124;1+3   |   2.0026|    0.2925|    6.8464|  0.0000|***    |
|polr       |Model5     |1+3&#124;2+3   |   2.0026|    0.2925|    6.8464|  0.0000|***    |
|polr       |Model5     |2+3&#124;1+2+3 |   4.9084|    0.7449|    6.5894|  0.0000|***    |
|polr       |Model6     |NO2_24h_M0     |   0.0174|    0.0179|    0.9729|  0.3313|       |
|polr       |Model6     |NO2_24h_M1     |   0.0177|    0.0199|    0.8881|  0.3752|       |
|polr       |Model6     |NO2_24h_M2     |  -0.0486|    0.0163|   -2.9793|  0.0031|**     |
|polr       |Model6     |0&#124;1       |  -0.1883|    0.2652|   -0.7100|  0.4782|       |
|polr       |Model6     |1&#124;2       |  -0.1637|    0.2651|   -0.6176|  0.5373|       |
|polr       |Model6     |2&#124;3       |   1.6470|    0.2889|    5.7001|  0.0000|***    |
|polr       |Model6     |3&#124;1+2     |   1.6473|    0.2889|    5.7010|  0.0000|***    |
|polr       |Model6     |1+2&#124;1+3   |   1.8687|    0.2979|    6.2729|  0.0000|***    |
|polr       |Model6     |1+3&#124;2+3   |   1.8691|    0.2979|    6.2738|  0.0000|***    |
|polr       |Model6     |2+3&#124;1+2+3 |   4.7742|    0.7448|    6.4103|  0.0000|***    |
|polr       |Model7     |NO2_24h_M0     |   0.0170|    0.0180|    0.9463|  0.3448|       |
|polr       |Model7     |NO2_24h_M1     |   0.0193|    0.0204|    0.9436|  0.3461|       |
|polr       |Model7     |NO2_24h_M2     |  -0.0445|    0.0187|   -2.3744|  0.0182|*      |
|polr       |Model7     |NO2_24h_M3     |  -0.0060|    0.0143|   -0.4200|  0.6748|       |
|polr       |Model7     |0&#124;1       |  -0.2089|    0.2720|   -0.7678|  0.4432|       |
|polr       |Model7     |1&#124;2       |  -0.1824|    0.2720|   -0.6707|  0.5029|       |
|polr       |Model7     |2&#124;3       |   1.6276|    0.2949|    5.5183|  0.0000|***    |
|polr       |Model7     |3&#124;1+2     |   1.6277|    0.2949|    5.5188|  0.0000|***    |
|polr       |Model7     |1+2&#124;1+3   |   1.8470|    0.3036|    6.0826|  0.0000|***    |
|polr       |Model7     |1+3&#124;2+3   |   1.8472|    0.3037|    6.0833|  0.0000|***    |
|polr       |Model7     |2+3&#124;1+2+3 |   4.7637|    0.7499|    6.3521|  0.0000|***    |

---

### 污染物: O3 Table: 模型汇总: O3 对 Brainstem dysfunction 的影响

|model_type |model_name |term           | estimate| std.error| statistic| p.value|signif |
|:----------|:----------|:--------------|--------:|---------:|---------:|-------:|:------|
|polr       |Model1     |O3_M0          |  -0.0028|    0.0072|   -0.3961|  0.6923|       |
|polr       |Model1     |0&#124;1       |  -0.0136|    0.4283|   -0.0317|  0.9747|       |
|polr       |Model1     |1&#124;2       |   0.0116|    0.4283|    0.0270|  0.9785|       |
|polr       |Model1     |2&#124;3       |   1.7817|    0.4470|    3.9862|  0.0001|***    |
|polr       |Model1     |3&#124;1+2     |   1.7817|    0.4470|    3.9862|  0.0001|***    |
|polr       |Model1     |1+2&#124;1+3   |   1.9986|    0.4529|    4.4131|  0.0000|***    |
|polr       |Model1     |1+3&#124;2+3   |   1.9986|    0.4529|    4.4131|  0.0000|***    |
|polr       |Model1     |2+3&#124;1+2+3 |   4.9051|    0.8205|    5.9782|  0.0000|***    |
|polr       |Model2     |O3_M1          |   0.0026|    0.0078|    0.3319|  0.7402|       |
|polr       |Model2     |0&#124;1       |   0.2985|    0.4606|    0.6480|  0.5174|       |
|polr       |Model2     |1&#124;2       |   0.3237|    0.4607|    0.7026|  0.4828|       |
|polr       |Model2     |2&#124;3       |   2.0946|    0.4795|    4.3680|  0.0000|***    |
|polr       |Model2     |3&#124;1+2     |   2.0946|    0.4795|    4.3680|  0.0000|***    |
|polr       |Model2     |1+2&#124;1+3   |   2.3117|    0.4849|    4.7672|  0.0000|***    |
|polr       |Model2     |1+3&#124;2+3   |   2.3117|    0.4849|    4.7672|  0.0000|***    |
|polr       |Model2     |2+3&#124;1+2+3 |   5.2175|    0.8392|    6.2173|  0.0000|***    |
|polr       |Model3     |O3_M2          |   0.0035|    0.0071|    0.4866|  0.6269|       |
|polr       |Model3     |0&#124;1       |   0.3544|    0.4346|    0.8155|  0.4154|       |
|polr       |Model3     |1&#124;2       |   0.3796|    0.4347|    0.8733|  0.3832|       |
|polr       |Model3     |2&#124;3       |   2.1506|    0.4542|    4.7348|  0.0000|***    |
|polr       |Model3     |3&#124;1+2     |   2.1506|    0.4542|    4.7348|  0.0000|***    |
|polr       |Model3     |1+2&#124;1+3   |   2.3675|    0.4597|    5.1505|  0.0000|***    |
|polr       |Model3     |1+3&#124;2+3   |   2.3675|    0.4597|    5.1506|  0.0000|***    |
|polr       |Model3     |2+3&#124;1+2+3 |   5.2728|    0.8246|    6.3944|  0.0000|***    |
|polr       |Model4     |O3_M3          |   0.0041|    0.0072|    0.5695|  0.5694|       |
|polr       |Model4     |0&#124;1       |   0.3823|    0.4230|    0.9039|  0.3668|       |
|polr       |Model4     |1&#124;2       |   0.4075|    0.4230|    0.9633|  0.3362|       |
|polr       |Model4     |2&#124;3       |   2.1792|    0.4442|    4.9059|  0.0000|***    |
|polr       |Model4     |3&#124;1+2     |   2.1792|    0.4442|    4.9059|  0.0000|***    |
|polr       |Model4     |1+2&#124;1+3   |   2.3964|    0.4503|    5.3224|  0.0000|***    |
|polr       |Model4     |1+3&#124;2+3   |   2.3964|    0.4503|    5.3224|  0.0000|***    |
|polr       |Model4     |2+3&#124;1+2+3 |   5.3026|    0.8201|    6.4655|  0.0000|***    |
|polr       |Model5     |O3_M0          |  -0.0056|    0.0084|   -0.6663|  0.5057|       |
|polr       |Model5     |O3_M1          |   0.0058|    0.0091|    0.6336|  0.5268|       |
|polr       |Model5     |0&#124;1       |   0.1585|    0.5072|    0.3124|  0.7549|       |
|polr       |Model5     |1&#124;2       |   0.1839|    0.5072|    0.3625|  0.7172|       |
|polr       |Model5     |2&#124;3       |   1.9548|    0.5240|    3.7302|  0.0002|***    |
|polr       |Model5     |3&#124;1+2     |   1.9551|    0.5240|    3.7307|  0.0002|***    |
|polr       |Model5     |1+2&#124;1+3   |   2.1720|    0.5290|    4.1056|  0.0001|***    |
|polr       |Model5     |1+3&#124;2+3   |   2.1724|    0.5290|    4.1063|  0.0001|***    |
|polr       |Model5     |2+3&#124;1+2+3 |   5.0811|    0.8654|    5.8712|  0.0000|***    |
|polr       |Model6     |O3_M0          |  -0.0054|    0.0084|   -0.6388|  0.5234|       |
|polr       |Model6     |O3_M1          |   0.0043|    0.0101|    0.4268|  0.6698|       |
|polr       |Model6     |O3_M2          |   0.0026|    0.0081|    0.3188|  0.7501|       |
|polr       |Model6     |0&#124;1       |   0.2391|    0.5699|    0.4196|  0.6751|       |
|polr       |Model6     |1&#124;2       |   0.2644|    0.5699|    0.4639|  0.6431|       |
|polr       |Model6     |2&#124;3       |   2.0353|    0.5853|    3.4775|  0.0006|***    |
|polr       |Model6     |3&#124;1+2     |   2.0353|    0.5853|    3.4775|  0.0006|***    |
|polr       |Model6     |1+2&#124;1+3   |   2.2521|    0.5896|    3.8197|  0.0002|***    |
|polr       |Model6     |1+3&#124;2+3   |   2.2521|    0.5896|    3.8197|  0.0002|***    |
|polr       |Model6     |2+3&#124;1+2+3 |   5.1590|    0.9032|    5.7122|  0.0000|***    |
|polr       |Model7     |O3_M0          |  -0.0052|    0.0085|   -0.6066|  0.5446|       |
|polr       |Model7     |O3_M1          |   0.0044|    0.0101|    0.4294|  0.6679|       |
|polr       |Model7     |O3_M2          |   0.0012|    0.0091|    0.1280|  0.8983|       |
|polr       |Model7     |O3_M3          |   0.0027|    0.0083|    0.3237|  0.7464|       |
|polr       |Model7     |0&#124;1       |   0.3252|    0.6327|    0.5140|  0.6076|       |
|polr       |Model7     |1&#124;2       |   0.3504|    0.6327|    0.5539|  0.5801|       |
|polr       |Model7     |2&#124;3       |   2.1221|    0.6476|    3.2770|  0.0012|**     |
|polr       |Model7     |3&#124;1+2     |   2.1222|    0.6476|    3.2772|  0.0012|**     |
|polr       |Model7     |1+2&#124;1+3   |   2.3395|    0.6517|    3.5899|  0.0004|***    |
|polr       |Model7     |1+3&#124;2+3   |   2.3397|    0.6517|    3.5902|  0.0004|***    |
|polr       |Model7     |2+3&#124;1+2+3 |   5.2460|    0.9450|    5.5515|  0.0000|***    |

---

### 污染物: PM10 Table: 模型汇总: PM10 对 Brainstem dysfunction 的影响

|model_type |model_name |term           | estimate| std.error| statistic| p.value|signif |
|:----------|:----------|:--------------|--------:|---------:|---------:|-------:|:------|
|polr       |Model1     |PM10_M0        |   0.0002|    0.0073|    0.0218|  0.9826|       |
|polr       |Model1     |0&#124;1       |   0.1568|    0.3217|    0.4876|  0.6262|       |
|polr       |Model1     |1&#124;2       |   0.1820|    0.3218|    0.5657|  0.5720|       |
|polr       |Model1     |2&#124;3       |   1.9525|    0.3460|    5.6431|  0.0000|***    |
|polr       |Model1     |3&#124;1+2     |   1.9525|    0.3460|    5.6432|  0.0000|***    |
|polr       |Model1     |1+2&#124;1+3   |   2.1695|    0.3533|    6.1409|  0.0000|***    |
|polr       |Model1     |1+3&#124;2+3   |   2.1695|    0.3533|    6.1410|  0.0000|***    |
|polr       |Model1     |2+3&#124;1+2+3 |   5.0755|    0.7706|    6.5868|  0.0000|***    |
|polr       |Model2     |PM10_M1        |   0.0014|    0.0067|    0.2045|  0.8381|       |
|polr       |Model2     |0&#124;1       |   0.2076|    0.3020|    0.6874|  0.4924|       |
|polr       |Model2     |1&#124;2       |   0.2328|    0.3021|    0.7706|  0.4416|       |
|polr       |Model2     |2&#124;3       |   2.0035|    0.3291|    6.0875|  0.0000|***    |
|polr       |Model2     |3&#124;1+2     |   2.0036|    0.3291|    6.0875|  0.0000|***    |
|polr       |Model2     |1+2&#124;1+3   |   2.2206|    0.3369|    6.5910|  0.0000|***    |
|polr       |Model2     |1+3&#124;2+3   |   2.2206|    0.3369|    6.5911|  0.0000|***    |
|polr       |Model2     |2+3&#124;1+2+3 |   5.1264|    0.7631|    6.7174|  0.0000|***    |
|polr       |Model3     |PM10_M2        |  -0.0092|    0.0068|   -1.3651|  0.1732|       |
|polr       |Model3     |0&#124;1       |  -0.2403|    0.3059|   -0.7856|  0.4327|       |
|polr       |Model3     |1&#124;2       |  -0.2151|    0.3059|   -0.7032|  0.4825|       |
|polr       |Model3     |2&#124;3       |   1.5622|    0.3252|    4.8038|  0.0000|***    |
|polr       |Model3     |3&#124;1+2     |   1.5622|    0.3252|    4.8038|  0.0000|***    |
|polr       |Model3     |1+2&#124;1+3   |   1.7801|    0.3327|    5.3511|  0.0000|***    |
|polr       |Model3     |1+3&#124;2+3   |   1.7801|    0.3327|    5.3511|  0.0000|***    |
|polr       |Model3     |2+3&#124;1+2+3 |   4.6908|    0.7609|    6.1649|  0.0000|***    |
|polr       |Model4     |PM10_M3        |  -0.0108|    0.0065|   -1.6437|  0.1012|       |
|polr       |Model4     |0&#124;1       |  -0.3127|    0.3016|   -1.0368|  0.3006|       |
|polr       |Model4     |1&#124;2       |  -0.2873|    0.3015|   -0.9529|  0.3414|       |
|polr       |Model4     |2&#124;3       |   1.4921|    0.3205|    4.6551|  0.0000|***    |
|polr       |Model4     |3&#124;1+2     |   1.4921|    0.3205|    4.6551|  0.0000|***    |
|polr       |Model4     |1+2&#124;1+3   |   1.7096|    0.3283|    5.2077|  0.0000|***    |
|polr       |Model4     |1+3&#124;2+3   |   1.7096|    0.3283|    5.2077|  0.0000|***    |
|polr       |Model4     |2+3&#124;1+2+3 |   4.6196|    0.7589|    6.0871|  0.0000|***    |
|polr       |Model5     |PM10_M0        |  -0.0018|    0.0103|   -0.1727|  0.8630|       |
|polr       |Model5     |PM10_M1        |   0.0025|    0.0095|    0.2670|  0.7896|       |
|polr       |Model5     |0&#124;1       |   0.1823|    0.3356|    0.5433|  0.5873|       |
|polr       |Model5     |1&#124;2       |   0.2075|    0.3356|    0.6181|  0.5369|       |
|polr       |Model5     |2&#124;3       |   1.9784|    0.3596|    5.5015|  0.0000|***    |
|polr       |Model5     |3&#124;1+2     |   1.9785|    0.3596|    5.5015|  0.0000|***    |
|polr       |Model5     |1+2&#124;1+3   |   2.1956|    0.3667|    5.9878|  0.0000|***    |
|polr       |Model5     |1+3&#124;2+3   |   2.1956|    0.3667|    5.9878|  0.0000|***    |
|polr       |Model5     |2+3&#124;1+2+3 |   5.1008|    0.7766|    6.5684|  0.0000|***    |
|polr       |Model6     |PM10_M0        |  -0.0010|    0.0104|   -0.0999|  0.9205|       |
|polr       |Model6     |PM10_M1        |   0.0218|    0.0126|    1.7324|  0.0842|.      |
|polr       |Model6     |PM10_M2        |  -0.0256|    0.0109|   -2.3491|  0.0194|*      |
|polr       |Model6     |0&#124;1       |  -0.0679|    0.3531|   -0.1924|  0.8476|       |
|polr       |Model6     |1&#124;2       |  -0.0420|    0.3531|   -0.1191|  0.9053|       |
|polr       |Model6     |2&#124;3       |   1.7516|    0.3730|    4.6960|  0.0000|***    |
|polr       |Model6     |3&#124;1+2     |   1.7519|    0.3730|    4.6967|  0.0000|***    |
|polr       |Model6     |1+2&#124;1+3   |   1.9707|    0.3797|    5.1907|  0.0000|***    |
|polr       |Model6     |1+3&#124;2+3   |   1.9711|    0.3797|    5.1915|  0.0000|***    |
|polr       |Model6     |2+3&#124;1+2+3 |   4.8832|    0.7825|    6.2405|  0.0000|***    |
|polr       |Model7     |PM10_M0        |  -0.0052|    0.0111|   -0.4720|  0.6373|       |
|polr       |Model7     |PM10_M1        |   0.0248|    0.0129|    1.9158|  0.0563|.      |
|polr       |Model7     |PM10_M2        |  -0.0175|    0.0132|   -1.3192|  0.1881|       |
|polr       |Model7     |PM10_M3        |  -0.0110|    0.0102|   -1.0801|  0.2809|       |
|polr       |Model7     |0&#124;1       |  -0.2463|    0.3896|   -0.6323|  0.5277|       |
|polr       |Model7     |1&#124;2       |  -0.2196|    0.3895|   -0.5637|  0.5734|       |
|polr       |Model7     |2&#124;3       |   1.5765|    0.4060|    3.8834|  0.0001|***    |
|polr       |Model7     |3&#124;1+2     |   1.5767|    0.4060|    3.8837|  0.0001|***    |
|polr       |Model7     |1+2&#124;1+3   |   1.7950|    0.4120|    4.3565|  0.0000|***    |
|polr       |Model7     |1+3&#124;2+3   |   1.7952|    0.4120|    4.3570|  0.0000|***    |
|polr       |Model7     |2+3&#124;1+2+3 |   4.7048|    0.7978|    5.8971|  0.0000|***    |

---

### 污染物: PM10_24h Table: 模型汇总: PM10_24h 对 Brainstem dysfunction 的影响

|model_type |model_name |term           | estimate| std.error| statistic| p.value|signif |
|:----------|:----------|:--------------|--------:|---------:|---------:|-------:|:------|
|polr       |Model1     |PM10_24h_M0    |   0.0005|    0.0073|    0.0673|  0.9464|       |
|polr       |Model1     |0&#124;1       |   0.1704|    0.3195|    0.5333|  0.5942|       |
|polr       |Model1     |1&#124;2       |   0.1956|    0.3196|    0.6119|  0.5410|       |
|polr       |Model1     |2&#124;3       |   1.9661|    0.3442|    5.7121|  0.0000|***    |
|polr       |Model1     |3&#124;1+2     |   1.9661|    0.3442|    5.7121|  0.0000|***    |
|polr       |Model1     |1+2&#124;1+3   |   2.1831|    0.3515|    6.2100|  0.0000|***    |
|polr       |Model1     |1+3&#124;2+3   |   2.1831|    0.3515|    6.2100|  0.0000|***    |
|polr       |Model1     |2+3&#124;1+2+3 |   5.0891|    0.7698|    6.6109|  0.0000|***    |
|polr       |Model2     |PM10_24h_M1    |   0.0009|    0.0067|    0.1328|  0.8944|       |
|polr       |Model2     |0&#124;1       |   0.1873|    0.2999|    0.6245|  0.5327|       |
|polr       |Model2     |1&#124;2       |   0.2125|    0.2999|    0.7085|  0.4791|       |
|polr       |Model2     |2&#124;3       |   1.9829|    0.3268|    6.0674|  0.0000|***    |
|polr       |Model2     |3&#124;1+2     |   1.9829|    0.3268|    6.0675|  0.0000|***    |
|polr       |Model2     |1+2&#124;1+3   |   2.2000|    0.3346|    6.5741|  0.0000|***    |
|polr       |Model2     |1+3&#124;2+3   |   2.2000|    0.3346|    6.5741|  0.0000|***    |
|polr       |Model2     |2+3&#124;1+2+3 |   5.1051|    0.7620|    6.6999|  0.0000|***    |
|polr       |Model3     |PM10_24h_M2    |  -0.0093|    0.0067|   -1.3813|  0.1682|       |
|polr       |Model3     |0&#124;1       |  -0.2423|    0.3041|   -0.7968|  0.4262|       |
|polr       |Model3     |1&#124;2       |  -0.2170|    0.3041|   -0.7137|  0.4759|       |
|polr       |Model3     |2&#124;3       |   1.5603|    0.3234|    4.8240|  0.0000|***    |
|polr       |Model3     |3&#124;1+2     |   1.5603|    0.3234|    4.8240|  0.0000|***    |
|polr       |Model3     |1+2&#124;1+3   |   1.7783|    0.3309|    5.3733|  0.0000|***    |
|polr       |Model3     |1+3&#124;2+3   |   1.7783|    0.3309|    5.3733|  0.0000|***    |
|polr       |Model3     |2+3&#124;1+2+3 |   4.6859|    0.7594|    6.1703|  0.0000|***    |
|polr       |Model4     |PM10_24h_M3    |  -0.0110|    0.0066|   -1.6833|  0.0933|.      |
|polr       |Model4     |0&#124;1       |  -0.3221|    0.3006|   -1.0717|  0.2847|       |
|polr       |Model4     |1&#124;2       |  -0.2967|    0.3005|   -0.9875|  0.3241|       |
|polr       |Model4     |2&#124;3       |   1.4830|    0.3195|    4.6417|  0.0000|***    |
|polr       |Model4     |3&#124;1+2     |   1.4830|    0.3195|    4.6417|  0.0000|***    |
|polr       |Model4     |1+2&#124;1+3   |   1.7004|    0.3273|    5.1956|  0.0000|***    |
|polr       |Model4     |1+3&#124;2+3   |   1.7004|    0.3273|    5.1957|  0.0000|***    |
|polr       |Model4     |2+3&#124;1+2+3 |   4.6100|    0.7584|    6.0788|  0.0000|***    |
|polr       |Model5     |PM10_24h_M0    |  -0.0004|    0.0102|   -0.0356|  0.9716|       |
|polr       |Model5     |PM10_24h_M1    |   0.0011|    0.0094|    0.1187|  0.9056|       |
|polr       |Model5     |0&#124;1       |   0.1817|    0.3334|    0.5450|  0.5862|       |
|polr       |Model5     |1&#124;2       |   0.2069|    0.3335|    0.6203|  0.5355|       |
|polr       |Model5     |2&#124;3       |   1.9776|    0.3576|    5.5306|  0.0000|***    |
|polr       |Model5     |3&#124;1+2     |   1.9776|    0.3576|    5.5306|  0.0000|***    |
|polr       |Model5     |1+2&#124;1+3   |   2.1946|    0.3647|    6.0180|  0.0000|***    |
|polr       |Model5     |1+3&#124;2+3   |   2.1946|    0.3647|    6.0180|  0.0000|***    |
|polr       |Model5     |2+3&#124;1+2+3 |   5.1008|    0.7759|    6.5744|  0.0000|***    |
|polr       |Model6     |PM10_24h_M0    |   0.0003|    0.0103|    0.0338|  0.9731|       |
|polr       |Model6     |PM10_24h_M1    |   0.0201|    0.0126|    1.5986|  0.1109|       |
|polr       |Model6     |PM10_24h_M2    |  -0.0251|    0.0109|   -2.3024|  0.0220|*      |
|polr       |Model6     |0&#124;1       |  -0.0614|    0.3507|   -0.1751|  0.8611|       |
|polr       |Model6     |1&#124;2       |  -0.0354|    0.3507|   -0.1008|  0.9197|       |
|polr       |Model6     |2&#124;3       |   1.7573|    0.3708|    4.7387|  0.0000|***    |
|polr       |Model6     |3&#124;1+2     |   1.7576|    0.3708|    4.7394|  0.0000|***    |
|polr       |Model6     |1+2&#124;1+3   |   1.9763|    0.3775|    5.2348|  0.0000|***    |
|polr       |Model6     |1+3&#124;2+3   |   1.9766|    0.3775|    5.2355|  0.0000|***    |
|polr       |Model6     |2+3&#124;1+2+3 |   4.8883|    0.7815|    6.2553|  0.0000|***    |
|polr       |Model7     |PM10_24h_M0    |  -0.0038|    0.0110|   -0.3496|  0.7269|       |
|polr       |Model7     |PM10_24h_M1    |   0.0230|    0.0129|    1.7856|  0.0751|.      |
|polr       |Model7     |PM10_24h_M2    |  -0.0170|    0.0131|   -1.2913|  0.1976|       |
|polr       |Model7     |PM10_24h_M3    |  -0.0111|    0.0101|   -1.0949|  0.2744|       |
|polr       |Model7     |0&#124;1       |  -0.2441|    0.3874|   -0.6301|  0.5291|       |
|polr       |Model7     |1&#124;2       |  -0.2175|    0.3874|   -0.5615|  0.5749|       |
|polr       |Model7     |2&#124;3       |   1.5772|    0.4039|    3.9047|  0.0001|***    |
|polr       |Model7     |3&#124;1+2     |   1.5774|    0.4039|    3.9051|  0.0001|***    |
|polr       |Model7     |1+2&#124;1+3   |   1.7945|    0.4100|    4.3767|  0.0000|***    |
|polr       |Model7     |1+3&#124;2+3   |   1.7947|    0.4100|    4.3772|  0.0000|***    |
|polr       |Model7     |2+3&#124;1+2+3 |   4.7003|    0.7959|    5.9053|  0.0000|***    |

---

### 污染物: PM2.5 Table: 模型汇总: PM2.5 对 Brainstem dysfunction 的影响

|model_type |model_name |term           | estimate| std.error| statistic| p.value|signif |
|:----------|:----------|:--------------|--------:|---------:|---------:|-------:|:------|
|polr       |Model1     |PM2.5_M0       |  -0.0006|    0.0107|   -0.0544|  0.9566|       |
|polr       |Model1     |0&#124;1       |   0.1363|    0.2813|    0.4845|  0.6284|       |
|polr       |Model1     |1&#124;2       |   0.1614|    0.2813|    0.5737|  0.5666|       |
|polr       |Model1     |2&#124;3       |   1.9320|    0.3084|    6.2647|  0.0000|***    |
|polr       |Model1     |3&#124;1+2     |   1.9321|    0.3084|    6.2647|  0.0000|***    |
|polr       |Model1     |1+2&#124;1+3   |   2.1490|    0.3166|    6.7875|  0.0000|***    |
|polr       |Model1     |1+3&#124;2+3   |   2.1490|    0.3166|    6.7875|  0.0000|***    |
|polr       |Model1     |2+3&#124;1+2+3 |   5.0551|    0.7545|    6.6998|  0.0000|***    |
|polr       |Model2     |PM2.5_M1       |  -0.0025|    0.0100|   -0.2486|  0.8038|       |
|polr       |Model2     |0&#124;1       |   0.0897|    0.2683|    0.3344|  0.7383|       |
|polr       |Model2     |1&#124;2       |   0.1148|    0.2683|    0.4280|  0.6689|       |
|polr       |Model2     |2&#124;3       |   1.8852|    0.2962|    6.3643|  0.0000|***    |
|polr       |Model2     |3&#124;1+2     |   1.8852|    0.2962|    6.3643|  0.0000|***    |
|polr       |Model2     |1+2&#124;1+3   |   2.1024|    0.3048|    6.8971|  0.0000|***    |
|polr       |Model2     |1+3&#124;2+3   |   2.1024|    0.3048|    6.8972|  0.0000|***    |
|polr       |Model2     |2+3&#124;1+2+3 |   5.0079|    0.7493|    6.6835|  0.0000|***    |
|polr       |Model3     |PM2.5_M2       |  -0.0107|    0.0093|   -1.1468|  0.2524|       |
|polr       |Model3     |0&#124;1       |  -0.1172|    0.2576|   -0.4551|  0.6494|       |
|polr       |Model3     |1&#124;2       |  -0.0920|    0.2576|   -0.3571|  0.7212|       |
|polr       |Model3     |2&#124;3       |   1.6829|    0.2825|    5.9568|  0.0000|***    |
|polr       |Model3     |3&#124;1+2     |   1.6830|    0.2825|    5.9568|  0.0000|***    |
|polr       |Model3     |1+2&#124;1+3   |   1.9005|    0.2913|    6.5250|  0.0000|***    |
|polr       |Model3     |1+3&#124;2+3   |   1.9005|    0.2913|    6.5251|  0.0000|***    |
|polr       |Model3     |2+3&#124;1+2+3 |   4.8106|    0.7440|    6.4658|  0.0000|***    |
|polr       |Model4     |PM2.5_M3       |  -0.0100|    0.0090|   -1.1145|  0.2659|       |
|polr       |Model4     |0&#124;1       |  -0.1059|    0.2547|   -0.4158|  0.6778|       |
|polr       |Model4     |1&#124;2       |  -0.0806|    0.2547|   -0.3167|  0.7517|       |
|polr       |Model4     |2&#124;3       |   1.6932|    0.2807|    6.0326|  0.0000|***    |
|polr       |Model4     |3&#124;1+2     |   1.6932|    0.2807|    6.0326|  0.0000|***    |
|polr       |Model4     |1+2&#124;1+3   |   1.9104|    0.2896|    6.5963|  0.0000|***    |
|polr       |Model4     |1+3&#124;2+3   |   1.9104|    0.2896|    6.5963|  0.0000|***    |
|polr       |Model4     |2+3&#124;1+2+3 |   4.8188|    0.7431|    6.4851|  0.0000|***    |
|polr       |Model5     |PM2.5_M0       |   0.0032|    0.0162|    0.1976|  0.8435|       |
|polr       |Model5     |PM2.5_M1       |  -0.0047|    0.0150|   -0.3127|  0.7547|       |
|polr       |Model5     |0&#124;1       |   0.1120|    0.2914|    0.3844|  0.7010|       |
|polr       |Model5     |1&#124;2       |   0.1372|    0.2915|    0.4707|  0.6382|       |
|polr       |Model5     |2&#124;3       |   1.9077|    0.3175|    6.0087|  0.0000|***    |
|polr       |Model5     |3&#124;1+2     |   1.9077|    0.3175|    6.0087|  0.0000|***    |
|polr       |Model5     |1+2&#124;1+3   |   2.1248|    0.3255|    6.5282|  0.0000|***    |
|polr       |Model5     |1+3&#124;2+3   |   2.1248|    0.3255|    6.5282|  0.0000|***    |
|polr       |Model5     |2+3&#124;1+2+3 |   5.0310|    0.7581|    6.6360|  0.0000|***    |
|polr       |Model6     |PM2.5_M0       |  -0.0019|    0.0165|   -0.1130|  0.9101|       |
|polr       |Model6     |PM2.5_M1       |   0.0243|    0.0229|    1.0576|  0.2911|       |
|polr       |Model6     |PM2.5_M2       |  -0.0284|    0.0171|   -1.6640|  0.0971|.      |
|polr       |Model6     |0&#124;1       |  -0.0134|    0.3016|   -0.0446|  0.9645|       |
|polr       |Model6     |1&#124;2       |   0.0121|    0.3016|    0.0402|  0.9680|       |
|polr       |Model6     |2&#124;3       |   1.7940|    0.3250|    5.5192|  0.0000|***    |
|polr       |Model6     |3&#124;1+2     |   1.7943|    0.3250|    5.5200|  0.0000|***    |
|polr       |Model6     |1+2&#124;1+3   |   2.0124|    0.3327|    6.0481|  0.0000|***    |
|polr       |Model6     |1+3&#124;2+3   |   2.0128|    0.3328|    6.0490|  0.0000|***    |
|polr       |Model6     |2+3&#124;1+2+3 |   4.9295|    0.7625|    6.4647|  0.0000|***    |
|polr       |Model7     |PM2.5_M0       |  -0.0043|    0.0180|   -0.2395|  0.8109|       |
|polr       |Model7     |PM2.5_M1       |   0.0261|    0.0236|    1.1082|  0.2686|       |
|polr       |Model7     |PM2.5_M2       |  -0.0242|    0.0212|   -1.1398|  0.2553|       |
|polr       |Model7     |PM2.5_M3       |  -0.0055|    0.0161|   -0.3428|  0.7320|       |
|polr       |Model7     |0&#124;1       |  -0.0618|    0.3320|   -0.1860|  0.8525|       |
|polr       |Model7     |1&#124;2       |  -0.0356|    0.3320|   -0.1071|  0.9148|       |
|polr       |Model7     |2&#124;3       |   1.7456|    0.3534|    4.9392|  0.0000|***    |
|polr       |Model7     |3&#124;1+2     |   1.7458|    0.3534|    4.9397|  0.0000|***    |
|polr       |Model7     |1+2&#124;1+3   |   1.9637|    0.3605|    5.4468|  0.0000|***    |
|polr       |Model7     |1+3&#124;2+3   |   1.9640|    0.3605|    5.4473|  0.0000|***    |
|polr       |Model7     |2+3&#124;1+2+3 |   4.8770|    0.7740|    6.3013|  0.0000|***    |

---

### 污染物: PM2.5_24h Table: 模型汇总: PM2.5_24h 对 Brainstem dysfunction 的影响

|model_type |model_name |term           | estimate| std.error| statistic| p.value|signif |
|:----------|:----------|:--------------|--------:|---------:|---------:|-------:|:------|
|polr       |Model1     |PM2.5_24h_M0   |  -0.0004|    0.0107|   -0.0355|  0.9717|       |
|polr       |Model1     |0&#124;1       |   0.1413|    0.2807|    0.5034|  0.6150|       |
|polr       |Model1     |1&#124;2       |   0.1665|    0.2808|    0.5929|  0.5537|       |
|polr       |Model1     |2&#124;3       |   1.9368|    0.3080|    6.2881|  0.0000|***    |
|polr       |Model1     |3&#124;1+2     |   1.9368|    0.3080|    6.2881|  0.0000|***    |
|polr       |Model1     |1+2&#124;1+3   |   2.1538|    0.3162|    6.8109|  0.0000|***    |
|polr       |Model1     |1+3&#124;2+3   |   2.1538|    0.3162|    6.8110|  0.0000|***    |
|polr       |Model1     |2+3&#124;1+2+3 |   5.0600|    0.7543|    6.7078|  0.0000|***    |
|polr       |Model2     |PM2.5_24h_M1   |  -0.0031|    0.0100|   -0.3133|  0.7543|       |
|polr       |Model2     |0&#124;1       |   0.0739|    0.2679|    0.2757|  0.7830|       |
|polr       |Model2     |1&#124;2       |   0.0990|    0.2679|    0.3694|  0.7121|       |
|polr       |Model2     |2&#124;3       |   1.8697|    0.2956|    6.3249|  0.0000|***    |
|polr       |Model2     |3&#124;1+2     |   1.8697|    0.2956|    6.3249|  0.0000|***    |
|polr       |Model2     |1+2&#124;1+3   |   2.0869|    0.3042|    6.8597|  0.0000|***    |
|polr       |Model2     |1+3&#124;2+3   |   2.0869|    0.3042|    6.8597|  0.0000|***    |
|polr       |Model2     |2+3&#124;1+2+3 |   4.9930|    0.7492|    6.6648|  0.0000|***    |
|polr       |Model3     |PM2.5_24h_M2   |  -0.0109|    0.0093|   -1.1708|  0.2426|       |
|polr       |Model3     |0&#124;1       |  -0.1228|    0.2576|   -0.4768|  0.6338|       |
|polr       |Model3     |1&#124;2       |  -0.0976|    0.2576|   -0.3788|  0.7051|       |
|polr       |Model3     |2&#124;3       |   1.6776|    0.2824|    5.9406|  0.0000|***    |
|polr       |Model3     |3&#124;1+2     |   1.6776|    0.2824|    5.9406|  0.0000|***    |
|polr       |Model3     |1+2&#124;1+3   |   1.8952|    0.2911|    6.5097|  0.0000|***    |
|polr       |Model3     |1+3&#124;2+3   |   1.8952|    0.2911|    6.5097|  0.0000|***    |
|polr       |Model3     |2+3&#124;1+2+3 |   4.8051|    0.7439|    6.4593|  0.0000|***    |
|polr       |Model4     |PM2.5_24h_M3   |  -0.0101|    0.0090|   -1.1168|  0.2649|       |
|polr       |Model4     |0&#124;1       |  -0.1065|    0.2548|   -0.4181|  0.6762|       |
|polr       |Model4     |1&#124;2       |  -0.0813|    0.2548|   -0.3190|  0.7500|       |
|polr       |Model4     |2&#124;3       |   1.6925|    0.2808|    6.0270|  0.0000|***    |
|polr       |Model4     |3&#124;1+2     |   1.6925|    0.2808|    6.0270|  0.0000|***    |
|polr       |Model4     |1+2&#124;1+3   |   1.9098|    0.2898|    6.5908|  0.0000|***    |
|polr       |Model4     |1+3&#124;2+3   |   1.9098|    0.2898|    6.5908|  0.0000|***    |
|polr       |Model4     |2+3&#124;1+2+3 |   4.8182|    0.7431|    6.4839|  0.0000|***    |
|polr       |Model5     |PM2.5_24h_M0   |   0.0047|    0.0161|    0.2910|  0.7713|       |
|polr       |Model5     |PM2.5_24h_M1   |  -0.0063|    0.0150|   -0.4239|  0.6720|       |
|polr       |Model5     |0&#124;1       |   0.1074|    0.2911|    0.3690|  0.7124|       |
|polr       |Model5     |1&#124;2       |   0.1326|    0.2911|    0.4555|  0.6491|       |
|polr       |Model5     |2&#124;3       |   1.9033|    0.3171|    6.0019|  0.0000|***    |
|polr       |Model5     |3&#124;1+2     |   1.9033|    0.3171|    6.0019|  0.0000|***    |
|polr       |Model5     |1+2&#124;1+3   |   2.1203|    0.3251|    6.5219|  0.0000|***    |
|polr       |Model5     |1+3&#124;2+3   |   2.1203|    0.3251|    6.5219|  0.0000|***    |
|polr       |Model5     |2+3&#124;1+2+3 |   5.0268|    0.7580|    6.6317|  0.0000|***    |
|polr       |Model6     |PM2.5_24h_M0   |  -0.0003|    0.0164|   -0.0180|  0.9857|       |
|polr       |Model6     |PM2.5_24h_M1   |   0.0216|    0.0229|    0.9427|  0.3465|       |
|polr       |Model6     |PM2.5_24h_M2   |  -0.0274|    0.0171|   -1.6019|  0.1102|       |
|polr       |Model6     |0&#124;1       |  -0.0147|    0.3014|   -0.0488|  0.9611|       |
|polr       |Model6     |1&#124;2       |   0.0105|    0.3015|    0.0350|  0.9721|       |
|polr       |Model6     |2&#124;3       |   1.7915|    0.3249|    5.5140|  0.0000|***    |
|polr       |Model6     |3&#124;1+2     |   1.7917|    0.3249|    5.5147|  0.0000|***    |
|polr       |Model6     |1+2&#124;1+3   |   2.0093|    0.3326|    6.0417|  0.0000|***    |
|polr       |Model6     |1+3&#124;2+3   |   2.0098|    0.3326|    6.0428|  0.0000|***    |
|polr       |Model6     |2+3&#124;1+2+3 |   4.9232|    0.7617|    6.4632|  0.0000|***    |
|polr       |Model7     |PM2.5_24h_M0   |  -0.0025|    0.0179|   -0.1380|  0.8903|       |
|polr       |Model7     |PM2.5_24h_M1   |   0.0233|    0.0236|    0.9869|  0.3244|       |
|polr       |Model7     |PM2.5_24h_M2   |  -0.0237|    0.0208|   -1.1358|  0.2569|       |
|polr       |Model7     |PM2.5_24h_M3   |  -0.0049|    0.0158|   -0.3120|  0.7553|       |
|polr       |Model7     |0&#124;1       |  -0.0592|    0.3317|   -0.1784|  0.8586|       |
|polr       |Model7     |1&#124;2       |  -0.0332|    0.3317|   -0.1000|  0.9204|       |
|polr       |Model7     |2&#124;3       |   1.7477|    0.3532|    4.9487|  0.0000|***    |
|polr       |Model7     |3&#124;1+2     |   1.7479|    0.3532|    4.9492|  0.0000|***    |
|polr       |Model7     |1+2&#124;1+3   |   1.9656|    0.3603|    5.4557|  0.0000|***    |
|polr       |Model7     |1+3&#124;2+3   |   1.9658|    0.3603|    5.4563|  0.0000|***    |
|polr       |Model7     |2+3&#124;1+2+3 |   4.8781|    0.7737|    6.3046|  0.0000|***    |

---

### 污染物: SO2 Table: 模型汇总: SO2 对 Brainstem dysfunction 的影响

|model_type |model_name |term           | estimate| std.error| statistic| p.value|signif |
|:----------|:----------|:--------------|--------:|---------:|---------:|-------:|:------|
|polr       |Model1     |SO2_M0         |   0.0005|    0.0073|    0.0673|  0.9464|       |
|polr       |Model1     |0&#124;1       |   0.1704|    0.3195|    0.5333|  0.5942|       |
|polr       |Model1     |1&#124;2       |   0.1956|    0.3196|    0.6119|  0.5410|       |
|polr       |Model1     |2&#124;3       |   1.9661|    0.3442|    5.7121|  0.0000|***    |
|polr       |Model1     |3&#124;1+2     |   1.9661|    0.3442|    5.7121|  0.0000|***    |
|polr       |Model1     |1+2&#124;1+3   |   2.1831|    0.3515|    6.2100|  0.0000|***    |
|polr       |Model1     |1+3&#124;2+3   |   2.1831|    0.3515|    6.2100|  0.0000|***    |
|polr       |Model1     |2+3&#124;1+2+3 |   5.0891|    0.7698|    6.6109|  0.0000|***    |
|polr       |Model2     |SO2_M1         |   0.0009|    0.0067|    0.1328|  0.8944|       |
|polr       |Model2     |0&#124;1       |   0.1873|    0.2999|    0.6245|  0.5327|       |
|polr       |Model2     |1&#124;2       |   0.2125|    0.2999|    0.7085|  0.4791|       |
|polr       |Model2     |2&#124;3       |   1.9829|    0.3268|    6.0674|  0.0000|***    |
|polr       |Model2     |3&#124;1+2     |   1.9829|    0.3268|    6.0675|  0.0000|***    |
|polr       |Model2     |1+2&#124;1+3   |   2.2000|    0.3346|    6.5741|  0.0000|***    |
|polr       |Model2     |1+3&#124;2+3   |   2.2000|    0.3346|    6.5741|  0.0000|***    |
|polr       |Model2     |2+3&#124;1+2+3 |   5.1051|    0.7620|    6.6999|  0.0000|***    |
|polr       |Model3     |SO2_M2         |  -0.0093|    0.0067|   -1.3813|  0.1682|       |
|polr       |Model3     |0&#124;1       |  -0.2423|    0.3041|   -0.7968|  0.4262|       |
|polr       |Model3     |1&#124;2       |  -0.2170|    0.3041|   -0.7137|  0.4759|       |
|polr       |Model3     |2&#124;3       |   1.5603|    0.3234|    4.8240|  0.0000|***    |
|polr       |Model3     |3&#124;1+2     |   1.5603|    0.3234|    4.8240|  0.0000|***    |
|polr       |Model3     |1+2&#124;1+3   |   1.7783|    0.3309|    5.3733|  0.0000|***    |
|polr       |Model3     |1+3&#124;2+3   |   1.7783|    0.3309|    5.3733|  0.0000|***    |
|polr       |Model3     |2+3&#124;1+2+3 |   4.6859|    0.7594|    6.1703|  0.0000|***    |
|polr       |Model4     |SO2_M3         |  -0.0110|    0.0066|   -1.6833|  0.0933|.      |
|polr       |Model4     |0&#124;1       |  -0.3221|    0.3006|   -1.0717|  0.2847|       |
|polr       |Model4     |1&#124;2       |  -0.2967|    0.3005|   -0.9875|  0.3241|       |
|polr       |Model4     |2&#124;3       |   1.4830|    0.3195|    4.6417|  0.0000|***    |
|polr       |Model4     |3&#124;1+2     |   1.4830|    0.3195|    4.6417|  0.0000|***    |
|polr       |Model4     |1+2&#124;1+3   |   1.7004|    0.3273|    5.1956|  0.0000|***    |
|polr       |Model4     |1+3&#124;2+3   |   1.7004|    0.3273|    5.1957|  0.0000|***    |
|polr       |Model4     |2+3&#124;1+2+3 |   4.6100|    0.7584|    6.0788|  0.0000|***    |
|polr       |Model5     |SO2_M0         |  -0.0004|    0.0102|   -0.0356|  0.9716|       |
|polr       |Model5     |SO2_M1         |   0.0011|    0.0094|    0.1187|  0.9056|       |
|polr       |Model5     |0&#124;1       |   0.1817|    0.3334|    0.5450|  0.5862|       |
|polr       |Model5     |1&#124;2       |   0.2069|    0.3335|    0.6203|  0.5355|       |
|polr       |Model5     |2&#124;3       |   1.9776|    0.3576|    5.5306|  0.0000|***    |
|polr       |Model5     |3&#124;1+2     |   1.9776|    0.3576|    5.5306|  0.0000|***    |
|polr       |Model5     |1+2&#124;1+3   |   2.1946|    0.3647|    6.0180|  0.0000|***    |
|polr       |Model5     |1+3&#124;2+3   |   2.1946|    0.3647|    6.0180|  0.0000|***    |
|polr       |Model5     |2+3&#124;1+2+3 |   5.1008|    0.7759|    6.5744|  0.0000|***    |
|polr       |Model6     |SO2_M0         |   0.0003|    0.0103|    0.0338|  0.9731|       |
|polr       |Model6     |SO2_M1         |   0.0201|    0.0126|    1.5986|  0.1109|       |
|polr       |Model6     |SO2_M2         |  -0.0251|    0.0109|   -2.3024|  0.0220|*      |
|polr       |Model6     |0&#124;1       |  -0.0614|    0.3507|   -0.1751|  0.8611|       |
|polr       |Model6     |1&#124;2       |  -0.0354|    0.3507|   -0.1008|  0.9197|       |
|polr       |Model6     |2&#124;3       |   1.7573|    0.3708|    4.7387|  0.0000|***    |
|polr       |Model6     |3&#124;1+2     |   1.7576|    0.3708|    4.7394|  0.0000|***    |
|polr       |Model6     |1+2&#124;1+3   |   1.9763|    0.3775|    5.2348|  0.0000|***    |
|polr       |Model6     |1+3&#124;2+3   |   1.9766|    0.3775|    5.2355|  0.0000|***    |
|polr       |Model6     |2+3&#124;1+2+3 |   4.8883|    0.7815|    6.2553|  0.0000|***    |
|polr       |Model7     |SO2_M0         |  -0.0038|    0.0110|   -0.3496|  0.7269|       |
|polr       |Model7     |SO2_M1         |   0.0230|    0.0129|    1.7856|  0.0751|.      |
|polr       |Model7     |SO2_M2         |  -0.0170|    0.0131|   -1.2913|  0.1976|       |
|polr       |Model7     |SO2_M3         |  -0.0111|    0.0101|   -1.0949|  0.2744|       |
|polr       |Model7     |0&#124;1       |  -0.2441|    0.3874|   -0.6301|  0.5291|       |
|polr       |Model7     |1&#124;2       |  -0.2175|    0.3874|   -0.5615|  0.5749|       |
|polr       |Model7     |2&#124;3       |   1.5772|    0.4039|    3.9047|  0.0001|***    |
|polr       |Model7     |3&#124;1+2     |   1.5774|    0.4039|    3.9051|  0.0001|***    |
|polr       |Model7     |1+2&#124;1+3   |   1.7945|    0.4100|    4.3767|  0.0000|***    |
|polr       |Model7     |1+3&#124;2+3   |   1.7947|    0.4100|    4.3772|  0.0000|***    |
|polr       |Model7     |2+3&#124;1+2+3 |   4.7003|    0.7959|    5.9053|  0.0000|***    |

---

### 污染物: SO2_24h Table: 模型汇总: SO2_24h 对 Brainstem dysfunction 的影响

|model_type |model_name |term           | estimate| std.error| statistic| p.value|signif |
|:----------|:----------|:--------------|--------:|---------:|---------:|-------:|:------|
|polr       |Model1     |SO2_24h_M0     |   0.0541|    0.0313|    1.7283|  0.0849|.      |
|polr       |Model1     |0&#124;1       |   0.6099|    0.2895|    2.1066|  0.0360|*      |
|polr       |Model1     |1&#124;2       |   0.6353|    0.2897|    2.1929|  0.0291|*      |
|polr       |Model1     |2&#124;3       |   2.4203|    0.3261|    7.4213|  0.0000|***    |
|polr       |Model1     |3&#124;1+2     |   2.4203|    0.3261|    7.4214|  0.0000|***    |
|polr       |Model1     |1+2&#124;1+3   |   2.6373|    0.3341|    7.8945|  0.0000|***    |
|polr       |Model1     |1+3&#124;2+3   |   2.6373|    0.3341|    7.8946|  0.0000|***    |
|polr       |Model1     |2+3&#124;1+2+3 |   5.5430|    0.7625|    7.2691|  0.0000|***    |
|polr       |Model2     |SO2_24h_M1     |   0.0470|    0.0328|    1.4354|  0.1522|       |
|polr       |Model2     |0&#124;1       |   0.5498|    0.3013|    1.8248|  0.0690|.      |
|polr       |Model2     |1&#124;2       |   0.5751|    0.3015|    1.9077|  0.0573|.      |
|polr       |Model2     |2&#124;3       |   2.3567|    0.3360|    7.0147|  0.0000|***    |
|polr       |Model2     |3&#124;1+2     |   2.3567|    0.3360|    7.0148|  0.0000|***    |
|polr       |Model2     |1+2&#124;1+3   |   2.5741|    0.3438|    7.4865|  0.0000|***    |
|polr       |Model2     |1+3&#124;2+3   |   2.5741|    0.3438|    7.4865|  0.0000|***    |
|polr       |Model2     |2+3&#124;1+2+3 |   5.4784|    0.7663|    7.1489|  0.0000|***    |
|polr       |Model3     |SO2_24h_M2     |  -0.0002|    0.0313|   -0.0065|  0.9948|       |
|polr       |Model3     |0&#124;1       |   0.1484|    0.2911|    0.5098|  0.6105|       |
|polr       |Model3     |1&#124;2       |   0.1736|    0.2911|    0.5962|  0.5515|       |
|polr       |Model3     |2&#124;3       |   1.9440|    0.3186|    6.1017|  0.0000|***    |
|polr       |Model3     |3&#124;1+2     |   1.9441|    0.3186|    6.1018|  0.0000|***    |
|polr       |Model3     |1+2&#124;1+3   |   2.1612|    0.3263|    6.6227|  0.0000|***    |
|polr       |Model3     |1+3&#124;2+3   |   2.1612|    0.3263|    6.6227|  0.0000|***    |
|polr       |Model3     |2+3&#124;1+2+3 |   5.0658|    0.7575|    6.6878|  0.0000|***    |
|polr       |Model4     |SO2_24h_M3     |  -0.0065|    0.0297|   -0.2184|  0.8272|       |
|polr       |Model4     |0&#124;1       |   0.0938|    0.2819|    0.3328|  0.7395|       |
|polr       |Model4     |1&#124;2       |   0.1190|    0.2820|    0.4219|  0.6734|       |
|polr       |Model4     |2&#124;3       |   1.8892|    0.3094|    6.1052|  0.0000|***    |
|polr       |Model4     |3&#124;1+2     |   1.8892|    0.3094|    6.1052|  0.0000|***    |
|polr       |Model4     |1+2&#124;1+3   |   2.1065|    0.3174|    6.6367|  0.0000|***    |
|polr       |Model4     |1+3&#124;2+3   |   2.1065|    0.3174|    6.6368|  0.0000|***    |
|polr       |Model4     |2+3&#124;1+2+3 |   5.0137|    0.7541|    6.6484|  0.0000|***    |
|polr       |Model5     |SO2_24h_M0     |   0.0587|    0.0607|    0.9673|  0.3342|       |
|polr       |Model5     |SO2_24h_M1     |  -0.0058|    0.0639|   -0.0905|  0.9279|       |
|polr       |Model5     |0&#124;1       |   0.6003|    0.3065|    1.9584|  0.0511|.      |
|polr       |Model5     |1&#124;2       |   0.6258|    0.3067|    2.0402|  0.0422|*      |
|polr       |Model5     |2&#124;3       |   2.4106|    0.3417|    7.0548|  0.0000|***    |
|polr       |Model5     |3&#124;1+2     |   2.4106|    0.3417|    7.0548|  0.0000|***    |
|polr       |Model5     |1+2&#124;1+3   |   2.6275|    0.3494|    7.5207|  0.0000|***    |
|polr       |Model5     |1+3&#124;2+3   |   2.6275|    0.3494|    7.5207|  0.0000|***    |
|polr       |Model5     |2+3&#124;1+2+3 |   5.5313|    0.7688|    7.1946|  0.0000|***    |
|polr       |Model6     |SO2_24h_M0     |   0.0635|    0.0612|    1.0373|  0.3004|       |
|polr       |Model6     |SO2_24h_M1     |   0.0964|    0.0806|    1.1964|  0.2324|       |
|polr       |Model6     |SO2_24h_M2     |  -0.1217|    0.0581|   -2.0957|  0.0369|*      |
|polr       |Model6     |0&#124;1       |   0.4634|    0.3138|    1.4767|  0.1408|       |
|polr       |Model6     |1&#124;2       |   0.4896|    0.3139|    1.5594|  0.1199|       |
|polr       |Model6     |2&#124;3       |   2.2902|    0.3468|    6.6038|  0.0000|***    |
|polr       |Model6     |3&#124;1+2     |   2.2905|    0.3468|    6.6044|  0.0000|***    |
|polr       |Model6     |1+2&#124;1+3   |   2.5089|    0.3543|    7.0807|  0.0000|***    |
|polr       |Model6     |1+3&#124;2+3   |   2.5092|    0.3543|    7.0813|  0.0000|***    |
|polr       |Model6     |2+3&#124;1+2+3 |   5.4223|    0.7715|    7.0278|  0.0000|***    |
|polr       |Model7     |SO2_24h_M0     |   0.0619|    0.0617|    1.0029|  0.3167|       |
|polr       |Model7     |SO2_24h_M1     |   0.0977|    0.0808|    1.2086|  0.2277|       |
|polr       |Model7     |SO2_24h_M2     |  -0.1115|    0.0759|   -1.4699|  0.1426|       |
|polr       |Model7     |SO2_24h_M3     |  -0.0114|    0.0549|   -0.2075|  0.8358|       |
|polr       |Model7     |0&#124;1       |   0.4483|    0.3223|    1.3911|  0.1652|       |
|polr       |Model7     |1&#124;2       |   0.4747|    0.3225|    1.4722|  0.1420|       |
|polr       |Model7     |2&#124;3       |   2.2757|    0.3546|    6.4181|  0.0000|***    |
|polr       |Model7     |3&#124;1+2     |   2.2759|    0.3546|    6.4186|  0.0000|***    |
|polr       |Model7     |1+2&#124;1+3   |   2.4940|    0.3619|    6.8913|  0.0000|***    |
|polr       |Model7     |1+3&#124;2+3   |   2.4942|    0.3619|    6.8917|  0.0000|***    |
|polr       |Model7     |2+3&#124;1+2+3 |   5.4079|    0.7750|    6.9777|  0.0000|***    |
