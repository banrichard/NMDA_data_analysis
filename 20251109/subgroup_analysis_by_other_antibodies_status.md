other_antibodies_status亚组分析报告



# 分析结局: CSFrank



## 分析污染物: AQI



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|AQI_M0                                             |   0.0238|    0.0096|    2.4755|  0.0138|*      |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.6402|    1.1549|    0.5543|  0.5798|       |
|   0|AQI_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0127|    0.0266|   -0.4792|  0.6321|       |
|   0|Strong&#124;Positive                               |   0.9527|    0.4229|    2.2528|  0.0250|*      |
|   0|Positive&#124;Weak                                 |   3.7593|    0.4868|    7.7217|  0.0000|***    |
|   1|AQI_M1                                             |   0.0137|    0.0090|    1.5177|  0.1301|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |   0.2607|    1.0263|    0.2540|  0.7996|       |
|   1|AQI_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0042|    0.0223|   -0.1905|  0.8491|       |
|   1|Strong&#124;Positive                               |   0.5272|    0.3988|    1.3218|  0.1872|       |
|   1|Positive&#124;Weak                                 |   3.3123|    0.4582|    7.2292|  0.0000|***    |
|   2|AQI_M2                                             |   0.0164|    0.0085|    1.9240|  0.0553|.      |
|   2|other_antibodies_statusHas_Other_Antibodies        |  -0.3671|    0.9618|   -0.3817|  0.7030|       |
|   2|AQI_M2:other_antibodies_statusHas_Other_Antibodies |   0.0105|    0.0207|    0.5060|  0.6132|       |
|   2|Strong&#124;Positive                               |   0.6576|    0.3875|    1.6972|  0.0906|.      |
|   2|Positive&#124;Weak                                 |   3.4628|    0.4514|    7.6706|  0.0000|***    |
|   3|AQI_M3                                             |   0.0061|    0.0080|    0.7567|  0.4498|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |  -0.2101|    0.9516|   -0.2208|  0.8254|       |
|   3|AQI_M3:other_antibodies_statusHas_Other_Antibodies |   0.0069|    0.0204|    0.3386|  0.7351|       |
|   3|Strong&#124;Positive                               |   0.2157|    0.3713|    0.5811|  0.5616|       |
|   3|Positive&#124;Weak                                 |   2.9927|    0.4279|    6.9937|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term   | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |AQI_M0 |   0.0247|    0.0098|    2.5256|  0.0121|*      |
|   1|No_Other_Antibodies     |AQI_M1 |   0.0141|    0.0091|    1.5497|  0.1224|       |
|   2|No_Other_Antibodies     |AQI_M2 |   0.0169|    0.0086|    1.9608|  0.0509|.      |
|   3|No_Other_Antibodies     |AQI_M3 |   0.0063|    0.0081|    0.7722|  0.4407|       |
|   0|Has_Other_Antibodies    |AQI_M0 |   0.0091|    0.0233|    0.3924|  0.6967|       |
|   1|Has_Other_Antibodies    |AQI_M1 |   0.0079|    0.0194|    0.4073|  0.6858|       |
|   2|Has_Other_Antibodies    |AQI_M2 |   0.0223|    0.0178|    1.2504|  0.2179|       |
|   3|Has_Other_Antibodies    |AQI_M3 |   0.0109|    0.0177|    0.6156|  0.5414|       |


## 分析污染物: CO



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|CO_M0                                             |   2.0995|    0.7954|    2.6397|  0.0087|**     |
|   0|other_antibodies_statusHas_Other_Antibodies       |  -1.3092|    1.5515|   -0.8439|  0.3994|       |
|   0|CO_M0:other_antibodies_statusHas_Other_Antibodies |   2.0532|    2.1586|    0.9512|  0.3422|       |
|   0|Strong&#124;Positive                              |   1.4272|    0.5735|    2.4886|  0.0133|*      |
|   0|Positive&#124;Weak                                |   4.2752|    0.6336|    6.7477|  0.0000|***    |
|   1|CO_M1                                             |   1.3698|    0.7394|    1.8524|  0.0649|.      |
|   1|other_antibodies_statusHas_Other_Antibodies       |  -1.4214|    1.3949|   -1.0189|  0.3090|       |
|   1|CO_M1:other_antibodies_statusHas_Other_Antibodies |   2.1125|    1.8829|    1.1219|  0.2627|       |
|   1|Strong&#124;Positive                              |   0.9223|    0.5395|    1.7097|  0.0883|.      |
|   1|Positive&#124;Weak                                |   3.7441|    0.5923|    6.3212|  0.0000|***    |
|   2|CO_M2                                             |   0.8029|    0.6865|    1.1696|  0.2431|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |  -2.1743|    1.3379|   -1.6251|  0.1051|       |
|   2|CO_M2:other_antibodies_statusHas_Other_Antibodies |   3.1481|    1.7857|    1.7630|  0.0789|.      |
|   2|Strong&#124;Positive                              |   0.5207|    0.5063|    1.0284|  0.3046|       |
|   2|Positive&#124;Weak                                |   3.3443|    0.5552|    6.0235|  0.0000|***    |
|   3|CO_M3                                             |   0.5750|    0.6545|    0.8786|  0.3803|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |  -1.4916|    1.3662|   -1.0917|  0.2758|       |
|   3|CO_M3:other_antibodies_statusHas_Other_Antibodies |   2.2209|    1.8479|    1.2019|  0.2303|       |
|   3|Strong&#124;Positive                              |   0.3637|    0.4879|    0.7454|  0.4566|       |
|   3|Positive&#124;Weak                                |   3.1574|    0.5348|    5.9037|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term  | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:-----|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |CO_M0 |   2.1728|    0.8087|    2.6868|  0.0077|**     |
|   1|No_Other_Antibodies     |CO_M1 |   1.4121|    0.7497|    1.8836|  0.0607|.      |
|   2|No_Other_Antibodies     |CO_M2 |   0.8222|    0.6924|    1.1874|  0.2361|       |
|   3|No_Other_Antibodies     |CO_M3 |   0.5908|    0.6605|    0.8943|  0.3719|       |
|   0|Has_Other_Antibodies    |CO_M0 |   3.3987|    1.9837|    1.7133|  0.0939|.      |
|   1|Has_Other_Antibodies    |CO_M1 |   2.8378|    1.6555|    1.7141|  0.0937|.      |
|   2|Has_Other_Antibodies    |CO_M2 |   3.2497|    1.5881|    2.0462|  0.0469|*      |
|   3|Has_Other_Antibodies    |CO_M3 |   2.2967|    1.6181|    1.4194|  0.1630|       |


## 分析污染物: NO2



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|NO2_M0                                             |   0.0192|    0.0105|    1.8274|  0.0686|.      |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.6807|    0.7834|    0.8689|  0.3856|       |
|   0|NO2_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0252|    0.0334|   -0.7553|  0.4506|       |
|   0|Strong&#124;Positive                               |   0.4072|    0.2776|    1.4668|  0.1434|       |
|   0|Positive&#124;Weak                                 |   3.1976|    0.3553|    8.9991|  0.0000|***    |
|   1|NO2_M1                                             |   0.0148|    0.0099|    1.4919|  0.1367|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |   0.5430|    0.7010|    0.7747|  0.4391|       |
|   1|NO2_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0191|    0.0273|   -0.7003|  0.4842|       |
|   1|Strong&#124;Positive                               |   0.2991|    0.2630|    1.1372|  0.2563|       |
|   1|Positive&#124;Weak                                 |   3.0834|    0.3416|    9.0275|  0.0000|***    |
|   2|NO2_M2                                             |   0.0119|    0.0095|    1.2538|  0.2108|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |  -0.3634|    0.7211|   -0.5040|  0.6146|       |
|   2|NO2_M2:other_antibodies_statusHas_Other_Antibodies |   0.0197|    0.0271|    0.7273|  0.4676|       |
|   2|Strong&#124;Positive                               |   0.2368|    0.2592|    0.9136|  0.3616|       |
|   2|Positive&#124;Weak                                 |   3.0290|    0.3374|    8.9776|  0.0000|***    |
|   3|NO2_M3                                             |   0.0031|    0.0093|    0.3365|  0.7367|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   0.2303|    0.6453|    0.3570|  0.7213|       |
|   3|NO2_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0056|    0.0239|   -0.2355|  0.8139|       |
|   3|Strong&#124;Positive                               |   0.0273|    0.2584|    0.1055|  0.9161|       |
|   3|Positive&#124;Weak                                 |   2.7990|    0.3303|    8.4754|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term   | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |NO2_M0 |   0.0199|    0.0107|    1.8666|  0.0630|.      |
|   1|No_Other_Antibodies     |NO2_M1 |   0.0154|    0.0101|    1.5255|  0.1283|       |
|   2|No_Other_Antibodies     |NO2_M2 |   0.0123|    0.0096|    1.2797|  0.2017|       |
|   3|No_Other_Antibodies     |NO2_M3 |   0.0032|    0.0094|    0.3438|  0.7313|       |
|   0|Has_Other_Antibodies    |NO2_M0 |  -0.0049|    0.0298|   -0.1646|  0.8701|       |
|   1|Has_Other_Antibodies    |NO2_M1 |  -0.0035|    0.0240|   -0.1478|  0.8832|       |
|   2|Has_Other_Antibodies    |NO2_M2 |   0.0252|    0.0235|    1.0732|  0.2892|       |
|   3|Has_Other_Antibodies    |NO2_M3 |  -0.0021|    0.0208|   -0.0997|  0.9210|       |


## 分析污染物: O3



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|O3_M0                                             |   0.0019|    0.0076|    0.2575|  0.7969|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |   1.3136|    1.5882|    0.8271|  0.4088|       |
|   0|O3_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0196|    0.0251|   -0.7829|  0.4343|       |
|   0|Strong&#124;Positive                              |   0.0612|    0.4486|    0.1365|  0.8915|       |
|   0|Positive&#124;Weak                                |   2.8356|    0.4942|    5.7377|  0.0000|***    |
|   1|O3_M1                                             |  -0.0111|    0.0088|   -1.2627|  0.2076|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |   0.4763|    1.3964|    0.3411|  0.7333|       |
|   1|O3_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0050|    0.0221|   -0.2272|  0.8204|       |
|   1|Strong&#124;Positive                              |  -0.6787|    0.5115|   -1.3269|  0.1855|       |
|   1|Positive&#124;Weak                                |   2.1047|    0.5411|    3.8899|  0.0001|***    |
|   2|O3_M2                                             |   0.0086|    0.0081|    1.0568|  0.2914|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |   1.4842|    1.1659|    1.2730|  0.2040|       |
|   2|O3_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0236|    0.0191|   -1.2363|  0.2173|       |
|   2|Strong&#124;Positive                              |   0.4521|    0.4903|    0.9221|  0.3572|       |
|   2|Positive&#124;Weak                                |   3.2336|    0.5382|    6.0083|  0.0000|***    |
|   3|O3_M3                                             |  -0.0056|    0.0078|   -0.7176|  0.4735|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |  -0.6979|    1.2582|   -0.5547|  0.5795|       |
|   3|O3_M3:other_antibodies_statusHas_Other_Antibodies |   0.0137|    0.0207|    0.6602|  0.5096|       |
|   3|Strong&#124;Positive                              |  -0.3662|    0.4565|   -0.8023|  0.4230|       |
|   3|Positive&#124;Weak                                |   2.4086|    0.4949|    4.8669|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term  | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:-----|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |O3_M0 |   0.0020|    0.0076|    0.2627|  0.7930|       |
|   1|No_Other_Antibodies     |O3_M1 |  -0.0115|    0.0089|   -1.2910|  0.1978|       |
|   2|No_Other_Antibodies     |O3_M2 |   0.0088|    0.0082|    1.0778|  0.2821|       |
|   3|No_Other_Antibodies     |O3_M3 |  -0.0057|    0.0079|   -0.7235|  0.4700|       |
|   0|Has_Other_Antibodies    |O3_M0 |  -0.0152|    0.0230|   -0.6627|  0.5110|       |
|   1|Has_Other_Antibodies    |O3_M1 |  -0.0138|    0.0195|   -0.7068|  0.4835|       |
|   2|Has_Other_Antibodies    |O3_M2 |  -0.0128|    0.0166|   -0.7744|  0.4429|       |
|   3|Has_Other_Antibodies    |O3_M3 |   0.0067|    0.0181|    0.3704|  0.7129|       |


## 分析污染物: PM10



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                                | estimate| std.error| statistic| p.value|signif |
|---:|:---------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|PM10_M0                                             |   0.0210|    0.0082|    2.5518|  0.0112|*      |
|   0|other_antibodies_statusHas_Other_Antibodies         |   0.6113|    0.9481|    0.6447|  0.5196|       |
|   0|PM10_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0124|    0.0219|   -0.5631|  0.5738|       |
|   0|Strong&#124;Positive                                |   0.8143|    0.3596|    2.2643|  0.0242|*      |
|   0|Positive&#124;Weak                                  |   3.6226|    0.4302|    8.4206|  0.0000|***    |
|   1|PM10_M1                                             |   0.0142|    0.0077|    1.8498|  0.0653|.      |
|   1|other_antibodies_statusHas_Other_Antibodies         |   0.2675|    0.8546|    0.3130|  0.7545|       |
|   1|PM10_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0046|    0.0185|   -0.2472|  0.8049|       |
|   1|Strong&#124;Positive                                |   0.5339|    0.3377|    1.5809|  0.1149|       |
|   1|Positive&#124;Weak                                  |   3.3264|    0.4066|    8.1804|  0.0000|***    |
|   2|PM10_M2                                             |   0.0170|    0.0076|    2.2312|  0.0264|*      |
|   2|other_antibodies_statusHas_Other_Antibodies         |  -0.2473|    0.8203|   -0.3015|  0.7632|       |
|   2|PM10_M2:other_antibodies_statusHas_Other_Antibodies |   0.0076|    0.0175|    0.4330|  0.6653|       |
|   2|Strong&#124;Positive                                |   0.6614|    0.3413|    1.9377|  0.0536|.      |
|   2|Positive&#124;Weak                                  |   3.4774|    0.4130|    8.4207|  0.0000|***    |
|   3|PM10_M3                                             |   0.0071|    0.0070|    1.0088|  0.3138|       |
|   3|other_antibodies_statusHas_Other_Antibodies         |  -0.1197|    0.8252|   -0.1450|  0.8848|       |
|   3|PM10_M3:other_antibodies_statusHas_Other_Antibodies |   0.0050|    0.0176|    0.2827|  0.7776|       |
|   3|Strong&#124;Positive                                |   0.2552|    0.3257|    0.7836|  0.4339|       |
|   3|Positive&#124;Weak                                  |   3.0352|    0.3900|    7.7831|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term    | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:-------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |PM10_M0 |   0.0218|    0.0084|    2.6026|  0.0098|**     |
|   1|No_Other_Antibodies     |PM10_M1 |   0.0147|    0.0078|    1.8883|  0.0601|.      |
|   2|No_Other_Antibodies     |PM10_M2 |   0.0175|    0.0077|    2.2722|  0.0239|*      |
|   3|No_Other_Antibodies     |PM10_M3 |   0.0073|    0.0071|    1.0293|  0.3043|       |
|   0|Has_Other_Antibodies    |PM10_M0 |   0.0072|    0.0191|    0.3753|  0.7093|       |
|   1|Has_Other_Antibodies    |PM10_M1 |   0.0080|    0.0159|    0.5022|  0.6181|       |
|   2|Has_Other_Antibodies    |PM10_M2 |   0.0201|    0.0148|    1.3596|  0.1810|       |
|   3|Has_Other_Antibodies    |PM10_M3 |   0.0100|    0.0152|    0.6604|  0.5125|       |


## 分析污染物: PM2.5



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                                 | estimate| std.error| statistic| p.value|signif |
|---:|:----------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|PM2.5_M0                                             |   0.0302|    0.0120|    2.5277|  0.0120|*      |
|   0|other_antibodies_statusHas_Other_Antibodies          |   0.2386|    0.8560|    0.2788|  0.7806|       |
|   0|PM2.5_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0050|    0.0339|   -0.1485|  0.8820|       |
|   0|Strong&#124;Positive                                 |   0.6732|    0.3108|    2.1664|  0.0310|*      |
|   0|Positive&#124;Weak                                   |   3.4852|    0.3883|    8.9764|  0.0000|***    |
|   1|PM2.5_M1                                             |   0.0181|    0.0111|    1.6258|  0.1050|       |
|   1|other_antibodies_statusHas_Other_Antibodies          |   0.0094|    0.7691|    0.0122|  0.9902|       |
|   1|PM2.5_M1:other_antibodies_statusHas_Other_Antibodies |   0.0027|    0.0277|    0.0982|  0.9218|       |
|   1|Strong&#124;Positive                                 |   0.3896|    0.2961|    1.3160|  0.1891|       |
|   1|Positive&#124;Weak                                   |   3.1794|    0.3692|    8.6123|  0.0000|***    |
|   2|PM2.5_M2                                             |   0.0196|    0.0103|    1.9117|  0.0568|.      |
|   2|other_antibodies_statusHas_Other_Antibodies          |  -0.3221|    0.7223|   -0.4460|  0.6559|       |
|   2|PM2.5_M2:other_antibodies_statusHas_Other_Antibodies |   0.0160|    0.0254|    0.6322|  0.5277|       |
|   2|Strong&#124;Positive                                 |   0.4373|    0.2824|    1.5485|  0.1225|       |
|   2|Positive&#124;Weak                                   |   3.2448|    0.3605|    9.0000|  0.0000|***    |
|   3|PM2.5_M3                                             |   0.0108|    0.0099|    1.0934|  0.2751|       |
|   3|other_antibodies_statusHas_Other_Antibodies          |  -0.1098|    0.6975|   -0.1574|  0.8750|       |
|   3|PM2.5_M3:other_antibodies_statusHas_Other_Antibodies |   0.0078|    0.0240|    0.3234|  0.7466|       |
|   3|Strong&#124;Positive                                 |   0.2235|    0.2778|    0.8045|  0.4217|       |
|   3|Positive&#124;Weak                                   |   3.0055|    0.3504|    8.5771|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term     | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:--------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |PM2.5_M0 |   0.0313|    0.0121|    2.5790|  0.0104|*      |
|   1|No_Other_Antibodies     |PM2.5_M1 |   0.0187|    0.0113|    1.6595|  0.0982|.      |
|   2|No_Other_Antibodies     |PM2.5_M2 |   0.0203|    0.0104|    1.9483|  0.0524|.      |
|   3|No_Other_Antibodies     |PM2.5_M3 |   0.0111|    0.0100|    1.1167|  0.2651|       |
|   0|Has_Other_Antibodies    |PM2.5_M0 |   0.0206|    0.0297|    0.6921|  0.4926|       |
|   1|Has_Other_Antibodies    |PM2.5_M1 |   0.0175|    0.0241|    0.7264|  0.4715|       |
|   2|Has_Other_Antibodies    |PM2.5_M2 |   0.0296|    0.0219|    1.3525|  0.1833|       |
|   3|Has_Other_Antibodies    |PM2.5_M3 |   0.0155|    0.0207|    0.7502|  0.4572|       |


## 分析污染物: SO2



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|SO2_M0                                             |   0.0210|    0.0082|    2.5520|  0.0112|*      |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.6659|    0.9423|    0.7067|  0.4803|       |
|   0|SO2_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0138|    0.0219|   -0.6299|  0.5292|       |
|   0|Strong&#124;Positive                               |   0.8096|    0.3578|    2.2624|  0.0244|*      |
|   0|Positive&#124;Weak                                 |   3.6177|    0.4287|    8.4394|  0.0000|***    |
|   1|SO2_M1                                             |   0.0138|    0.0076|    1.8059|  0.0719|.      |
|   1|other_antibodies_statusHas_Other_Antibodies        |   0.2185|    0.8470|    0.2579|  0.7966|       |
|   1|SO2_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0035|    0.0184|   -0.1880|  0.8510|       |
|   1|Strong&#124;Positive                               |   0.5156|    0.3354|    1.5370|  0.1253|       |
|   1|Positive&#124;Weak                                 |   3.3074|    0.4043|    8.1802|  0.0000|***    |
|   2|SO2_M2                                             |   0.0167|    0.0076|    2.1995|  0.0286|*      |
|   2|other_antibodies_statusHas_Other_Antibodies        |  -0.2623|    0.8151|   -0.3218|  0.7478|       |
|   2|SO2_M2:other_antibodies_statusHas_Other_Antibodies |   0.0079|    0.0174|    0.4545|  0.6498|       |
|   2|Strong&#124;Positive                               |   0.6467|    0.3394|    1.9054|  0.0576|.      |
|   2|Positive&#124;Weak                                 |   3.4622|    0.4110|    8.4230|  0.0000|***    |
|   3|SO2_M3                                             |   0.0075|    0.0070|    1.0702|  0.2854|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |  -0.0399|    0.8191|   -0.0487|  0.9612|       |
|   3|SO2_M3:other_antibodies_statusHas_Other_Antibodies |   0.0032|    0.0176|    0.1797|  0.8575|       |
|   3|Strong&#124;Positive                               |   0.2726|    0.3246|    0.8398|  0.4016|       |
|   3|Positive&#124;Weak                                 |   3.0526|    0.3894|    7.8383|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term   | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |SO2_M0 |   0.0218|    0.0084|    2.6031|  0.0097|**     |
|   1|No_Other_Antibodies     |SO2_M1 |   0.0143|    0.0077|    1.8433|  0.0664|.      |
|   2|No_Other_Antibodies     |SO2_M2 |   0.0172|    0.0077|    2.2398|  0.0259|*      |
|   3|No_Other_Antibodies     |SO2_M3 |   0.0078|    0.0071|    1.0921|  0.2758|       |
|   0|Has_Other_Antibodies    |SO2_M0 |   0.0060|    0.0190|    0.3142|  0.7549|       |
|   1|Has_Other_Antibodies    |SO2_M1 |   0.0086|    0.0157|    0.5452|  0.5885|       |
|   2|Has_Other_Antibodies    |SO2_M2 |   0.0201|    0.0147|    1.3696|  0.1779|       |
|   3|Has_Other_Antibodies    |SO2_M3 |   0.0089|    0.0152|    0.5873|  0.5601|       |


# 分析结局: mRS



## 分析污染物: AQI



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                               |    estimate| std.error|    statistic| p.value|signif |
|---:|:--------------------------------------------------|-----------:|---------:|------------:|-------:|:------|
|   0|AQI_M0                                             |     -0.0010|    0.0088|      -0.1127|  0.9103|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |      0.8410|    0.9847|       0.8540|  0.3937|       |
|   0|AQI_M0:other_antibodies_statusHas_Other_Antibodies |     -0.0190|    0.0229|      -0.8311|  0.4065|       |
|   0|0&#124;1                                           |     -9.3227|    5.9212|      -1.5745|  0.1164|       |
|   0|1&#124;2                                           |     -1.7457|    0.4027|      -4.3348|  0.0000|***    |
|   0|2&#124;3                                           |     -0.8216|    0.3899|      -2.1072|  0.0359|*      |
|   0|3&#124;4                                           |      0.3873|    0.3883|       0.9975|  0.3193|       |
|   0|4&#124;5                                           |      1.3950|    0.3976|       3.5083|  0.0005|***    |
|   0|5&#124;6                                           |    118.9402|    0.3976|     299.1288|  0.0000|***    |
|   1|AQI_M1                                             |     -0.0035|    0.0086|      -0.4114|  0.6811|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |     -0.0778|    0.8914|      -0.0873|  0.9305|       |
|   1|AQI_M1:other_antibodies_statusHas_Other_Antibodies |      0.0034|    0.0195|       0.1739|  0.8621|       |
|   1|0&#124;1                                           |     -9.4205|    5.4088|      -1.7417|  0.0825|.      |
|   1|1&#124;2                                           |     -1.8487|    0.3952|      -4.6782|  0.0000|***    |
|   1|2&#124;3                                           |     -0.9262|    0.3813|      -2.4288|  0.0157|*      |
|   1|3&#124;4                                           |      0.2805|    0.3787|       0.7407|  0.4594|       |
|   1|4&#124;5                                           |      1.2875|    0.3877|       3.3208|  0.0010|**     |
|   1|5&#124;6                                           | 484039.8483|    0.3877| 1248429.8405|  0.0000|***    |
|   2|AQI_M2                                             |     -0.0074|    0.0079|      -0.9392|  0.3484|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |     -0.3684|    0.8404|      -0.4383|  0.6614|       |
|   2|AQI_M2:other_antibodies_statusHas_Other_Antibodies |      0.0099|    0.0178|       0.5557|  0.5788|       |
|   2|0&#124;1                                           |    -10.9782|   11.1244|      -0.9869|  0.3245|       |
|   2|1&#124;2                                           |     -2.0242|    0.3802|      -5.3236|  0.0000|***    |
|   2|2&#124;3                                           |     -1.1006|    0.3657|      -3.0093|  0.0028|**     |
|   2|3&#124;4                                           |      0.1083|    0.3605|       0.3005|  0.7640|       |
|   2|4&#124;5                                           |      1.1175|    0.3676|       3.0401|  0.0026|**     |
|   2|5&#124;6                                           |     48.9739|    0.3676|     133.2378|  0.0000|***    |
|   3|AQI_M3                                             |     -0.0017|    0.0074|      -0.2373|  0.8126|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |      0.1374|    0.8575|       0.1603|  0.8728|       |
|   3|AQI_M3:other_antibodies_statusHas_Other_Antibodies |     -0.0015|    0.0178|      -0.0849|  0.9324|       |
|   3|0&#124;1                                           |    -11.1941|    0.0039|   -2841.4615|  0.0000|***    |
|   3|1&#124;2                                           |     -1.7781|    0.3619|      -4.9128|  0.0000|***    |
|   3|2&#124;3                                           |     -0.8561|    0.3477|      -2.4619|  0.0144|*      |
|   3|3&#124;4                                           |      0.3513|    0.3433|       1.0232|  0.3070|       |
|   3|4&#124;5                                           |      1.3591|    0.3528|       3.8527|  0.0001|***    |
|   3|5&#124;6                                           |     39.3834|    0.3528|     111.6441|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term   | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |AQI_M0 |  -0.0012|    0.0088|   -0.1380|  0.8903|       |
|   1|No_Other_Antibodies     |AQI_M1 |  -0.0036|    0.0086|   -0.4152|  0.6784|       |
|   2|No_Other_Antibodies     |AQI_M2 |  -0.0074|    0.0079|   -0.9406|  0.3478|       |
|   3|No_Other_Antibodies     |AQI_M3 |  -0.0016|    0.0074|   -0.2183|  0.8274|       |
|   0|Has_Other_Antibodies    |AQI_M0 |  -0.0208|    0.0215|   -0.9682|  0.3389|       |
|   1|Has_Other_Antibodies    |AQI_M1 |  -0.0006|    0.0176|   -0.0355|  0.9719|       |
|   2|Has_Other_Antibodies    |AQI_M2 |   0.0026|    0.0160|    0.1652|  0.8696|       |
|   3|Has_Other_Antibodies    |AQI_M3 |  -0.0027|    0.0162|   -0.1676|  0.8677|       |


## 分析污染物: CO



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|CO_M0                                             |  -0.2160|    0.7003|   -0.3085|  0.7579|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |  -0.1668|    1.2836|   -0.1299|  0.8967|       |
|   0|CO_M0:other_antibodies_statusHas_Other_Antibodies |   0.3259|    1.7638|    0.1848|  0.8535|       |
|   0|0&#124;1                                          | -10.8515|   10.7173|   -1.0125|  0.3121|       |
|   0|1&#124;2                                          |  -1.8539|    0.5213|   -3.5565|  0.0004|***    |
|   0|2&#124;3                                          |  -0.9318|    0.5121|   -1.8197|  0.0698|.      |
|   0|3&#124;4                                          |   0.2752|    0.5096|    0.5400|  0.5896|       |
|   0|4&#124;5                                          |   1.2825|    0.5150|    2.4902|  0.0133|*      |
|   0|5&#124;6                                          |  77.7281|    0.5150|  150.9168|  0.0000|***    |
|   1|CO_M1                                             |  -0.6677|    0.6346|   -1.0520|  0.2936|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |  -0.0621|    1.1664|   -0.0532|  0.9576|       |
|   1|CO_M1:other_antibodies_statusHas_Other_Antibodies |   0.1851|    1.5477|    0.1196|  0.9049|       |
|   1|0&#124;1                                          | -11.1767|   13.8038|   -0.8097|  0.4187|       |
|   1|1&#124;2                                          |  -2.1808|    0.4838|   -4.5077|  0.0000|***    |
|   1|2&#124;3                                          |  -1.2587|    0.4727|   -2.6629|  0.0081|**     |
|   1|3&#124;4                                          |  -0.0481|    0.4672|   -0.1030|  0.9180|       |
|   1|4&#124;5                                          |   0.9616|    0.4715|    2.0393|  0.0423|*      |
|   1|5&#124;6                                          | 147.0398|    0.4715|  311.8346|  0.0000|***    |
|   2|CO_M2                                             |  -0.9579|    0.6205|   -1.5436|  0.1237|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |   0.0620|    1.1336|    0.0547|  0.9564|       |
|   2|CO_M2:other_antibodies_statusHas_Other_Antibodies |   0.0290|    1.4879|    0.0195|  0.9845|       |
|   2|0&#124;1                                          | -11.5415|   14.8109|   -0.7793|  0.4364|       |
|   2|1&#124;2                                          |  -2.4018|    0.4823|   -4.9801|  0.0000|***    |
|   2|2&#124;3                                          |  -1.4764|    0.4694|   -3.1456|  0.0018|**     |
|   2|3&#124;4                                          |  -0.2589|    0.4608|   -0.5618|  0.5746|       |
|   2|4&#124;5                                          |   0.7559|    0.4639|    1.6293|  0.1043|       |
|   2|5&#124;6                                          | 137.0016|    0.4639|  295.3018|  0.0000|***    |
|   3|CO_M3                                             |  -0.7347|    0.6000|   -1.2244|  0.2217|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |   0.3513|    1.1633|    0.3020|  0.7629|       |
|   3|CO_M3:other_antibodies_statusHas_Other_Antibodies |  -0.3796|    1.5350|   -0.2473|  0.8048|       |
|   3|0&#124;1                                          | -10.9766|    9.4203|   -1.1652|  0.2448|       |
|   3|1&#124;2                                          |  -2.2425|    0.4706|   -4.7648|  0.0000|***    |
|   3|2&#124;3                                          |  -1.3175|    0.4577|   -2.8783|  0.0043|**     |
|   3|3&#124;4                                          |  -0.1029|    0.4503|   -0.2286|  0.8193|       |
|   3|4&#124;5                                          |   0.9097|    0.4545|    2.0014|  0.0462|*      |
|   3|5&#124;6                                          | 112.8435|    0.4545|  248.2742|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term  | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:-----|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |CO_M0 |  -0.2173|    0.7002|   -0.3104|  0.7565|       |
|   1|No_Other_Antibodies     |CO_M1 |  -0.6630|    0.6343|   -1.0453|  0.2968|       |
|   2|No_Other_Antibodies     |CO_M2 |  -0.9568|    0.6203|   -1.5425|  0.1241|       |
|   3|No_Other_Antibodies     |CO_M3 |  -0.7250|    0.5998|   -1.2087|  0.2278|       |
|   0|Has_Other_Antibodies    |CO_M0 |   0.1388|    1.6225|    0.0856|  0.9323|       |
|   1|Has_Other_Antibodies    |CO_M1 |  -0.4596|    1.4144|   -0.3249|  0.7470|       |
|   2|Has_Other_Antibodies    |CO_M2 |  -0.9212|    1.3661|   -0.6743|  0.5041|       |
|   3|Has_Other_Antibodies    |CO_M3 |  -1.1465|    1.4278|   -0.8030|  0.4269|       |


## 分析污染物: NO2



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                               |  estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|---------:|---------:|---------:|-------:|:------|
|   0|NO2_M0                                             |   -0.0038|    0.0095|   -0.4017|  0.6882|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |    0.2915|    0.6766|    0.4308|  0.6669|       |
|   0|NO2_M0:other_antibodies_statusHas_Other_Antibodies |   -0.0111|    0.0282|   -0.3933|  0.6943|       |
|   0|0&#124;1                                           |  -11.0729|   12.3488|   -0.8967|  0.3706|       |
|   0|1&#124;2                                           |   -1.7944|    0.2780|   -6.4536|  0.0000|***    |
|   0|2&#124;3                                           |   -0.8698|    0.2591|   -3.3570|  0.0009|***    |
|   0|3&#124;4                                           |    0.3374|    0.2558|    1.3189|  0.1882|       |
|   0|4&#124;5                                           |    1.3447|    0.2689|    5.0005|  0.0000|***    |
|   0|5&#124;6                                           | 2301.1086|    0.2689| 8557.1880|  0.0000|***    |
|   1|NO2_M1                                             |   -0.0079|    0.0092|   -0.8586|  0.3912|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |   -0.3689|    0.6313|   -0.5844|  0.5594|       |
|   1|NO2_M1:other_antibodies_statusHas_Other_Antibodies |    0.0184|    0.0239|    0.7709|  0.4414|       |
|   1|0&#124;1                                           |  -10.8559|   13.1900|   -0.8230|  0.4111|       |
|   1|1&#124;2                                           |   -1.8890|    0.2716|   -6.9556|  0.0000|***    |
|   1|2&#124;3                                           |   -0.9646|    0.2508|   -3.8465|  0.0001|***    |
|   1|3&#124;4                                           |    0.2444|    0.2451|    0.9971|  0.3195|       |
|   1|4&#124;5                                           |    1.2527|    0.2580|    4.8556|  0.0000|***    |
|   1|5&#124;6                                           |   40.5133|    0.2580|  157.0290|  0.0000|***    |
|   2|NO2_M2                                             |   -0.0161|    0.0088|   -1.8358|  0.0673|.      |
|   2|other_antibodies_statusHas_Other_Antibodies        |   -0.2926|    0.6396|   -0.4574|  0.6477|       |
|   2|NO2_M2:other_antibodies_statusHas_Other_Antibodies |    0.0148|    0.0230|    0.6446|  0.5197|       |
|   2|0&#124;1                                           |  -10.6532|    9.7413|   -1.0936|  0.2750|       |
|   2|1&#124;2                                           |   -2.1046|    0.2743|   -7.6721|  0.0000|***    |
|   2|2&#124;3                                           |   -1.1758|    0.2520|   -4.6653|  0.0000|***    |
|   2|3&#124;4                                           |    0.0426|    0.2417|    0.1760|  0.8604|       |
|   2|4&#124;5                                           |    1.0560|    0.2521|    4.1894|  0.0000|***    |
|   2|5&#124;6                                           |   20.0648|    0.2521|   79.6033|  0.0000|***    |
|   3|NO2_M3                                             |   -0.0110|    0.0084|   -1.3083|  0.1918|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   -0.1987|    0.5750|   -0.3455|  0.7299|       |
|   3|NO2_M3:other_antibodies_statusHas_Other_Antibodies |    0.0107|    0.0204|    0.5236|  0.6009|       |
|   3|0&#124;1                                           |  -11.1784|   12.0862|   -0.9249|  0.3557|       |
|   3|1&#124;2                                           |   -1.9818|    0.2692|   -7.3610|  0.0000|***    |
|   3|2&#124;3                                           |   -1.0568|    0.2485|   -4.2531|  0.0000|***    |
|   3|3&#124;4                                           |    0.1580|    0.2389|    0.6615|  0.5088|       |
|   3|4&#124;5                                           |    1.1696|    0.2499|    4.6805|  0.0000|***    |
|   3|5&#124;6                                           |   78.4991|    0.2499|  314.1420|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term   | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |NO2_M0 |  -0.0038|    0.0095|   -0.4062|  0.6849|       |
|   1|No_Other_Antibodies     |NO2_M1 |  -0.0078|    0.0092|   -0.8519|  0.3950|       |
|   2|No_Other_Antibodies     |NO2_M2 |  -0.0161|    0.0088|   -1.8337|  0.0678|.      |
|   3|No_Other_Antibodies     |NO2_M3 |  -0.0110|    0.0084|   -1.3052|  0.1929|       |
|   0|Has_Other_Antibodies    |NO2_M0 |  -0.0154|    0.0268|   -0.5748|  0.5687|       |
|   1|Has_Other_Antibodies    |NO2_M1 |   0.0105|    0.0220|    0.4769|  0.6361|       |
|   2|Has_Other_Antibodies    |NO2_M2 |  -0.0007|    0.0213|   -0.0344|  0.9727|       |
|   3|Has_Other_Antibodies    |NO2_M3 |  -0.0001|    0.0186|   -0.0067|  0.9947|       |


## 分析污染物: O3



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                              |  estimate| std.error|  statistic| p.value|signif |
|---:|:-------------------------------------------------|---------:|---------:|----------:|-------:|:------|
|   0|O3_M0                                             |   -0.0001|    0.0067|    -0.0136|  0.9892|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |   -0.0832|    1.3408|    -0.0620|  0.9506|       |
|   0|O3_M0:other_antibodies_statusHas_Other_Antibodies |    0.0025|    0.0218|     0.1126|  0.9104|       |
|   0|0&#124;1                                          |   -8.5584|    4.0439|    -2.1164|  0.0351|*      |
|   0|1&#124;2                                          |   -1.7055|    0.4172|    -4.0875|  0.0001|***    |
|   0|2&#124;3                                          |   -0.7840|    0.4055|    -1.9336|  0.0541|.      |
|   0|3&#124;4                                          |    0.4230|    0.4031|     1.0495|  0.2948|       |
|   0|4&#124;5                                          |    1.4309|    0.4117|     3.4755|  0.0006|***    |
|   0|5&#124;6                                          | 8788.2541|    0.4117| 21346.1885|  0.0000|***    |
|   1|O3_M1                                             |    0.0035|    0.0078|     0.4460|  0.6559|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |    1.1983|    1.2501|     0.9586|  0.3385|       |
|   1|O3_M1:other_antibodies_statusHas_Other_Antibodies |   -0.0188|    0.0201|    -0.9348|  0.3506|       |
|   1|0&#124;1                                          |   -8.9962|    5.6568|    -1.5903|  0.1128|       |
|   1|1&#124;2                                          |   -1.5087|    0.4689|    -3.2172|  0.0014|**     |
|   1|2&#124;3                                          |   -0.5826|    0.4603|    -1.2657|  0.2066|       |
|   1|3&#124;4                                          |    0.6275|    0.4602|     1.3634|  0.1737|       |
|   1|4&#124;5                                          |    1.6349|    0.4678|     3.4948|  0.0005|***    |
|   1|5&#124;6                                          |   42.7265|    0.4678|    91.3324|  0.0000|***    |
|   2|O3_M2                                             |    0.0068|    0.0073|     0.9326|  0.3518|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |    0.9289|    1.0673|     0.8703|  0.3848|       |
|   2|O3_M2:other_antibodies_statusHas_Other_Antibodies |   -0.0148|    0.0176|    -0.8392|  0.4020|       |
|   2|0&#124;1                                          |   -8.7812|    5.5050|    -1.5951|  0.1117|       |
|   2|1&#124;2                                          |   -1.3072|    0.4516|    -2.8948|  0.0041|**     |
|   2|2&#124;3                                          |   -0.3822|    0.4438|    -0.8611|  0.3898|       |
|   2|3&#124;4                                          |    0.8297|    0.4472|     1.8554|  0.0645|.      |
|   2|4&#124;5                                          |    1.8383|    0.4564|     4.0280|  0.0001|***    |
|   2|5&#124;6                                          |   50.2458|    0.4564|   110.0948|  0.0000|***    |
|   3|O3_M3                                             |    0.0077|    0.0072|     1.0755|  0.2830|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |    1.1465|    1.1628|     0.9860|  0.3249|       |
|   3|O3_M3:other_antibodies_statusHas_Other_Antibodies |   -0.0185|    0.0189|    -0.9792|  0.3282|       |
|   3|0&#124;1                                          |   -8.8918|    6.0722|    -1.4644|  0.1441|       |
|   3|1&#124;2                                          |   -1.2682|    0.4310|    -2.9421|  0.0035|**     |
|   3|2&#124;3                                          |   -0.3461|    0.4224|    -0.8193|  0.4132|       |
|   3|3&#124;4                                          |    0.8651|    0.4244|     2.0384|  0.0424|*      |
|   3|4&#124;5                                          |    1.8760|    0.4350|     4.3130|  0.0000|***    |
|   3|5&#124;6                                          |   32.4596|    0.4350|    74.6254|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term  | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:-----|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |O3_M0 |  -0.0002|    0.0067|   -0.0315|  0.9749|       |
|   1|No_Other_Antibodies     |O3_M1 |   0.0033|    0.0078|    0.4297|  0.6677|       |
|   2|No_Other_Antibodies     |O3_M2 |   0.0067|    0.0073|    0.9193|  0.3588|       |
|   3|No_Other_Antibodies     |O3_M3 |   0.0078|    0.0072|    1.0832|  0.2797|       |
|   0|Has_Other_Antibodies    |O3_M0 |   0.0013|    0.0209|    0.0615|  0.9512|       |
|   1|Has_Other_Antibodies    |O3_M1 |  -0.0169|    0.0190|   -0.8894|  0.3793|       |
|   2|Has_Other_Antibodies    |O3_M2 |  -0.0083|    0.0161|   -0.5179|  0.6075|       |
|   3|Has_Other_Antibodies    |O3_M3 |  -0.0104|    0.0176|   -0.5914|  0.5577|       |


## 分析污染物: PM10



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                                |    estimate| std.error|    statistic| p.value|signif |
|---:|:---------------------------------------------------|-----------:|---------:|------------:|-------:|:------|
|   0|PM10_M0                                             |      0.0019|    0.0074|       0.2547|  0.7991|       |
|   0|other_antibodies_statusHas_Other_Antibodies         |      1.0320|    0.8184|       1.2610|  0.2083|       |
|   0|PM10_M0:other_antibodies_statusHas_Other_Antibodies |     -0.0243|    0.0191|      -1.2730|  0.2040|       |
|   0|0&#124;1                                            |    -10.7644|   13.3649|      -0.8054|  0.4212|       |
|   0|1&#124;2                                            |     -1.6293|    0.3430|      -4.7505|  0.0000|***    |
|   0|2&#124;3                                            |     -0.7042|    0.3290|      -2.1403|  0.0331|*      |
|   0|3&#124;4                                            |      0.5067|    0.3287|       1.5412|  0.1243|       |
|   0|4&#124;5                                            |      1.5172|    0.3404|       4.4579|  0.0000|***    |
|   0|5&#124;6                                            | 494180.1858|    0.3404| 1451972.4689|  0.0000|***    |
|   1|PM10_M1                                             |     -0.0005|    0.0072|      -0.0677|  0.9461|       |
|   1|other_antibodies_statusHas_Other_Antibodies         |      0.1612|    0.7550|       0.2135|  0.8310|       |
|   1|PM10_M1:other_antibodies_statusHas_Other_Antibodies |     -0.0023|    0.0165|      -0.1367|  0.8913|       |
|   1|0&#124;1                                            |    -10.6550|   13.6338|      -0.7815|  0.4351|       |
|   1|1&#124;2                                            |     -1.7210|    0.3347|      -5.1415|  0.0000|***    |
|   1|2&#124;3                                            |     -0.8002|    0.3195|      -2.5045|  0.0128|*      |
|   1|3&#124;4                                            |      0.4080|    0.3181|       1.2828|  0.2005|       |
|   1|4&#124;5                                            |      1.4157|    0.3296|       4.2955|  0.0000|***    |
|   1|5&#124;6                                            |   3404.1825|    0.3296|   10328.8777|  0.0000|***    |
|   2|PM10_M2                                             |     -0.0066|    0.0070|      -0.9432|  0.3463|       |
|   2|other_antibodies_statusHas_Other_Antibodies         |     -0.3474|    0.7218|      -0.4814|  0.6306|       |
|   2|PM10_M2:other_antibodies_statusHas_Other_Antibodies |      0.0096|    0.0152|       0.6319|  0.5279|       |
|   2|0&#124;1                                            |    -10.7216|   10.6742|      -1.0044|  0.3159|       |
|   2|1&#124;2                                            |     -1.9826|    0.3393|      -5.8435|  0.0000|***    |
|   2|2&#124;3                                            |     -1.0587|    0.3230|      -3.2774|  0.0012|**     |
|   2|3&#124;4                                            |      0.1504|    0.3174|       0.4738|  0.6360|       |
|   2|4&#124;5                                            |      1.1594|    0.3259|       3.5577|  0.0004|***    |
|   2|5&#124;6                                            |    306.7343|    0.3259|     941.2457|  0.0000|***    |
|   3|PM10_M3                                             |     -0.0029|    0.0064|      -0.4574|  0.6477|       |
|   3|other_antibodies_statusHas_Other_Antibodies         |      0.1445|    0.7428|       0.1945|  0.8459|       |
|   3|PM10_M3:other_antibodies_statusHas_Other_Antibodies |     -0.0017|    0.0154|      -0.1071|  0.9147|       |
|   3|0&#124;1                                            |    -10.7684|   10.2643|      -1.0491|  0.2949|       |
|   3|1&#124;2                                            |     -1.8280|    0.3221|      -5.6753|  0.0000|***    |
|   3|2&#124;3                                            |     -0.9062|    0.3058|      -2.9630|  0.0033|**     |
|   3|3&#124;4                                            |      0.3024|    0.2999|       1.0083|  0.3141|       |
|   3|4&#124;5                                            |      1.3107|    0.3101|       4.2265|  0.0000|***    |
|   3|5&#124;6                                            |     65.3392|    0.3101|     210.6981|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term    | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:-------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |PM10_M0 |   0.0019|    0.0074|    0.2599|  0.7951|       |
|   1|No_Other_Antibodies     |PM10_M1 |  -0.0005|    0.0072|   -0.0703|  0.9440|       |
|   2|No_Other_Antibodies     |PM10_M2 |  -0.0066|    0.0070|   -0.9392|  0.3485|       |
|   3|No_Other_Antibodies     |PM10_M3 |  -0.0030|    0.0064|   -0.4621|  0.6444|       |
|   0|Has_Other_Antibodies    |PM10_M0 |  -0.0235|    0.0180|   -1.3068|  0.1989|       |
|   1|Has_Other_Antibodies    |PM10_M1 |  -0.0029|    0.0149|   -0.1971|  0.8448|       |
|   2|Has_Other_Antibodies    |PM10_M2 |   0.0032|    0.0135|    0.2332|  0.8168|       |
|   3|Has_Other_Antibodies    |PM10_M3 |  -0.0042|    0.0141|   -0.2962|  0.7687|       |


## 分析污染物: PM2.5



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                                 | estimate| std.error| statistic| p.value|signif |
|---:|:----------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|PM2.5_M0                                             |  -0.0004|    0.0110|   -0.0367|  0.9708|       |
|   0|other_antibodies_statusHas_Other_Antibodies          |   0.4052|    0.7276|    0.5569|  0.5780|       |
|   0|PM2.5_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0150|    0.0291|   -0.5152|  0.6068|       |
|   0|0&#124;1                                             |  -8.5820|    4.0516|   -2.1182|  0.0350|*      |
|   0|1&#124;2                                             |  -1.7114|    0.3078|   -5.5597|  0.0000|***    |
|   0|2&#124;3                                             |  -0.7887|    0.2916|   -2.7042|  0.0072|**     |
|   0|3&#124;4                                             |   0.4189|    0.2899|    1.4449|  0.1495|       |
|   0|4&#124;5                                             |   1.4264|    0.3021|    4.7220|  0.0000|***    |
|   0|5&#124;6                                             |  19.9883|    0.3021|   66.1706|  0.0000|***    |
|   1|PM2.5_M1                                             |  -0.0051|    0.0107|   -0.4800|  0.6316|       |
|   1|other_antibodies_statusHas_Other_Antibodies          |  -0.1262|    0.6698|   -0.1884|  0.8507|       |
|   1|PM2.5_M1:other_antibodies_statusHas_Other_Antibodies |   0.0078|    0.0242|    0.3207|  0.7487|       |
|   1|0&#124;1                                             | -11.0996|   13.4252|   -0.8268|  0.4090|       |
|   1|1&#124;2                                             |  -1.8250|    0.3042|   -6.0002|  0.0000|***    |
|   1|2&#124;3                                             |  -0.9023|    0.2866|   -3.1483|  0.0018|**     |
|   1|3&#124;4                                             |   0.3045|    0.2834|    1.0746|  0.2834|       |
|   1|4&#124;5                                             |   1.3120|    0.2951|    4.4464|  0.0000|***    |
|   1|5&#124;6                                             |  25.0825|    0.2951|   85.0059|  0.0000|***    |
|   2|PM2.5_M2                                             |  -0.0087|    0.0095|   -0.9166|  0.3600|       |
|   2|other_antibodies_statusHas_Other_Antibodies          |  -0.3188|    0.6315|   -0.5047|  0.6141|       |
|   2|PM2.5_M2:other_antibodies_statusHas_Other_Antibodies |   0.0150|    0.0216|    0.6939|  0.4882|       |
|   2|0&#124;1                                             | -10.3442|    8.4006|   -1.2314|  0.2191|       |
|   2|1&#124;2                                             |  -1.9214|    0.2900|   -6.6261|  0.0000|***    |
|   2|2&#124;3                                             |  -0.9980|    0.2713|   -3.6783|  0.0003|***    |
|   2|3&#124;4                                             |   0.2105|    0.2658|    0.7921|  0.4289|       |
|   2|4&#124;5                                             |   1.2192|    0.2766|    4.4084|  0.0000|***    |
|   2|5&#124;6                                             |  18.2895|    0.2766|   66.1286|  0.0000|***    |
|   3|PM2.5_M3                                             |  -0.0016|    0.0091|   -0.1746|  0.8615|       |
|   3|other_antibodies_statusHas_Other_Antibodies          |   0.0521|    0.6282|    0.0830|  0.9339|       |
|   3|PM2.5_M3:other_antibodies_statusHas_Other_Antibodies |   0.0005|    0.0208|    0.0255|  0.9797|       |
|   3|0&#124;1                                             | -10.4619|   10.2142|   -1.0243|  0.3065|       |
|   3|1&#124;2                                             |  -1.7412|    0.2819|   -6.1778|  0.0000|***    |
|   3|2&#124;3                                             |  -0.8194|    0.2636|   -3.1079|  0.0021|**     |
|   3|3&#124;4                                             |   0.3875|    0.2594|    1.4937|  0.1363|       |
|   3|4&#124;5                                             |   1.3949|    0.2724|    5.1211|  0.0000|***    |
|   3|5&#124;6                                             | 127.9436|    0.2724|  469.7069|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term     | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:--------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |PM2.5_M0 |  -0.0006|    0.0110|   -0.0504|  0.9599|       |
|   1|No_Other_Antibodies     |PM2.5_M1 |  -0.0051|    0.0107|   -0.4744|  0.6356|       |
|   2|No_Other_Antibodies     |PM2.5_M2 |  -0.0088|    0.0095|   -0.9222|  0.3572|       |
|   3|No_Other_Antibodies     |PM2.5_M3 |  -0.0015|    0.0091|   -0.1704|  0.8648|       |
|   0|Has_Other_Antibodies    |PM2.5_M0 |  -0.0161|    0.0272|   -0.5894|  0.5590|       |
|   1|Has_Other_Antibodies    |PM2.5_M1 |   0.0025|    0.0218|    0.1165|  0.9079|       |
|   2|Has_Other_Antibodies    |PM2.5_M2 |   0.0065|    0.0194|    0.3339|  0.7402|       |
|   3|Has_Other_Antibodies    |PM2.5_M3 |  -0.0006|    0.0187|   -0.0303|  0.9760|       |


## 分析污染物: SO2



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                               |    estimate| std.error|    statistic| p.value|signif |
|---:|:--------------------------------------------------|-----------:|---------:|------------:|-------:|:------|
|   0|SO2_M0                                             |      0.0024|    0.0074|       0.3273|  0.7437|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |      1.0441|    0.8122|       1.2855|  0.1996|       |
|   0|SO2_M0:other_antibodies_statusHas_Other_Antibodies |     -0.0246|    0.0190|      -1.2975|  0.1954|       |
|   0|0&#124;1                                           |    -11.5033|   12.7123|      -0.9049|  0.3662|       |
|   0|1&#124;2                                           |     -1.6088|    0.3411|      -4.7168|  0.0000|***    |
|   0|2&#124;3                                           |     -0.6822|    0.3271|      -2.0855|  0.0378|*      |
|   0|3&#124;4                                           |      0.5296|    0.3271|       1.6193|  0.1064|       |
|   0|4&#124;5                                           |      1.5386|    0.3389|       4.5405|  0.0000|***    |
|   0|5&#124;6                                           | 772187.9259|    0.3389| 2278729.5551|  0.0000|***    |
|   1|SO2_M1                                             |     -0.0005|    0.0072|      -0.0727|  0.9421|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |      0.1853|    0.7473|       0.2479|  0.8044|       |
|   1|SO2_M1:other_antibodies_statusHas_Other_Antibodies |     -0.0028|    0.0164|      -0.1721|  0.8635|       |
|   1|0&#124;1                                           |     -9.3913|    6.0648|      -1.5485|  0.1225|       |
|   1|1&#124;2                                           |     -1.7224|    0.3328|      -5.1760|  0.0000|***    |
|   1|2&#124;3                                           |     -0.8009|    0.3174|      -2.5229|  0.0121|*      |
|   1|3&#124;4                                           |      0.4072|    0.3158|       1.2897|  0.1981|       |
|   1|4&#124;5                                           |      1.4147|    0.3273|       4.3223|  0.0000|***    |
|   1|5&#124;6                                           |   3675.3149|    0.3273|   11229.5592|  0.0000|***    |
|   2|SO2_M2                                             |     -0.0066|    0.0070|      -0.9531|  0.3413|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |     -0.3441|    0.7165|      -0.4802|  0.6314|       |
|   2|SO2_M2:other_antibodies_statusHas_Other_Antibodies |      0.0095|    0.0151|       0.6319|  0.5279|       |
|   2|0&#124;1                                           |     -9.5492|    5.8643|      -1.6284|  0.1045|       |
|   2|1&#124;2                                           |     -1.9830|    0.3372|      -5.8810|  0.0000|***    |
|   2|2&#124;3                                           |     -1.0594|    0.3209|      -3.3014|  0.0011|**     |
|   2|3&#124;4                                           |      0.1498|    0.3152|       0.4754|  0.6349|       |
|   2|4&#124;5                                           |      1.1590|    0.3236|       3.5811|  0.0004|***    |
|   2|5&#124;6                                           |     72.2689|    0.3236|     223.2978|  0.0000|***    |
|   3|SO2_M3                                             |     -0.0031|    0.0064|      -0.4846|  0.6283|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |      0.1118|    0.7381|       0.1515|  0.8797|       |
|   3|SO2_M3:other_antibodies_statusHas_Other_Antibodies |     -0.0010|    0.0154|      -0.0618|  0.9508|       |
|   3|0&#124;1                                           |    -10.6807|   10.2378|      -1.0433|  0.2976|       |
|   3|1&#124;2                                           |     -1.8356|    0.3211|      -5.7163|  0.0000|***    |
|   3|2&#124;3                                           |     -0.9132|    0.3048|      -2.9959|  0.0030|**     |
|   3|3&#124;4                                           |      0.2954|    0.2987|       0.9889|  0.3235|       |
|   3|4&#124;5                                           |      1.3039|    0.3088|       4.2228|  0.0000|***    |
|   3|5&#124;6                                           |     96.8456|    0.3088|     313.6561|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term   | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |SO2_M0 |   0.0023|    0.0074|    0.3174|  0.7512|       |
|   1|No_Other_Antibodies     |SO2_M1 |  -0.0005|    0.0072|   -0.0675|  0.9462|       |
|   2|No_Other_Antibodies     |SO2_M2 |  -0.0067|    0.0070|   -0.9558|  0.3400|       |
|   3|No_Other_Antibodies     |SO2_M3 |  -0.0031|    0.0064|   -0.4852|  0.6280|       |
|   0|Has_Other_Antibodies    |SO2_M0 |  -0.0234|    0.0179|   -1.3075|  0.1987|       |
|   1|Has_Other_Antibodies    |SO2_M1 |  -0.0037|    0.0148|   -0.2506|  0.8035|       |
|   2|Has_Other_Antibodies    |SO2_M2 |   0.0032|    0.0134|    0.2383|  0.8129|       |
|   3|Has_Other_Antibodies    |SO2_M3 |  -0.0037|    0.0140|   -0.2604|  0.7959|       |


# 分析结局: ICU admission



## 分析污染物: AQI



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |  -1.0416|    0.5037|   -2.0678|  0.0387|*      |
|   0|AQI_M0                                             |  -0.0035|    0.0115|   -0.3024|  0.7623|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.0843|    1.3200|    0.0639|  0.9491|       |
|   0|AQI_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0014|    0.0308|   -0.0448|  0.9643|       |
|   1|(Intercept)                                        |  -0.6467|    0.4917|   -1.3153|  0.1884|       |
|   1|AQI_M1                                             |  -0.0130|    0.0114|   -1.1355|  0.2562|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |  -0.7397|    1.2114|   -0.6106|  0.5415|       |
|   1|AQI_M1:other_antibodies_statusHas_Other_Antibodies |   0.0181|    0.0262|    0.6915|  0.4892|       |
|   2|(Intercept)                                        |  -0.4381|    0.4830|   -0.9071|  0.3643|       |
|   2|AQI_M2                                             |  -0.0176|    0.0111|   -1.5932|  0.1111|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |   0.1700|    1.1294|    0.1505|  0.8804|       |
|   2|AQI_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0032|    0.0257|   -0.1252|  0.9004|       |
|   3|(Intercept)                                        |  -0.9560|    0.4530|   -2.1101|  0.0348|*      |
|   3|AQI_M3                                             |  -0.0053|    0.0099|   -0.5365|  0.5916|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   0.8587|    1.1591|    0.7408|  0.4588|       |
|   3|AQI_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0194|    0.0263|   -0.7374|  0.4609|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0035|    0.0115|  0.7623|       |
|No_Other_Antibodies     |   1|  -0.0130|    0.0114|  0.2562|       |
|No_Other_Antibodies     |   2|  -0.0176|    0.0111|  0.1111|       |
|No_Other_Antibodies     |   3|  -0.0053|    0.0099|  0.5916|       |
|Has_Other_Antibodies    |   0|  -0.0049|    0.0285|  0.8648|       |
|Has_Other_Antibodies    |   1|   0.0052|    0.0236|  0.8266|       |
|Has_Other_Antibodies    |   2|  -0.0209|    0.0232|  0.3694|       |
|Has_Other_Antibodies    |   3|  -0.0247|    0.0244|  0.3103|       |


## 分析污染物: CO



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                       |  -0.6398|    0.6957|   -0.9196|  0.3578|       |
|   0|CO_M0                                             |  -0.7803|    0.9752|   -0.8001|  0.4237|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |  -1.9740|    1.7572|   -1.1234|  0.2613|       |
|   0|CO_M0:other_antibodies_statusHas_Other_Antibodies |   2.8120|    2.3814|    1.1808|  0.2377|       |
|   1|(Intercept)                                       |  -0.3948|    0.6768|   -0.5834|  0.5596|       |
|   1|CO_M1                                             |  -1.1258|    0.9492|   -1.1860|  0.2356|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |  -1.2519|    1.5765|   -0.7941|  0.4271|       |
|   1|CO_M1:other_antibodies_statusHas_Other_Antibodies |   1.7890|    2.0866|    0.8574|  0.3912|       |
|   2|(Intercept)                                       |  -0.3365|    0.6453|   -0.5214|  0.6021|       |
|   2|CO_M2                                             |  -1.2021|    0.8998|   -1.3360|  0.1816|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |  -0.3692|    1.5322|   -0.2409|  0.8096|       |
|   2|CO_M2:other_antibodies_statusHas_Other_Antibodies |   0.5801|    2.0735|    0.2798|  0.7797|       |
|   3|(Intercept)                                       |  -0.6903|    0.6115|   -1.1289|  0.2590|       |
|   3|CO_M3                                             |  -0.6924|    0.8337|   -0.8305|  0.4063|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |   0.9930|    1.6051|    0.6187|  0.5361|       |
|   3|CO_M3:other_antibodies_statusHas_Other_Antibodies |  -1.3553|    2.2353|   -0.6063|  0.5443|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.7803|    0.9752|  0.4237|       |
|No_Other_Antibodies     |   1|  -1.1258|    0.9492|  0.2356|       |
|No_Other_Antibodies     |   2|  -1.2021|    0.8998|  0.1816|       |
|No_Other_Antibodies     |   3|  -0.6924|    0.8337|  0.4063|       |
|Has_Other_Antibodies    |   0|   2.0317|    2.1726|  0.3497|       |
|Has_Other_Antibodies    |   1|   0.6633|    1.8582|  0.7211|       |
|Has_Other_Antibodies    |   2|  -0.6220|    1.8681|  0.7391|       |
|Has_Other_Antibodies    |   3|  -2.0477|    2.0740|  0.3235|       |


## 分析污染物: NO2



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |  -1.1594|    0.3325|   -3.4873|  0.0005|***    |
|   0|NO2_M0                                             |  -0.0012|    0.0126|   -0.0959|  0.9236|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.2408|    0.9346|    0.2577|  0.7966|       |
|   0|NO2_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0101|    0.0404|   -0.2498|  0.8027|       |
|   1|(Intercept)                                        |  -1.1227|    0.3174|   -3.5376|  0.0004|***    |
|   1|NO2_M1                                             |  -0.0028|    0.0121|   -0.2300|  0.8181|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |  -0.5774|    0.8433|   -0.6847|  0.4936|       |
|   1|NO2_M1:other_antibodies_statusHas_Other_Antibodies |   0.0251|    0.0304|    0.8259|  0.4088|       |
|   2|(Intercept)                                        |  -0.8453|    0.3153|   -2.6806|  0.0073|**     |
|   2|NO2_M2                                             |  -0.0145|    0.0122|   -1.1906|  0.2338|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |  -0.2101|    0.8551|   -0.2458|  0.8059|       |
|   2|NO2_M2:other_antibodies_statusHas_Other_Antibodies |   0.0103|    0.0323|    0.3191|  0.7497|       |
|   3|(Intercept)                                        |  -1.3292|    0.3150|   -4.2198|  0.0000|***    |
|   3|NO2_M3                                             |   0.0056|    0.0111|    0.5070|  0.6122|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   0.4850|    0.7690|    0.6307|  0.5282|       |
|   3|NO2_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0191|    0.0292|   -0.6544|  0.5129|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0012|    0.0126|  0.9236|       |
|No_Other_Antibodies     |   1|  -0.0028|    0.0121|  0.8181|       |
|No_Other_Antibodies     |   2|  -0.0145|    0.0122|  0.2338|       |
|No_Other_Antibodies     |   3|   0.0056|    0.0111|  0.6122|       |
|Has_Other_Antibodies    |   0|  -0.0113|    0.0384|  0.7685|       |
|Has_Other_Antibodies    |   1|   0.0224|    0.0279|  0.4235|       |
|Has_Other_Antibodies    |   2|  -0.0042|    0.0299|  0.8873|       |
|Has_Other_Antibodies    |   3|  -0.0135|    0.0270|  0.6179|       |


## 分析污染物: O3



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                       |  -1.4092|    0.5458|   -2.5819|  0.0098|**     |
|   0|O3_M0                                             |   0.0039|    0.0091|    0.4212|  0.6736|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |   0.2648|    1.7865|    0.1482|  0.8822|       |
|   0|O3_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0041|    0.0285|   -0.1428|  0.8865|       |
|   1|(Intercept)                                       |  -1.2287|    0.6239|   -1.9695|  0.0489|*      |
|   1|O3_M1                                             |   0.0007|    0.0107|    0.0667|  0.9468|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |   2.7898|    1.9116|    1.4594|  0.1445|       |
|   1|O3_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0464|    0.0327|   -1.4169|  0.1565|       |
|   2|(Intercept)                                       |  -1.1024|    0.5970|   -1.8466|  0.0648|.      |
|   2|O3_M2                                             |  -0.0015|    0.0099|   -0.1479|  0.8824|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |   1.8902|    1.4660|    1.2894|  0.1973|       |
|   2|O3_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0334|    0.0261|   -1.2787|  0.2010|       |
|   3|(Intercept)                                       |  -0.5374|    0.5685|   -0.9453|  0.3445|       |
|   3|O3_M3                                             |  -0.0117|    0.0100|   -1.1685|  0.2426|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |   0.2535|    1.5343|    0.1652|  0.8688|       |
|   3|O3_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0034|    0.0261|   -0.1298|  0.8967|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0039|    0.0091|  0.6736|       |
|No_Other_Antibodies     |   1|   0.0007|    0.0107|  0.9468|       |
|No_Other_Antibodies     |   2|  -0.0015|    0.0099|  0.8824|       |
|No_Other_Antibodies     |   3|  -0.0117|    0.0100|  0.2426|       |
|Has_Other_Antibodies    |   0|  -0.0002|    0.0270|  0.9937|       |
|Has_Other_Antibodies    |   1|  -0.0457|    0.0309|  0.1399|       |
|Has_Other_Antibodies    |   2|  -0.0349|    0.0242|  0.1490|       |
|Has_Other_Antibodies    |   3|  -0.0150|    0.0242|  0.5335|       |


## 分析污染物: PM10



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                                | estimate| std.error| statistic| p.value|signif |
|---:|:---------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                         |  -0.9794|    0.4276|   -2.2904|  0.0220|*      |
|   0|PM10_M0                                             |  -0.0051|    0.0099|   -0.5145|  0.6069|       |
|   0|other_antibodies_statusHas_Other_Antibodies         |   0.2822|    1.0987|    0.2569|  0.7973|       |
|   0|PM10_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0066|    0.0264|   -0.2489|  0.8035|       |
|   1|(Intercept)                                         |  -0.7796|    0.4141|   -1.8825|  0.0598|.      |
|   1|PM10_M1                                             |  -0.0100|    0.0097|   -1.0352|  0.3006|       |
|   1|other_antibodies_statusHas_Other_Antibodies         |  -0.6054|    1.0180|   -0.5946|  0.5521|       |
|   1|PM10_M1:other_antibodies_statusHas_Other_Antibodies |   0.0153|    0.0219|    0.6962|  0.4863|       |
|   2|(Intercept)                                         |  -0.5305|    0.4199|   -1.2633|  0.2065|       |
|   2|PM10_M2                                             |  -0.0160|    0.0098|   -1.6257|  0.1040|       |
|   2|other_antibodies_statusHas_Other_Antibodies         |  -0.0569|    0.9719|   -0.0586|  0.9533|       |
|   2|PM10_M2:other_antibodies_statusHas_Other_Antibodies |   0.0024|    0.0220|    0.1092|  0.9130|       |
|   3|(Intercept)                                         |  -1.0336|    0.3966|   -2.6061|  0.0092|**     |
|   3|PM10_M3                                             |  -0.0036|    0.0087|   -0.4154|  0.6779|       |
|   3|other_antibodies_statusHas_Other_Antibodies         |   0.7787|    1.0083|    0.7723|  0.4399|       |
|   3|PM10_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0181|    0.0232|   -0.7800|  0.4354|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0051|    0.0099|  0.6069|       |
|No_Other_Antibodies     |   1|  -0.0100|    0.0097|  0.3006|       |
|No_Other_Antibodies     |   2|  -0.0160|    0.0098|  0.1040|       |
|No_Other_Antibodies     |   3|  -0.0036|    0.0087|  0.6779|       |
|Has_Other_Antibodies    |   0|  -0.0117|    0.0245|  0.6341|       |
|Has_Other_Antibodies    |   1|   0.0052|    0.0197|  0.7902|       |
|Has_Other_Antibodies    |   2|  -0.0136|    0.0197|  0.4914|       |
|Has_Other_Antibodies    |   3|  -0.0217|    0.0215|  0.3138|       |


## 分析污染物: PM2.5



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                                 | estimate| std.error| statistic| p.value|signif |
|---:|:----------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                          |  -1.1054|    0.3706|   -2.9826|  0.0029|**     |
|   0|PM2.5_M0                                             |  -0.0034|    0.0143|   -0.2411|  0.8095|       |
|   0|other_antibodies_statusHas_Other_Antibodies          |  -0.0925|    0.9807|   -0.0943|  0.9249|       |
|   0|PM2.5_M0:other_antibodies_statusHas_Other_Antibodies |   0.0052|    0.0388|    0.1335|  0.8938|       |
|   1|(Intercept)                                          |  -0.8258|    0.3612|   -2.2865|  0.0222|*      |
|   1|PM2.5_M1                                             |  -0.0151|    0.0141|   -1.0728|  0.2834|       |
|   1|other_antibodies_statusHas_Other_Antibodies          |  -0.6142|    0.9128|   -0.6729|  0.5010|       |
|   1|PM2.5_M1:other_antibodies_statusHas_Other_Antibodies |   0.0261|    0.0323|    0.8065|  0.4200|       |
|   2|(Intercept)                                          |  -0.7870|    0.3480|   -2.2617|  0.0237|*      |
|   2|PM2.5_M2                                             |  -0.0164|    0.0132|   -1.2360|  0.2164|       |
|   2|other_antibodies_statusHas_Other_Antibodies          |   0.1768|    0.8366|    0.2113|  0.8326|       |
|   2|PM2.5_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0057|    0.0313|   -0.1814|  0.8561|       |
|   3|(Intercept)                                          |  -1.1446|    0.3390|   -3.3764|  0.0007|***    |
|   3|PM2.5_M3                                             |  -0.0017|    0.0121|   -0.1414|  0.8875|       |
|   3|other_antibodies_statusHas_Other_Antibodies          |   0.6560|    0.8310|    0.7895|  0.4298|       |
|   3|PM2.5_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0251|    0.0309|   -0.8129|  0.4163|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0034|    0.0143|  0.8095|       |
|No_Other_Antibodies     |   1|  -0.0151|    0.0141|  0.2834|       |
|No_Other_Antibodies     |   2|  -0.0164|    0.0132|  0.2164|       |
|No_Other_Antibodies     |   3|  -0.0017|    0.0121|  0.8875|       |
|Has_Other_Antibodies    |   0|   0.0017|    0.0361|  0.9615|       |
|Has_Other_Antibodies    |   1|   0.0109|    0.0291|  0.7071|       |
|Has_Other_Antibodies    |   2|  -0.0220|    0.0283|  0.4368|       |
|Has_Other_Antibodies    |   3|  -0.0268|    0.0284|  0.3456|       |


## 分析污染物: SO2



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |  -0.9873|    0.4252|   -2.3219|  0.0202|*      |
|   0|SO2_M0                                             |  -0.0049|    0.0099|   -0.4982|  0.6184|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.2868|    1.0903|    0.2631|  0.7925|       |
|   0|SO2_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0067|    0.0263|   -0.2552|  0.7986|       |
|   1|(Intercept)                                        |  -0.7894|    0.4117|   -1.9177|  0.0551|.      |
|   1|SO2_M1                                             |  -0.0098|    0.0097|   -1.0174|  0.3089|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |  -0.5354|    1.0064|   -0.5320|  0.5947|       |
|   1|SO2_M1:other_antibodies_statusHas_Other_Antibodies |   0.0137|    0.0218|    0.6292|  0.5292|       |
|   2|(Intercept)                                        |  -0.5549|    0.4170|   -1.3305|  0.1833|       |
|   2|SO2_M2                                             |  -0.0154|    0.0098|   -1.5787|  0.1144|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |  -0.0520|    0.9656|   -0.0539|  0.9570|       |
|   2|SO2_M2:other_antibodies_statusHas_Other_Antibodies |   0.0023|    0.0219|    0.1054|  0.9160|       |
|   3|(Intercept)                                        |  -1.0274|    0.3949|   -2.6020|  0.0093|**     |
|   3|SO2_M3                                             |  -0.0038|    0.0086|   -0.4340|  0.6643|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   0.7564|    1.0017|    0.7552|  0.4501|       |
|   3|SO2_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0177|    0.0232|   -0.7635|  0.4452|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0049|    0.0099|  0.6184|       |
|No_Other_Antibodies     |   1|  -0.0098|    0.0097|  0.3089|       |
|No_Other_Antibodies     |   2|  -0.0154|    0.0098|  0.1144|       |
|No_Other_Antibodies     |   3|  -0.0038|    0.0086|  0.6643|       |
|Has_Other_Antibodies    |   0|  -0.0116|    0.0244|  0.6335|       |
|Has_Other_Antibodies    |   1|   0.0039|    0.0195|  0.8429|       |
|Has_Other_Antibodies    |   2|  -0.0131|    0.0196|  0.5029|       |
|Has_Other_Antibodies    |   3|  -0.0214|    0.0215|  0.3185|       |


# 分析结局: Seizures



## 分析污染物: AQI



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |   1.4648|    0.4631|    3.1629|  0.0016|**     |
|   0|AQI_M0                                             |  -0.0181|    0.0103|   -1.7525|  0.0797|.      |
|   0|other_antibodies_statusHas_Other_Antibodies        |  -1.9163|    1.1466|   -1.6712|  0.0947|.      |
|   0|AQI_M0:other_antibodies_statusHas_Other_Antibodies |   0.0311|    0.0265|    1.1741|  0.2404|       |
|   1|(Intercept)                                        |   1.3202|    0.4433|    2.9779|  0.0029|**     |
|   1|AQI_M1                                             |  -0.0147|    0.0098|   -1.4911|  0.1359|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |  -3.2484|    1.1078|   -2.9324|  0.0034|**     |
|   1|AQI_M1:other_antibodies_statusHas_Other_Antibodies |   0.0607|    0.0243|    2.4977|  0.0125|*      |
|   2|(Intercept)                                        |   1.0113|    0.4262|    2.3730|  0.0176|*      |
|   2|AQI_M2                                             |  -0.0073|    0.0093|   -0.7869|  0.4313|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |  -2.9366|    1.0633|   -2.7618|  0.0057|**     |
|   2|AQI_M2:other_antibodies_statusHas_Other_Antibodies |   0.0535|    0.0234|    2.2865|  0.0222|*      |
|   3|(Intercept)                                        |   0.7583|    0.4107|    1.8464|  0.0648|.      |
|   3|AQI_M3                                             |  -0.0015|    0.0088|   -0.1673|  0.8671|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |  -2.5495|    1.0739|   -2.3741|  0.0176|*      |
|   3|AQI_M3:other_antibodies_statusHas_Other_Antibodies |   0.0442|    0.0235|    1.8796|  0.0602|.      |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0181|    0.0103|  0.0797|.      |
|No_Other_Antibodies     |   1|  -0.0147|    0.0098|  0.1359|       |
|No_Other_Antibodies     |   2|  -0.0073|    0.0093|  0.4313|       |
|No_Other_Antibodies     |   3|  -0.0015|    0.0088|  0.8671|       |
|Has_Other_Antibodies    |   0|   0.0130|    0.0244|  0.5932|       |
|Has_Other_Antibodies    |   1|   0.0461|    0.0222|  0.0383|*      |
|Has_Other_Antibodies    |   2|   0.0462|    0.0215|  0.0315|*      |
|Has_Other_Antibodies    |   3|   0.0428|    0.0218|  0.0500|*      |


## 分析污染物: CO



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                       |   0.9392|    0.6106|    1.5382|  0.1240|       |
|   0|CO_M0                                             |  -0.3470|    0.8404|   -0.4129|  0.6796|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |  -1.4918|    1.5827|   -0.9426|  0.3459|       |
|   0|CO_M0:other_antibodies_statusHas_Other_Antibodies |   1.2536|    2.1975|    0.5705|  0.5684|       |
|   1|(Intercept)                                       |   1.2042|    0.5612|    2.1456|  0.0319|*      |
|   1|CO_M1                                             |  -0.7136|    0.7601|   -0.9389|  0.3478|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |  -2.4088|    1.3904|   -1.7324|  0.0832|.      |
|   1|CO_M1:other_antibodies_statusHas_Other_Antibodies |   2.4842|    1.8654|    1.3317|  0.1829|       |
|   2|(Intercept)                                       |   0.8155|    0.5504|    1.4816|  0.1384|       |
|   2|CO_M2                                             |  -0.1700|    0.7430|   -0.2288|  0.8190|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |  -2.4079|    1.3540|   -1.7783|  0.0754|.      |
|   2|CO_M2:other_antibodies_statusHas_Other_Antibodies |   2.4751|    1.8171|    1.3621|  0.1732|       |
|   3|(Intercept)                                       |   0.7882|    0.5362|    1.4700|  0.1416|       |
|   3|CO_M3                                             |  -0.1308|    0.7158|   -0.1828|  0.8550|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |  -2.2873|    1.3668|   -1.6735|  0.0942|.      |
|   3|CO_M3:other_antibodies_statusHas_Other_Antibodies |   2.3094|    1.8321|    1.2605|  0.2075|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.3470|    0.8404|  0.6796|       |
|No_Other_Antibodies     |   1|  -0.7136|    0.7601|  0.3478|       |
|No_Other_Antibodies     |   2|  -0.1700|    0.7430|  0.8190|       |
|No_Other_Antibodies     |   3|  -0.1308|    0.7158|  0.8550|       |
|Has_Other_Antibodies    |   0|   0.9066|    2.0304|  0.6552|       |
|Has_Other_Antibodies    |   1|   1.7706|    1.7035|  0.2986|       |
|Has_Other_Antibodies    |   2|   2.3051|    1.6582|  0.1645|       |
|Has_Other_Antibodies    |   3|   2.1785|    1.6865|  0.1964|       |


## 分析污染物: NO2



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |   1.6566|    0.3190|    5.1931|  0.0000|***    |
|   0|NO2_M0                                             |  -0.0389|    0.0115|   -3.3926|  0.0007|***    |
|   0|other_antibodies_statusHas_Other_Antibodies        |  -1.6650|    0.8083|   -2.0599|  0.0394|*      |
|   0|NO2_M0:other_antibodies_statusHas_Other_Antibodies |   0.0434|    0.0339|    1.2813|  0.2001|       |
|   1|(Intercept)                                        |   1.5766|    0.3023|    5.2150|  0.0000|***    |
|   1|NO2_M1                                             |  -0.0361|    0.0109|   -3.3223|  0.0009|***    |
|   1|other_antibodies_statusHas_Other_Antibodies        |  -2.0190|    0.7296|   -2.7673|  0.0057|**     |
|   1|NO2_M1:other_antibodies_statusHas_Other_Antibodies |   0.0588|    0.0279|    2.1116|  0.0347|*      |
|   2|(Intercept)                                        |   1.3640|    0.2943|    4.6353|  0.0000|***    |
|   2|NO2_M2                                             |  -0.0270|    0.0104|   -2.5942|  0.0095|**     |
|   2|other_antibodies_statusHas_Other_Antibodies        |  -2.1299|    0.7802|   -2.7298|  0.0063|**     |
|   2|NO2_M2:other_antibodies_statusHas_Other_Antibodies |   0.0625|    0.0297|    2.1054|  0.0353|*      |
|   3|(Intercept)                                        |   1.2212|    0.2905|    4.2036|  0.0000|***    |
|   3|NO2_M3                                             |  -0.0208|    0.0101|   -2.0671|  0.0387|*      |
|   3|other_antibodies_statusHas_Other_Antibodies        |  -1.7144|    0.6762|   -2.5353|  0.0112|*      |
|   3|NO2_M3:other_antibodies_statusHas_Other_Antibodies |   0.0454|    0.0250|    1.8154|  0.0695|.      |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0389|    0.0115|  0.0007|***    |
|No_Other_Antibodies     |   1|  -0.0361|    0.0109|  0.0009|***    |
|No_Other_Antibodies     |   2|  -0.0270|    0.0104|  0.0095|**     |
|No_Other_Antibodies     |   3|  -0.0208|    0.0101|  0.0387|*      |
|Has_Other_Antibodies    |   0|   0.0045|    0.0319|  0.8888|       |
|Has_Other_Antibodies    |   1|   0.0227|    0.0257|  0.3763|       |
|Has_Other_Antibodies    |   2|   0.0355|    0.0278|  0.2014|       |
|Has_Other_Antibodies    |   3|   0.0245|    0.0229|  0.2837|       |


## 分析污染物: O3



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                       |   0.5896|    0.4936|    1.1944|  0.2323|       |
|   0|O3_M0                                             |   0.0018|    0.0084|    0.2169|  0.8283|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |   0.3951|    1.5477|    0.2553|  0.7985|       |
|   0|O3_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0163|    0.0247|   -0.6616|  0.5083|       |
|   1|(Intercept)                                       |  -0.0116|    0.5614|   -0.0207|  0.9835|       |
|   1|O3_M1                                             |   0.0125|    0.0098|    1.2812|  0.2001|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |  -0.2103|    1.3924|   -0.1510|  0.8800|       |
|   1|O3_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0075|    0.0223|   -0.3387|  0.7349|       |
|   2|(Intercept)                                       |   0.3870|    0.5372|    0.7204|  0.4713|       |
|   2|O3_M2                                             |   0.0052|    0.0090|    0.5851|  0.5585|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |  -0.8149|    1.1855|   -0.6873|  0.4919|       |
|   2|O3_M2:other_antibodies_statusHas_Other_Antibodies |   0.0036|    0.0196|    0.1834|  0.8545|       |
|   3|(Intercept)                                       |   0.4612|    0.5037|    0.9156|  0.3599|       |
|   3|O3_M3                                             |   0.0041|    0.0087|    0.4749|  0.6349|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |  -0.6718|    1.3095|   -0.5130|  0.6080|       |
|   3|O3_M3:other_antibodies_statusHas_Other_Antibodies |   0.0009|    0.0217|    0.0434|  0.9654|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0018|    0.0084|  0.8283|       |
|No_Other_Antibodies     |   1|   0.0125|    0.0098|  0.2001|       |
|No_Other_Antibodies     |   2|   0.0052|    0.0090|  0.5585|       |
|No_Other_Antibodies     |   3|   0.0041|    0.0087|  0.6349|       |
|Has_Other_Antibodies    |   0|  -0.0145|    0.0232|  0.5319|       |
|Has_Other_Antibodies    |   1|   0.0050|    0.0200|  0.8033|       |
|Has_Other_Antibodies    |   2|   0.0088|    0.0174|  0.6124|       |
|Has_Other_Antibodies    |   3|   0.0051|    0.0199|  0.7997|       |


## 分析污染物: PM10



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                                | estimate| std.error| statistic| p.value|signif |
|---:|:---------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                         |   1.4099|    0.3947|    3.5725|  0.0004|***    |
|   0|PM10_M0                                             |  -0.0171|    0.0088|   -1.9472|  0.0515|.      |
|   0|other_antibodies_statusHas_Other_Antibodies         |  -1.8066|    0.9523|   -1.8971|  0.0578|.      |
|   0|PM10_M0:other_antibodies_statusHas_Other_Antibodies |   0.0292|    0.0222|    1.3140|  0.1888|       |
|   1|(Intercept)                                         |   1.2319|    0.3738|    3.2955|  0.0010|***    |
|   1|PM10_M1                                             |  -0.0129|    0.0083|   -1.5516|  0.1208|       |
|   1|other_antibodies_statusHas_Other_Antibodies         |  -2.7524|    0.9323|   -2.9523|  0.0032|**     |
|   1|PM10_M1:other_antibodies_statusHas_Other_Antibodies |   0.0506|    0.0206|    2.4507|  0.0143|*      |
|   2|(Intercept)                                         |   1.0401|    0.3743|    2.7786|  0.0055|**     |
|   2|PM10_M2                                             |  -0.0081|    0.0082|   -0.9939|  0.3203|       |
|   2|other_antibodies_statusHas_Other_Antibodies         |  -2.7506|    0.9310|   -2.9546|  0.0031|**     |
|   2|PM10_M2:other_antibodies_statusHas_Other_Antibodies |   0.0504|    0.0207|    2.4330|  0.0150|*      |
|   3|(Intercept)                                         |   0.7224|    0.3591|    2.0116|  0.0443|*      |
|   3|PM10_M3                                             |  -0.0007|    0.0077|   -0.0873|  0.9304|       |
|   3|other_antibodies_statusHas_Other_Antibodies         |  -2.2207|    0.9295|   -2.3892|  0.0169|*      |
|   3|PM10_M3:other_antibodies_statusHas_Other_Antibodies |   0.0377|    0.0206|    1.8345|  0.0666|.      |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0171|    0.0088|  0.0515|.      |
|No_Other_Antibodies     |   1|  -0.0129|    0.0083|  0.1208|       |
|No_Other_Antibodies     |   2|  -0.0081|    0.0082|  0.3203|       |
|No_Other_Antibodies     |   3|  -0.0007|    0.0077|  0.9304|       |
|Has_Other_Antibodies    |   0|   0.0121|    0.0204|  0.5537|       |
|Has_Other_Antibodies    |   1|   0.0377|    0.0189|  0.0460|*      |
|Has_Other_Antibodies    |   2|   0.0422|    0.0190|  0.0264|*      |
|Has_Other_Antibodies    |   3|   0.0371|    0.0191|  0.0519|.      |


## 分析污染物: PM2.5



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                                 | estimate| std.error| statistic| p.value|signif |
|---:|:----------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                          |   1.2211|    0.3408|    3.5833|  0.0003|***    |
|   0|PM2.5_M0                                             |  -0.0215|    0.0127|   -1.6963|  0.0898|.      |
|   0|other_antibodies_statusHas_Other_Antibodies          |  -1.6535|    0.8554|   -1.9329|  0.0532|.      |
|   0|PM2.5_M0:other_antibodies_statusHas_Other_Antibodies |   0.0440|    0.0340|    1.2933|  0.1959|       |
|   1|(Intercept)                                          |   1.1559|    0.3298|    3.5045|  0.0005|***    |
|   1|PM2.5_M1                                             |  -0.0187|    0.0121|   -1.5431|  0.1228|       |
|   1|other_antibodies_statusHas_Other_Antibodies          |  -2.5333|    0.8286|   -3.0572|  0.0022|**     |
|   1|PM2.5_M1:other_antibodies_statusHas_Other_Antibodies |   0.0768|    0.0304|    2.5266|  0.0115|*      |
|   2|(Intercept)                                          |   0.8970|    0.3107|    2.8876|  0.0039|**     |
|   2|PM2.5_M2                                             |  -0.0081|    0.0111|   -0.7255|  0.4681|       |
|   2|other_antibodies_statusHas_Other_Antibodies          |  -2.2840|    0.7918|   -2.8845|  0.0039|**     |
|   2|PM2.5_M2:other_antibodies_statusHas_Other_Antibodies |   0.0663|    0.0289|    2.2967|  0.0216|*      |
|   3|(Intercept)                                          |   0.7143|    0.3062|    2.3325|  0.0197|*      |
|   3|PM2.5_M3                                             |  -0.0008|    0.0108|   -0.0760|  0.9394|       |
|   3|other_antibodies_statusHas_Other_Antibodies          |  -1.8984|    0.7653|   -2.4806|  0.0131|*      |
|   3|PM2.5_M3:other_antibodies_statusHas_Other_Antibodies |   0.0503|    0.0275|    1.8322|  0.0669|.      |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0215|    0.0127|  0.0898|.      |
|No_Other_Antibodies     |   1|  -0.0187|    0.0121|  0.1228|       |
|No_Other_Antibodies     |   2|  -0.0081|    0.0111|  0.4681|       |
|No_Other_Antibodies     |   3|  -0.0008|    0.0108|  0.9394|       |
|Has_Other_Antibodies    |   0|   0.0225|    0.0316|  0.4764|       |
|Has_Other_Antibodies    |   1|   0.0581|    0.0279|  0.0371|*      |
|Has_Other_Antibodies    |   2|   0.0582|    0.0266|  0.0288|*      |
|Has_Other_Antibodies    |   3|   0.0495|    0.0252|  0.0499|*      |


## 分析污染物: SO2



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |   1.3844|    0.3919|    3.5325|  0.0004|***    |
|   0|SO2_M0                                             |  -0.0165|    0.0087|   -1.8921|  0.0585|.      |
|   0|other_antibodies_statusHas_Other_Antibodies        |  -1.7610|    0.9445|   -1.8645|  0.0622|.      |
|   0|SO2_M0:other_antibodies_statusHas_Other_Antibodies |   0.0282|    0.0221|    1.2762|  0.2019|       |
|   1|(Intercept)                                        |   1.2127|    0.3714|    3.2653|  0.0011|**     |
|   1|SO2_M1                                             |  -0.0125|    0.0083|   -1.5070|  0.1318|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |  -2.7170|    0.9223|   -2.9459|  0.0032|**     |
|   1|SO2_M1:other_antibodies_statusHas_Other_Antibodies |   0.0499|    0.0204|    2.4412|  0.0146|*      |
|   2|(Intercept)                                        |   1.0309|    0.3721|    2.7703|  0.0056|**     |
|   2|SO2_M2                                             |  -0.0080|    0.0082|   -0.9741|  0.3300|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |  -2.7489|    0.9280|   -2.9623|  0.0031|**     |
|   2|SO2_M2:other_antibodies_statusHas_Other_Antibodies |   0.0505|    0.0207|    2.4383|  0.0148|*      |
|   3|(Intercept)                                        |   0.7443|    0.3578|    2.0804|  0.0375|*      |
|   3|SO2_M3                                             |  -0.0012|    0.0077|   -0.1535|  0.8780|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |  -2.2140|    0.9216|   -2.4024|  0.0163|*      |
|   3|SO2_M3:other_antibodies_statusHas_Other_Antibodies |   0.0378|    0.0205|    1.8448|  0.0651|.      |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0165|    0.0087|  0.0585|.      |
|No_Other_Antibodies     |   1|  -0.0125|    0.0083|  0.1318|       |
|No_Other_Antibodies     |   2|  -0.0080|    0.0082|  0.3300|       |
|No_Other_Antibodies     |   3|  -0.0012|    0.0077|  0.8780|       |
|Has_Other_Antibodies    |   0|   0.0116|    0.0203|  0.5664|       |
|Has_Other_Antibodies    |   1|   0.0374|    0.0187|  0.0452|*      |
|Has_Other_Antibodies    |   2|   0.0425|    0.0190|  0.0254|*      |
|Has_Other_Antibodies    |   3|   0.0366|    0.0190|  0.0538|.      |


# 分析结局: Memory dysfunction



## 分析污染物: AQI



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |  -0.5529|    0.4303|   -1.2849|  0.1988|       |
|   0|AQI_M0                                             |   0.0127|    0.0098|    1.3034|  0.1924|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.1423|    1.1310|    0.1258|  0.8999|       |
|   0|AQI_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0070|    0.0261|   -0.2693|  0.7877|       |
|   1|(Intercept)                                        |  -0.7184|    0.4185|   -1.7164|  0.0861|.      |
|   1|AQI_M1                                             |   0.0166|    0.0095|    1.7551|  0.0792|.      |
|   1|other_antibodies_statusHas_Other_Antibodies        |  -0.1091|    1.0393|   -0.1050|  0.9164|       |
|   1|AQI_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0018|    0.0225|   -0.0806|  0.9358|       |
|   2|(Intercept)                                        |  -0.5262|    0.4033|   -1.3048|  0.1920|       |
|   2|AQI_M2                                             |   0.0118|    0.0089|    1.3290|  0.1839|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |   0.1164|    0.9633|    0.1209|  0.9038|       |
|   2|AQI_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0064|    0.0207|   -0.3118|  0.7552|       |
|   3|(Intercept)                                        |  -0.4214|    0.3862|   -1.0911|  0.2752|       |
|   3|AQI_M3                                             |   0.0093|    0.0084|    1.1090|  0.2674|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   0.2765|    0.9706|    0.2849|  0.7758|       |
|   3|AQI_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0099|    0.0207|   -0.4801|  0.6311|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0127|    0.0098|  0.1924|       |
|No_Other_Antibodies     |   1|   0.0166|    0.0095|  0.0792|.      |
|No_Other_Antibodies     |   2|   0.0118|    0.0089|  0.1839|       |
|No_Other_Antibodies     |   3|   0.0093|    0.0084|  0.2674|       |
|Has_Other_Antibodies    |   0|   0.0057|    0.0242|  0.8136|       |
|Has_Other_Antibodies    |   1|   0.0148|    0.0204|  0.4685|       |
|Has_Other_Antibodies    |   2|   0.0053|    0.0187|  0.7746|       |
|Has_Other_Antibodies    |   3|  -0.0007|    0.0189|  0.9720|       |


## 分析污染物: CO



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                       |  -1.1399|    0.5924|   -1.9241|  0.0543|.      |
|   0|CO_M0                                             |   1.5913|    0.8212|    1.9378|  0.0526|.      |
|   0|other_antibodies_statusHas_Other_Antibodies       |   1.0749|    1.5512|    0.6929|  0.4884|       |
|   0|CO_M0:other_antibodies_statusHas_Other_Antibodies |  -1.7461|    2.1499|   -0.8122|  0.4167|       |
|   1|(Intercept)                                       |  -1.4857|    0.5854|   -2.5378|  0.0112|*      |
|   1|CO_M1                                             |   2.0692|    0.8088|    2.5585|  0.0105|*      |
|   1|other_antibodies_statusHas_Other_Antibodies       |   0.0554|    1.3939|    0.0398|  0.9683|       |
|   1|CO_M1:other_antibodies_statusHas_Other_Antibodies |  -0.3562|    1.8611|   -0.1914|  0.8482|       |
|   2|(Intercept)                                       |  -1.4605|    0.5530|   -2.6410|  0.0083|**     |
|   2|CO_M2                                             |   2.0185|    0.7560|    2.6698|  0.0076|**     |
|   2|other_antibodies_statusHas_Other_Antibodies       |   0.9258|    1.3062|    0.7087|  0.4785|       |
|   2|CO_M2:other_antibodies_statusHas_Other_Antibodies |  -1.5268|    1.7354|   -0.8798|  0.3790|       |
|   3|(Intercept)                                       |  -1.2040|    0.5273|   -2.2835|  0.0224|*      |
|   3|CO_M3                                             |   1.6432|    0.7109|    2.3114|  0.0208|*      |
|   3|other_antibodies_statusHas_Other_Antibodies       |   0.4435|    1.3312|    0.3331|  0.7390|       |
|   3|CO_M3:other_antibodies_statusHas_Other_Antibodies |  -0.8424|    1.7675|   -0.4766|  0.6336|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   1.5913|    0.8212|  0.0526|.      |
|No_Other_Antibodies     |   1|   2.0692|    0.8088|  0.0105|*      |
|No_Other_Antibodies     |   2|   2.0185|    0.7560|  0.0076|**     |
|No_Other_Antibodies     |   3|   1.6432|    0.7109|  0.0208|*      |
|Has_Other_Antibodies    |   0|  -0.1549|    1.9868|  0.9379|       |
|Has_Other_Antibodies    |   1|   1.7130|    1.6762|  0.3068|       |
|Has_Other_Antibodies    |   2|   0.4917|    1.5620|  0.7529|       |
|Has_Other_Antibodies    |   3|   0.8008|    1.6182|  0.6207|       |


## 分析污染物: NO2



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |  -0.3803|    0.2838|   -1.3400|  0.1802|       |
|   0|NO2_M0                                             |   0.0153|    0.0107|    1.4232|  0.1547|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |  -0.4358|    0.8106|   -0.5377|  0.5908|       |
|   0|NO2_M0:other_antibodies_statusHas_Other_Antibodies |   0.0146|    0.0342|    0.4276|  0.6689|       |
|   1|(Intercept)                                        |  -0.4670|    0.2722|   -1.7158|  0.0862|.      |
|   1|NO2_M1                                             |   0.0191|    0.0103|    1.8525|  0.0640|.      |
|   1|other_antibodies_statusHas_Other_Antibodies        |  -0.4344|    0.7300|   -0.5951|  0.5518|       |
|   1|NO2_M1:other_antibodies_statusHas_Other_Antibodies |   0.0118|    0.0278|    0.4224|  0.6727|       |
|   2|(Intercept)                                        |  -0.4583|    0.2701|   -1.6964|  0.0898|.      |
|   2|NO2_M2                                             |   0.0184|    0.0100|    1.8336|  0.0667|.      |
|   2|other_antibodies_statusHas_Other_Antibodies        |   0.2093|    0.7305|    0.2865|  0.7745|       |
|   2|NO2_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0153|    0.0271|   -0.5651|  0.5720|       |
|   3|(Intercept)                                        |  -0.3660|    0.2674|   -1.3691|  0.1710|       |
|   3|NO2_M3                                             |   0.0142|    0.0096|    1.4726|  0.1409|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   0.0700|    0.6506|    0.1077|  0.9143|       |
|   3|NO2_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0091|    0.0235|   -0.3890|  0.6973|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0153|    0.0107|  0.1547|       |
|No_Other_Antibodies     |   1|   0.0191|    0.0103|  0.0640|.      |
|No_Other_Antibodies     |   2|   0.0184|    0.0100|  0.0667|.      |
|No_Other_Antibodies     |   3|   0.0142|    0.0096|  0.1409|       |
|Has_Other_Antibodies    |   0|   0.0299|    0.0325|  0.3579|       |
|Has_Other_Antibodies    |   1|   0.0309|    0.0258|  0.2318|       |
|Has_Other_Antibodies    |   2|   0.0031|    0.0251|  0.9027|       |
|Has_Other_Antibodies    |   3|   0.0051|    0.0214|  0.8127|       |


## 分析污染物: O3



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                       |  -0.5418|    0.4668|   -1.1608|  0.2457|       |
|   0|O3_M0                                             |   0.0092|    0.0079|    1.1690|  0.2424|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |   1.2176|    1.5428|    0.7892|  0.4300|       |
|   0|O3_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0230|    0.0247|   -0.9321|  0.3513|       |
|   1|(Intercept)                                       |  -0.9644|    0.5371|   -1.7955|  0.0726|.      |
|   1|O3_M1                                             |   0.0167|    0.0092|    1.8150|  0.0695|.      |
|   1|other_antibodies_statusHas_Other_Antibodies       |   0.4205|    1.3840|    0.3038|  0.7612|       |
|   1|O3_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0108|    0.0220|   -0.4909|  0.6235|       |
|   2|(Intercept)                                       |   0.6311|    0.5102|    1.2371|  0.2161|       |
|   2|O3_M2                                             |  -0.0110|    0.0085|   -1.3021|  0.1929|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |  -2.0124|    1.2051|   -1.6699|  0.0949|.      |
|   2|O3_M2:other_antibodies_statusHas_Other_Antibodies |   0.0317|    0.0198|    1.5965|  0.1104|       |
|   3|(Intercept)                                       |   0.4559|    0.4754|    0.9590|  0.3376|       |
|   3|O3_M3                                             |  -0.0083|    0.0081|   -1.0228|  0.3064|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |  -0.8311|    1.3011|   -0.6388|  0.5230|       |
|   3|O3_M3:other_antibodies_statusHas_Other_Antibodies |   0.0117|    0.0215|    0.5454|  0.5855|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0092|    0.0079|  0.2424|       |
|No_Other_Antibodies     |   1|   0.0167|    0.0092|  0.0695|.      |
|No_Other_Antibodies     |   2|  -0.0110|    0.0085|  0.1929|       |
|No_Other_Antibodies     |   3|  -0.0083|    0.0081|  0.3064|       |
|Has_Other_Antibodies    |   0|  -0.0138|    0.0234|  0.5558|       |
|Has_Other_Antibodies    |   1|   0.0060|    0.0200|  0.7657|       |
|Has_Other_Antibodies    |   2|   0.0206|    0.0179|  0.2499|       |
|Has_Other_Antibodies    |   3|   0.0034|    0.0199|  0.8641|       |


## 分析污染物: PM10



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                                | estimate| std.error| statistic| p.value|signif |
|---:|:---------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                         |  -0.3348|    0.3641|   -0.9195|  0.3578|       |
|   0|PM10_M0                                             |   0.0077|    0.0083|    0.9323|  0.3512|       |
|   0|other_antibodies_statusHas_Other_Antibodies         |  -0.2536|    0.9406|   -0.2696|  0.7874|       |
|   0|PM10_M0:other_antibodies_statusHas_Other_Antibodies |   0.0026|    0.0219|    0.1167|  0.9071|       |
|   1|(Intercept)                                         |  -0.4735|    0.3510|   -1.3493|  0.1772|       |
|   1|PM10_M1                                             |   0.0111|    0.0080|    1.3919|  0.1639|       |
|   1|other_antibodies_statusHas_Other_Antibodies         |  -0.2772|    0.8739|   -0.3172|  0.7511|       |
|   1|PM10_M1:other_antibodies_statusHas_Other_Antibodies |   0.0022|    0.0189|    0.1185|  0.9057|       |
|   2|(Intercept)                                         |  -0.4171|    0.3523|   -1.1840|  0.2364|       |
|   2|PM10_M2                                             |   0.0095|    0.0078|    1.2158|  0.2241|       |
|   2|other_antibodies_statusHas_Other_Antibodies         |   0.1029|    0.8296|    0.1240|  0.9013|       |
|   2|PM10_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0063|    0.0177|   -0.3553|  0.7224|       |
|   3|(Intercept)                                         |  -0.3714|    0.3380|   -1.0987|  0.2719|       |
|   3|PM10_M3                                             |   0.0082|    0.0073|    1.1300|  0.2585|       |
|   3|other_antibodies_statusHas_Other_Antibodies         |   0.1605|    0.8478|    0.1893|  0.8499|       |
|   3|PM10_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0074|    0.0181|   -0.4088|  0.6827|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0077|    0.0083|  0.3512|       |
|No_Other_Antibodies     |   1|   0.0111|    0.0080|  0.1639|       |
|No_Other_Antibodies     |   2|   0.0095|    0.0078|  0.2241|       |
|No_Other_Antibodies     |   3|   0.0082|    0.0073|  0.2585|       |
|Has_Other_Antibodies    |   0|   0.0103|    0.0202|  0.6108|       |
|Has_Other_Antibodies    |   1|   0.0133|    0.0171|  0.4365|       |
|Has_Other_Antibodies    |   2|   0.0032|    0.0159|  0.8393|       |
|Has_Other_Antibodies    |   3|   0.0008|    0.0166|  0.9595|       |


## 分析污染物: PM2.5



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                                 | estimate| std.error| statistic| p.value|signif |
|---:|:----------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                          |  -0.3752|    0.3163|   -1.1863|  0.2355|       |
|   0|PM2.5_M0                                             |   0.0149|    0.0121|    1.2335|  0.2174|       |
|   0|other_antibodies_statusHas_Other_Antibodies          |   0.0033|    0.8407|    0.0039|  0.9969|       |
|   0|PM2.5_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0064|    0.0333|   -0.1924|  0.8474|       |
|   1|(Intercept)                                          |  -0.4306|    0.3083|   -1.3964|  0.1626|       |
|   1|PM2.5_M1                                             |   0.0171|    0.0116|    1.4655|  0.1428|       |
|   1|other_antibodies_statusHas_Other_Antibodies          |  -0.2030|    0.7761|   -0.2615|  0.7937|       |
|   1|PM2.5_M1:other_antibodies_statusHas_Other_Antibodies |   0.0009|    0.0278|    0.0322|  0.9743|       |
|   2|(Intercept)                                          |  -0.3776|    0.2940|   -1.2843|  0.1990|       |
|   2|PM2.5_M2                                             |   0.0145|    0.0107|    1.3530|  0.1761|       |
|   2|other_antibodies_statusHas_Other_Antibodies          |   0.0935|    0.7216|    0.1295|  0.8969|       |
|   2|PM2.5_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0102|    0.0252|   -0.4067|  0.6842|       |
|   3|(Intercept)                                          |  -0.3636|    0.2890|   -1.2580|  0.2084|       |
|   3|PM2.5_M3                                             |   0.0136|    0.0103|    1.3287|  0.1839|       |
|   3|other_antibodies_statusHas_Other_Antibodies          |   0.2248|    0.7065|    0.3182|  0.7504|       |
|   3|PM2.5_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0150|    0.0242|   -0.6211|  0.5345|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0149|    0.0121|  0.2174|       |
|No_Other_Antibodies     |   1|   0.0171|    0.0116|  0.1428|       |
|No_Other_Antibodies     |   2|   0.0145|    0.0107|  0.1761|       |
|No_Other_Antibodies     |   3|   0.0136|    0.0103|  0.1839|       |
|Has_Other_Antibodies    |   0|   0.0085|    0.0310|  0.7836|       |
|Has_Other_Antibodies    |   1|   0.0180|    0.0252|  0.4765|       |
|Has_Other_Antibodies    |   2|   0.0042|    0.0228|  0.8519|       |
|Has_Other_Antibodies    |   3|  -0.0014|    0.0219|  0.9505|       |


## 分析污染物: SO2



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |  -0.3351|    0.3621|   -0.9255|  0.3547|       |
|   0|SO2_M0                                             |   0.0078|    0.0083|    0.9390|  0.3478|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |  -0.2032|    0.9324|   -0.2179|  0.8275|       |
|   0|SO2_M0:other_antibodies_statusHas_Other_Antibodies |   0.0013|    0.0217|    0.0600|  0.9522|       |
|   1|(Intercept)                                        |  -0.4686|    0.3489|   -1.3431|  0.1792|       |
|   1|SO2_M1                                             |   0.0110|    0.0080|    1.3862|  0.1657|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |  -0.2689|    0.8657|   -0.3106|  0.7561|       |
|   1|SO2_M1:other_antibodies_statusHas_Other_Antibodies |   0.0020|    0.0188|    0.1079|  0.9140|       |
|   2|(Intercept)                                        |  -0.4319|    0.3504|   -1.2327|  0.2177|       |
|   2|SO2_M2                                             |   0.0099|    0.0078|    1.2682|  0.2047|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |   0.1104|    0.8240|    0.1339|  0.8935|       |
|   2|SO2_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0065|    0.0176|   -0.3693|  0.7119|       |
|   3|(Intercept)                                        |  -0.4041|    0.3369|   -1.1994|  0.2304|       |
|   3|SO2_M3                                             |   0.0090|    0.0073|    1.2382|  0.2156|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   0.1836|    0.8427|    0.2178|  0.8276|       |
|   3|SO2_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0080|    0.0181|   -0.4405|  0.6595|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0078|    0.0083|  0.3478|       |
|No_Other_Antibodies     |   1|   0.0110|    0.0080|  0.1657|       |
|No_Other_Antibodies     |   2|   0.0099|    0.0078|  0.2047|       |
|No_Other_Antibodies     |   3|   0.0090|    0.0073|  0.2156|       |
|Has_Other_Antibodies    |   0|   0.0091|    0.0201|  0.6514|       |
|Has_Other_Antibodies    |   1|   0.0131|    0.0170|  0.4417|       |
|Has_Other_Antibodies    |   2|   0.0034|    0.0158|  0.8295|       |
|Has_Other_Antibodies    |   3|   0.0011|    0.0165|  0.9484|       |


# 分析结局: Psychiatric symptoms



## 分析污染物: AQI



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |   2.0660|    0.6656|    3.1042|  0.0019|**     |
|   0|AQI_M0                                             |  -0.0010|    0.0151|   -0.0671|  0.9465|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.8117|    1.4902|    0.5447|  0.5860|       |
|   0|AQI_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0362|    0.0326|   -1.1100|  0.2670|       |
|   1|(Intercept)                                        |   1.3133|    0.6500|    2.0203|  0.0433|*      |
|   1|AQI_M1                                             |   0.0172|    0.0155|    1.1123|  0.2660|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |   0.5202|    1.3384|    0.3887|  0.6975|       |
|   1|AQI_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0295|    0.0290|   -1.0202|  0.3076|       |
|   2|(Intercept)                                        |   1.7118|    0.6263|    2.7332|  0.0063|**     |
|   2|AQI_M2                                             |   0.0073|    0.0141|    0.5151|  0.6065|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |   0.2125|    1.2514|    0.1698|  0.8651|       |
|   2|AQI_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0216|    0.0263|   -0.8192|  0.4127|       |
|   3|(Intercept)                                        |   1.3288|    0.5950|    2.2333|  0.0255|*      |
|   3|AQI_M3                                             |   0.0163|    0.0136|    1.1943|  0.2324|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   0.2128|    1.2331|    0.1726|  0.8630|       |
|   3|AQI_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0221|    0.0263|   -0.8392|  0.4014|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0010|    0.0151|  0.9465|       |
|No_Other_Antibodies     |   1|   0.0172|    0.0155|  0.2660|       |
|No_Other_Antibodies     |   2|   0.0073|    0.0141|  0.6065|       |
|No_Other_Antibodies     |   3|   0.0163|    0.0136|  0.2324|       |
|Has_Other_Antibodies    |   0|  -0.0372|    0.0289|  0.1983|       |
|Has_Other_Antibodies    |   1|  -0.0124|    0.0245|  0.6139|       |
|Has_Other_Antibodies    |   2|  -0.0143|    0.0222|  0.5200|       |
|Has_Other_Antibodies    |   3|  -0.0058|    0.0225|  0.7964|       |


## 分析污染物: CO



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                       |   1.7265|    0.9102|    1.8969|  0.0578|.      |
|   0|CO_M0                                             |   0.4215|    1.2714|    0.3315|  0.7403|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |   0.6883|    1.8715|    0.3678|  0.7130|       |
|   0|CO_M0:other_antibodies_statusHas_Other_Antibodies |  -2.0054|    2.5431|   -0.7886|  0.4304|       |
|   1|(Intercept)                                       |   1.4307|    0.8842|    1.6180|  0.1057|       |
|   1|CO_M1                                             |   0.8411|    1.2406|    0.6780|  0.4978|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |   0.5353|    1.7156|    0.3120|  0.7550|       |
|   1|CO_M1:other_antibodies_statusHas_Other_Antibodies |  -1.7661|    2.2721|   -0.7773|  0.4370|       |
|   2|(Intercept)                                       |   1.6711|    0.8272|    2.0203|  0.0434|*      |
|   2|CO_M2                                             |   0.4941|    1.1392|    0.4338|  0.6645|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |   0.2918|    1.6514|    0.1767|  0.8598|       |
|   2|CO_M2:other_antibodies_statusHas_Other_Antibodies |  -1.4139|    2.1669|   -0.6525|  0.5141|       |
|   3|(Intercept)                                       |   1.2591|    0.8253|    1.5257|  0.1271|       |
|   3|CO_M3                                             |   1.0726|    1.1473|    0.9349|  0.3498|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |   0.6839|    1.6897|    0.4047|  0.6857|       |
|   3|CO_M3:other_antibodies_statusHas_Other_Antibodies |  -1.9679|    2.2301|   -0.8824|  0.3775|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.4215|    1.2714|  0.7403|       |
|No_Other_Antibodies     |   1|   0.8411|    1.2406|  0.4978|       |
|No_Other_Antibodies     |   2|   0.4941|    1.1392|  0.6645|       |
|No_Other_Antibodies     |   3|   1.0726|    1.1473|  0.3498|       |
|Has_Other_Antibodies    |   0|  -1.5840|    2.2025|  0.4720|       |
|Has_Other_Antibodies    |   1|  -0.9250|    1.9035|  0.6270|       |
|Has_Other_Antibodies    |   2|  -0.9198|    1.8433|  0.6178|       |
|Has_Other_Antibodies    |   3|  -0.8953|    1.9123|  0.6396|       |


## 分析污染物: NO2



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |   2.0864|    0.4390|    4.7522|  0.0000|***    |
|   0|NO2_M0                                             |  -0.0026|    0.0164|   -0.1603|  0.8727|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |  -0.7257|    1.0001|   -0.7256|  0.4681|       |
|   0|NO2_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0011|    0.0415|   -0.0262|  0.9791|       |
|   1|(Intercept)                                        |   1.8099|    0.4167|    4.3429|  0.0000|***    |
|   1|NO2_M1                                             |   0.0092|    0.0164|    0.5618|  0.5743|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |  -0.9242|    0.8971|   -1.0302|  0.3029|       |
|   1|NO2_M1:other_antibodies_statusHas_Other_Antibodies |   0.0082|    0.0360|    0.2262|  0.8210|       |
|   2|(Intercept)                                        |   2.3749|    0.4223|    5.6244|  0.0000|***    |
|   2|NO2_M2                                             |  -0.0141|    0.0146|   -0.9621|  0.3360|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |  -1.2747|    0.9266|   -1.3757|  0.1689|       |
|   2|NO2_M2:other_antibodies_statusHas_Other_Antibodies |   0.0216|    0.0346|    0.6238|  0.5328|       |
|   3|(Intercept)                                        |   2.1588|    0.4155|    5.1956|  0.0000|***    |
|   3|NO2_M3                                             |  -0.0054|    0.0146|   -0.3710|  0.7107|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |  -1.0554|    0.8310|   -1.2701|  0.2041|       |
|   3|NO2_M3:other_antibodies_statusHas_Other_Antibodies |   0.0130|    0.0307|    0.4221|  0.6730|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0026|    0.0164|  0.8727|       |
|No_Other_Antibodies     |   1|   0.0092|    0.0164|  0.5743|       |
|No_Other_Antibodies     |   2|  -0.0141|    0.0146|  0.3360|       |
|No_Other_Antibodies     |   3|  -0.0054|    0.0146|  0.7107|       |
|Has_Other_Antibodies    |   0|  -0.0037|    0.0382|  0.9226|       |
|Has_Other_Antibodies    |   1|   0.0174|    0.0321|  0.5886|       |
|Has_Other_Antibodies    |   2|   0.0075|    0.0314|  0.8102|       |
|Has_Other_Antibodies    |   3|   0.0075|    0.0270|  0.7799|       |


## 分析污染物: O3



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                       |   2.3382|    0.7168|    3.2621|  0.0011|**     |
|   0|O3_M0                                             |  -0.0055|    0.0119|   -0.4595|  0.6459|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |   1.3770|    1.9889|    0.6923|  0.4887|       |
|   0|O3_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0328|    0.0304|   -1.0823|  0.2791|       |
|   1|(Intercept)                                       |   1.7519|    0.8173|    2.1435|  0.0321|*      |
|   1|O3_M1                                             |   0.0048|    0.0142|    0.3391|  0.7345|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |   0.8096|    1.7283|    0.4684|  0.6395|       |
|   1|O3_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0250|    0.0270|   -0.9283|  0.3532|       |
|   2|(Intercept)                                       |   0.5629|    0.8042|    0.7000|  0.4839|       |
|   2|O3_M2                                             |   0.0258|    0.0143|    1.8074|  0.0707|.      |
|   2|other_antibodies_statusHas_Other_Antibodies       |   1.1421|    1.5066|    0.7581|  0.4484|       |
|   2|O3_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0330|    0.0250|   -1.3188|  0.1872|       |
|   3|(Intercept)                                       |   0.9689|    0.7604|    1.2741|  0.2026|       |
|   3|O3_M3                                             |   0.0192|    0.0138|    1.3925|  0.1638|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |  -0.0383|    1.6478|   -0.0232|  0.9815|       |
|   3|O3_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0132|    0.0280|   -0.4715|  0.6373|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0055|    0.0119|  0.6459|       |
|No_Other_Antibodies     |   1|   0.0048|    0.0142|  0.7345|       |
|No_Other_Antibodies     |   2|   0.0258|    0.0143|  0.0707|.      |
|No_Other_Antibodies     |   3|   0.0192|    0.0138|  0.1638|       |
|Has_Other_Antibodies    |   0|  -0.0383|    0.0279|  0.1700|       |
|Has_Other_Antibodies    |   1|  -0.0202|    0.0229|  0.3779|       |
|Has_Other_Antibodies    |   2|  -0.0072|    0.0205|  0.7261|       |
|Has_Other_Antibodies    |   3|   0.0060|    0.0244|  0.8060|       |


## 分析污染物: PM10



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                                | estimate| std.error| statistic| p.value|signif |
|---:|:---------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                         |   2.1204|    0.5664|    3.7439|  0.0002|***    |
|   0|PM10_M0                                             |  -0.0023|    0.0128|   -0.1828|  0.8549|       |
|   0|other_antibodies_statusHas_Other_Antibodies         |   0.5353|    1.2432|    0.4306|  0.6668|       |
|   0|PM10_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0303|    0.0271|   -1.1216|  0.2620|       |
|   1|(Intercept)                                         |   1.2746|    0.5524|    2.3073|  0.0210|*      |
|   1|PM10_M1                                             |   0.0188|    0.0136|    1.3863|  0.1656|       |
|   1|other_antibodies_statusHas_Other_Antibodies         |   0.4747|    1.1236|    0.4224|  0.6727|       |
|   1|PM10_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0295|    0.0244|   -1.2077|  0.2272|       |
|   2|(Intercept)                                         |   1.8630|    0.5453|    3.4163|  0.0006|***    |
|   2|PM10_M2                                             |   0.0038|    0.0123|    0.3103|  0.7563|       |
|   2|other_antibodies_statusHas_Other_Antibodies         |  -0.1604|    1.0707|   -0.1498|  0.8809|       |
|   2|PM10_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0134|    0.0225|   -0.5942|  0.5524|       |
|   3|(Intercept)                                         |   1.5259|    0.5201|    2.9341|  0.0033|**     |
|   3|PM10_M3                                             |   0.0118|    0.0119|    0.9967|  0.3189|       |
|   3|other_antibodies_statusHas_Other_Antibodies         |   0.0464|    1.0793|    0.0430|  0.9657|       |
|   3|PM10_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0184|    0.0229|   -0.8040|  0.4214|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0023|    0.0128|  0.8549|       |
|No_Other_Antibodies     |   1|   0.0188|    0.0136|  0.1656|       |
|No_Other_Antibodies     |   2|   0.0038|    0.0123|  0.7563|       |
|No_Other_Antibodies     |   3|   0.0118|    0.0119|  0.3189|       |
|Has_Other_Antibodies    |   0|  -0.0327|    0.0238|  0.1703|       |
|Has_Other_Antibodies    |   1|  -0.0107|    0.0203|  0.5996|       |
|Has_Other_Antibodies    |   2|  -0.0095|    0.0188|  0.6121|       |
|Has_Other_Antibodies    |   3|  -0.0066|    0.0196|  0.7359|       |


## 分析污染物: PM2.5



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                                 | estimate| std.error| statistic| p.value|signif |
|---:|:----------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                          |   1.8763|    0.4867|    3.8549|  0.0001|***    |
|   0|PM2.5_M0                                             |   0.0061|    0.0189|    0.3240|  0.7459|       |
|   0|other_antibodies_statusHas_Other_Antibodies          |   0.2029|    1.0820|    0.1875|  0.8513|       |
|   0|PM2.5_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0394|    0.0408|   -0.9656|  0.3342|       |
|   1|(Intercept)                                          |   1.5481|    0.4745|    3.2623|  0.0011|**     |
|   1|PM2.5_M1                                             |   0.0202|    0.0191|    1.0540|  0.2919|       |
|   1|other_antibodies_statusHas_Other_Antibodies          |  -0.0121|    0.9875|   -0.0122|  0.9902|       |
|   1|PM2.5_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0300|    0.0356|   -0.8431|  0.3992|       |
|   2|(Intercept)                                          |   1.7060|    0.4565|    3.7373|  0.0002|***    |
|   2|PM2.5_M2                                             |   0.0130|    0.0174|    0.7437|  0.4571|       |
|   2|other_antibodies_statusHas_Other_Antibodies          |  -0.0718|    0.9328|   -0.0770|  0.9386|       |
|   2|PM2.5_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0263|    0.0321|   -0.8197|  0.4124|       |
|   3|(Intercept)                                          |   1.5249|    0.4435|    3.4385|  0.0006|***    |
|   3|PM2.5_M3                                             |   0.0203|    0.0171|    1.1898|  0.2341|       |
|   3|other_antibodies_statusHas_Other_Antibodies          |  -0.1277|    0.8989|   -0.1420|  0.8871|       |
|   3|PM2.5_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0247|    0.0312|   -0.7930|  0.4278|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0061|    0.0189|  0.7459|       |
|No_Other_Antibodies     |   1|   0.0202|    0.0191|  0.2919|       |
|No_Other_Antibodies     |   2|   0.0130|    0.0174|  0.4571|       |
|No_Other_Antibodies     |   3|   0.0203|    0.0171|  0.2341|       |
|Has_Other_Antibodies    |   0|  -0.0333|    0.0361|  0.3573|       |
|Has_Other_Antibodies    |   1|  -0.0099|    0.0300|  0.7427|       |
|Has_Other_Antibodies    |   2|  -0.0134|    0.0270|  0.6204|       |
|Has_Other_Antibodies    |   3|  -0.0044|    0.0261|  0.8661|       |


## 分析污染物: SO2



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |   2.0813|    0.5625|    3.7003|  0.0002|***    |
|   0|SO2_M0                                             |  -0.0014|    0.0128|   -0.1099|  0.9125|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.5990|    1.2369|    0.4843|  0.6282|       |
|   0|SO2_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0319|    0.0270|   -1.1844|  0.2362|       |
|   1|(Intercept)                                        |   1.2100|    0.5510|    2.1959|  0.0281|*      |
|   1|SO2_M1                                             |   0.0207|    0.0137|    1.5046|  0.1324|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |   0.5178|    1.1145|    0.4646|  0.6422|       |
|   1|SO2_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0308|    0.0244|   -1.2664|  0.2054|       |
|   2|(Intercept)                                        |   1.8736|    0.5421|    3.4565|  0.0005|***    |
|   2|SO2_M2                                             |   0.0036|    0.0123|    0.2919|  0.7704|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |  -0.1288|    1.0649|   -0.1209|  0.9038|       |
|   2|SO2_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0141|    0.0223|   -0.6304|  0.5284|       |
|   3|(Intercept)                                        |   1.5265|    0.5177|    2.9489|  0.0032|**     |
|   3|SO2_M3                                             |   0.0119|    0.0119|    1.0005|  0.3171|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   0.0083|    1.0715|    0.0077|  0.9938|       |
|   3|SO2_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0177|    0.0229|   -0.7705|  0.4410|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0014|    0.0128|  0.9125|       |
|No_Other_Antibodies     |   1|   0.0207|    0.0137|  0.1324|       |
|No_Other_Antibodies     |   2|   0.0036|    0.0123|  0.7704|       |
|No_Other_Antibodies     |   3|   0.0119|    0.0119|  0.3171|       |
|Has_Other_Antibodies    |   0|  -0.0334|    0.0237|  0.1601|       |
|Has_Other_Antibodies    |   1|  -0.0102|    0.0201|  0.6125|       |
|Has_Other_Antibodies    |   2|  -0.0105|    0.0186|  0.5737|       |
|Has_Other_Antibodies    |   3|  -0.0058|    0.0196|  0.7670|       |


# 分析结局: Coma



## 分析污染物: AQI



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |  -1.6827|    0.6098|   -2.7593|  0.0058|**     |
|   0|AQI_M0                                             |  -0.0027|    0.0139|   -0.1931|  0.8469|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.2810|    1.7889|    0.1571|  0.8752|       |
|   0|AQI_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0147|    0.0432|   -0.3401|  0.7338|       |
|   1|(Intercept)                                        |  -1.8360|    0.5909|   -3.1071|  0.0019|**     |
|   1|AQI_M1                                             |   0.0009|    0.0133|    0.0708|  0.9436|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |  -0.4126|    1.6264|   -0.2537|  0.7998|       |
|   1|AQI_M1:other_antibodies_statusHas_Other_Antibodies |   0.0023|    0.0350|    0.0664|  0.9470|       |
|   2|(Intercept)                                        |  -1.2184|    0.5806|   -2.0986|  0.0359|*      |
|   2|AQI_M2                                             |  -0.0136|    0.0133|   -1.0210|  0.3073|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |  -0.3432|    1.4977|   -0.2292|  0.8187|       |
|   2|AQI_M2:other_antibodies_statusHas_Other_Antibodies |   0.0009|    0.0339|    0.0266|  0.9787|       |
|   3|(Intercept)                                        |  -2.1827|    0.5568|   -3.9203|  0.0001|***    |
|   3|AQI_M3                                             |   0.0087|    0.0117|    0.7415|  0.4584|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   1.3084|    1.5599|    0.8388|  0.4016|       |
|   3|AQI_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0381|    0.0369|   -1.0334|  0.3014|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0027|    0.0139|  0.8469|       |
|No_Other_Antibodies     |   1|   0.0009|    0.0133|  0.9436|       |
|No_Other_Antibodies     |   2|  -0.0136|    0.0133|  0.3073|       |
|No_Other_Antibodies     |   3|   0.0087|    0.0117|  0.4584|       |
|Has_Other_Antibodies    |   0|  -0.0174|    0.0409|  0.6709|       |
|Has_Other_Antibodies    |   1|   0.0033|    0.0323|  0.9196|       |
|Has_Other_Antibodies    |   2|  -0.0127|    0.0312|  0.6842|       |
|Has_Other_Antibodies    |   3|  -0.0294|    0.0350|  0.4000|       |


## 分析污染物: CO



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                       |  -1.3924|    0.8401|   -1.6575|  0.0974|.      |
|   0|CO_M0                                             |  -0.5742|    1.1770|   -0.4878|  0.6257|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |  -0.1048|    2.6123|   -0.0401|  0.9680|       |
|   0|CO_M0:other_antibodies_statusHas_Other_Antibodies |  -0.2940|    3.6987|   -0.0795|  0.9366|       |
|   1|(Intercept)                                       |  -1.2571|    0.8070|   -1.5577|  0.1193|       |
|   1|CO_M1                                             |  -0.7637|    1.1282|   -0.6769|  0.4985|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |  -1.0687|    2.1110|   -0.5062|  0.6127|       |
|   1|CO_M1:other_antibodies_statusHas_Other_Antibodies |   1.0649|    2.7952|    0.3810|  0.7032|       |
|   2|(Intercept)                                       |  -1.3214|    0.7659|   -1.7252|  0.0845|.      |
|   2|CO_M2                                             |  -0.6676|    1.0594|   -0.6301|  0.5286|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |  -0.3848|    2.0533|   -0.1874|  0.8514|       |
|   2|CO_M2:other_antibodies_statusHas_Other_Antibodies |   0.1182|    2.7829|    0.0425|  0.9661|       |
|   3|(Intercept)                                       |  -1.7392|    0.7241|   -2.4019|  0.0163|*      |
|   3|CO_M3                                             |  -0.0784|    0.9723|   -0.0807|  0.9357|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |   0.8585|    2.1494|    0.3994|  0.6896|       |
|   3|CO_M3:other_antibodies_statusHas_Other_Antibodies |  -1.6464|    3.0175|   -0.5456|  0.5853|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.5742|    1.1770|  0.6257|       |
|No_Other_Antibodies     |   1|  -0.7637|    1.1282|  0.4985|       |
|No_Other_Antibodies     |   2|  -0.6676|    1.0594|  0.5286|       |
|No_Other_Antibodies     |   3|  -0.0784|    0.9723|  0.9357|       |
|Has_Other_Antibodies    |   0|  -0.8682|    3.5076|  0.8045|       |
|Has_Other_Antibodies    |   1|   0.3012|    2.5574|  0.9062|       |
|Has_Other_Antibodies    |   2|  -0.5493|    2.5734|  0.8310|       |
|Has_Other_Antibodies    |   3|  -1.7249|    2.8566|  0.5460|       |


## 分析污染物: NO2



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |  -1.6673|    0.4018|   -4.1501|  0.0000|***    |
|   0|NO2_M0                                             |  -0.0054|    0.0154|   -0.3511|  0.7255|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.2234|    1.2905|    0.1731|  0.8625|       |
|   0|NO2_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0270|    0.0602|   -0.4479|  0.6542|       |
|   1|(Intercept)                                        |  -1.7738|    0.3846|   -4.6125|  0.0000|***    |
|   1|NO2_M1                                             |  -0.0009|    0.0146|   -0.0646|  0.9485|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |  -0.2008|    1.1144|   -0.1802|  0.8570|       |
|   1|NO2_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0047|    0.0433|   -0.1073|  0.9145|       |
|   2|(Intercept)                                        |  -1.3695|    0.3813|   -3.5917|  0.0003|***    |
|   2|NO2_M2                                             |  -0.0184|    0.0152|   -1.2058|  0.2279|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |  -0.3972|    1.1666|   -0.3405|  0.7335|       |
|   2|NO2_M2:other_antibodies_statusHas_Other_Antibodies |   0.0040|    0.0462|    0.0869|  0.9308|       |
|   3|(Intercept)                                        |  -1.8747|    0.3807|   -4.9240|  0.0000|***    |
|   3|NO2_M3                                             |   0.0032|    0.0135|    0.2338|  0.8152|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   0.1582|    1.0412|    0.1519|  0.8792|       |
|   3|NO2_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0202|    0.0413|   -0.4887|  0.6251|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0054|    0.0154|  0.7255|       |
|No_Other_Antibodies     |   1|  -0.0009|    0.0146|  0.9485|       |
|No_Other_Antibodies     |   2|  -0.0184|    0.0152|  0.2279|       |
|No_Other_Antibodies     |   3|   0.0032|    0.0135|  0.8152|       |
|Has_Other_Antibodies    |   0|  -0.0324|    0.0582|  0.5778|       |
|Has_Other_Antibodies    |   1|  -0.0056|    0.0408|  0.8910|       |
|Has_Other_Antibodies    |   2|  -0.0143|    0.0436|  0.7424|       |
|Has_Other_Antibodies    |   3|  -0.0170|    0.0391|  0.6627|       |


## 分析污染物: O3



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                       |  -2.0504|    0.6597|   -3.1080|  0.0019|**     |
|   0|O3_M0                                             |   0.0044|    0.0110|    0.4023|  0.6875|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |   0.7915|    2.4472|    0.3234|  0.7464|       |
|   0|O3_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0183|    0.0400|   -0.4578|  0.6471|       |
|   1|(Intercept)                                       |  -1.7296|    0.7541|   -2.2936|  0.0218|*      |
|   1|O3_M1                                             |  -0.0012|    0.0130|   -0.0903|  0.9280|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |   1.3943|    2.4338|    0.5729|  0.5667|       |
|   1|O3_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0284|    0.0413|   -0.6877|  0.4917|       |
|   2|(Intercept)                                       |  -1.5982|    0.7236|   -2.2087|  0.0272|*      |
|   2|O3_M2                                             |  -0.0034|    0.0121|   -0.2803|  0.7792|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |   1.2626|    1.9264|    0.6554|  0.5122|       |
|   2|O3_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0288|    0.0353|   -0.8166|  0.4142|       |
|   3|(Intercept)                                       |  -1.6889|    0.6774|   -2.4930|  0.0127|*      |
|   3|O3_M3                                             |  -0.0019|    0.0116|   -0.1631|  0.8704|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |   3.8585|    2.3097|    1.6705|  0.0948|.      |
|   3|O3_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0787|    0.0460|   -1.7108|  0.0871|.      |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0044|    0.0110|  0.6875|       |
|No_Other_Antibodies     |   1|  -0.0012|    0.0130|  0.9280|       |
|No_Other_Antibodies     |   2|  -0.0034|    0.0121|  0.7792|       |
|No_Other_Antibodies     |   3|  -0.0019|    0.0116|  0.8704|       |
|Has_Other_Antibodies    |   0|  -0.0139|    0.0384|  0.7181|       |
|Has_Other_Antibodies    |   1|  -0.0296|    0.0393|  0.4508|       |
|Has_Other_Antibodies    |   2|  -0.0322|    0.0331|  0.3312|       |
|Has_Other_Antibodies    |   3|  -0.0806|    0.0445|  0.0701|.      |


## 分析污染物: PM10



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                                | estimate| std.error| statistic| p.value|signif |
|---:|:---------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                         |  -1.7487|    0.5186|   -3.3721|  0.0007|***    |
|   0|PM10_M0                                             |  -0.0011|    0.0119|   -0.0965|  0.9231|       |
|   0|other_antibodies_statusHas_Other_Antibodies         |   0.2928|    1.4845|    0.1973|  0.8436|       |
|   0|PM10_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0156|    0.0368|   -0.4226|  0.6726|       |
|   1|(Intercept)                                         |  -1.8835|    0.4978|   -3.7833|  0.0002|***    |
|   1|PM10_M1                                             |   0.0021|    0.0112|    0.1881|  0.8508|       |
|   1|other_antibodies_statusHas_Other_Antibodies         |  -0.0055|    1.3405|   -0.0041|  0.9967|       |
|   1|PM10_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0072|    0.0297|   -0.2417|  0.8090|       |
|   2|(Intercept)                                         |  -1.1857|    0.5067|   -2.3400|  0.0193|*      |
|   2|PM10_M2                                             |  -0.0149|    0.0120|   -1.2441|  0.2135|       |
|   2|other_antibodies_statusHas_Other_Antibodies         |  -0.4784|    1.2940|   -0.3697|  0.7116|       |
|   2|PM10_M2:other_antibodies_statusHas_Other_Antibodies |   0.0044|    0.0295|    0.1488|  0.8817|       |
|   3|(Intercept)                                         |  -2.1084|    0.4868|   -4.3313|  0.0000|***    |
|   3|PM10_M3                                             |   0.0071|    0.0102|    0.6977|  0.4854|       |
|   3|other_antibodies_statusHas_Other_Antibodies         |   1.2042|    1.3666|    0.8812|  0.3782|       |
|   3|PM10_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0371|    0.0337|   -1.1028|  0.2701|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0011|    0.0119|  0.9231|       |
|No_Other_Antibodies     |   1|   0.0021|    0.0112|  0.8508|       |
|No_Other_Antibodies     |   2|  -0.0149|    0.0120|  0.2135|       |
|No_Other_Antibodies     |   3|   0.0071|    0.0102|  0.4854|       |
|Has_Other_Antibodies    |   0|  -0.0167|    0.0349|  0.6319|       |
|Has_Other_Antibodies    |   1|  -0.0051|    0.0275|  0.8537|       |
|Has_Other_Antibodies    |   2|  -0.0105|    0.0269|  0.6966|       |
|Has_Other_Antibodies    |   3|  -0.0300|    0.0321|  0.3494|       |


## 分析污染物: PM2.5



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                                 | estimate| std.error| statistic| p.value|signif |
|---:|:----------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                          |  -1.6287|    0.4474|   -3.6406|  0.0003|***    |
|   0|PM2.5_M0                                             |  -0.0070|    0.0174|   -0.4014|  0.6882|       |
|   0|other_antibodies_statusHas_Other_Antibodies          |  -0.0861|    1.3255|   -0.0649|  0.9482|       |
|   0|PM2.5_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0103|    0.0553|   -0.1854|  0.8529|       |
|   1|(Intercept)                                          |  -1.7476|    0.4370|   -3.9989|  0.0001|***    |
|   1|PM2.5_M1                                             |  -0.0020|    0.0166|   -0.1204|  0.9042|       |
|   1|other_antibodies_statusHas_Other_Antibodies          |  -0.4990|    1.2215|   -0.4085|  0.6829|       |
|   1|PM2.5_M1:other_antibodies_statusHas_Other_Antibodies |   0.0075|    0.0431|    0.1745|  0.8615|       |
|   2|(Intercept)                                          |  -1.4846|    0.4196|   -3.5381|  0.0004|***    |
|   2|PM2.5_M2                                             |  -0.0127|    0.0160|   -0.7957|  0.4262|       |
|   2|other_antibodies_statusHas_Other_Antibodies          |  -0.3327|    1.1180|   -0.2976|  0.7660|       |
|   2|PM2.5_M2:other_antibodies_statusHas_Other_Antibodies |   0.0013|    0.0411|    0.0307|  0.9755|       |
|   3|(Intercept)                                          |  -2.0865|    0.4167|   -5.0074|  0.0000|***    |
|   3|PM2.5_M3                                             |   0.0111|    0.0142|    0.7829|  0.4337|       |
|   3|other_antibodies_statusHas_Other_Antibodies          |   0.6244|    1.1094|    0.5628|  0.5735|       |
|   3|PM2.5_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0374|    0.0424|   -0.8808|  0.3784|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0070|    0.0174|  0.6882|       |
|No_Other_Antibodies     |   1|  -0.0020|    0.0166|  0.9042|       |
|No_Other_Antibodies     |   2|  -0.0127|    0.0160|  0.4262|       |
|No_Other_Antibodies     |   3|   0.0111|    0.0142|  0.4337|       |
|Has_Other_Antibodies    |   0|  -0.0173|    0.0525|  0.7424|       |
|Has_Other_Antibodies    |   1|   0.0055|    0.0398|  0.8895|       |
|Has_Other_Antibodies    |   2|  -0.0114|    0.0379|  0.7625|       |
|Has_Other_Antibodies    |   3|  -0.0263|    0.0400|  0.5112|       |


## 分析污染物: SO2



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |  -1.7843|    0.5161|   -3.4575|  0.0005|***    |
|   0|SO2_M0                                             |  -0.0003|    0.0118|   -0.0242|  0.9807|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.3408|    1.4739|    0.2312|  0.8171|       |
|   0|SO2_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0168|    0.0368|   -0.4580|  0.6469|       |
|   1|(Intercept)                                        |  -1.8913|    0.4949|   -3.8217|  0.0001|***    |
|   1|SO2_M1                                             |   0.0023|    0.0112|    0.2065|  0.8364|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |   0.0292|    1.3254|    0.0220|  0.9824|       |
|   1|SO2_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0080|    0.0295|   -0.2724|  0.7853|       |
|   2|(Intercept)                                        |  -1.1900|    0.5036|   -2.3628|  0.0181|*      |
|   2|SO2_M2                                             |  -0.0148|    0.0119|   -1.2436|  0.2136|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |  -0.5111|    1.2864|   -0.3973|  0.6911|       |
|   2|SO2_M2:other_antibodies_statusHas_Other_Antibodies |   0.0052|    0.0292|    0.1789|  0.8580|       |
|   3|(Intercept)                                        |  -2.1138|    0.4849|   -4.3593|  0.0000|***    |
|   3|SO2_M3                                             |   0.0072|    0.0102|    0.7132|  0.4757|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   1.2084|    1.3601|    0.8885|  0.3743|       |
|   3|SO2_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0375|    0.0338|   -1.1103|  0.2669|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0003|    0.0118|  0.9807|       |
|No_Other_Antibodies     |   1|   0.0023|    0.0112|  0.8364|       |
|No_Other_Antibodies     |   2|  -0.0148|    0.0119|  0.2136|       |
|No_Other_Antibodies     |   3|   0.0072|    0.0102|  0.4757|       |
|Has_Other_Antibodies    |   0|  -0.0171|    0.0348|  0.6228|       |
|Has_Other_Antibodies    |   1|  -0.0057|    0.0273|  0.8338|       |
|Has_Other_Antibodies    |   2|  -0.0096|    0.0267|  0.7185|       |
|Has_Other_Antibodies    |   3|  -0.0302|    0.0322|  0.3476|       |


# 分析结局: Dyskinesia/dystonia



## 分析污染物: AQI



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |  -0.5588|    0.4396|   -1.2713|  0.2036|       |
|   0|AQI_M0                                             |   0.0020|    0.0100|    0.1967|  0.8441|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   1.8890|    1.2289|    1.5371|  0.1243|       |
|   0|AQI_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0456|    0.0295|   -1.5456|  0.1222|       |
|   1|(Intercept)                                        |  -0.5329|    0.4247|   -1.2547|  0.2096|       |
|   1|AQI_M1                                             |   0.0013|    0.0096|    0.1403|  0.8884|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |   1.0133|    1.0497|    0.9653|  0.3344|       |
|   1|AQI_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0226|    0.0232|   -0.9705|  0.3318|       |
|   2|(Intercept)                                        |  -0.5134|    0.4111|   -1.2489|  0.2117|       |
|   2|AQI_M2                                             |   0.0009|    0.0090|    0.0957|  0.9238|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |   0.9733|    0.9940|    0.9792|  0.3275|       |
|   2|AQI_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0216|    0.0219|   -0.9896|  0.3223|       |
|   3|(Intercept)                                        |  -0.4255|    0.3952|   -1.0769|  0.2815|       |
|   3|AQI_M3                                             |  -0.0011|    0.0086|   -0.1342|  0.8932|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   1.1739|    1.0278|    1.1421|  0.2534|       |
|   3|AQI_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0261|    0.0227|   -1.1531|  0.2489|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0020|    0.0100|  0.8441|       |
|No_Other_Antibodies     |   1|   0.0013|    0.0096|  0.8884|       |
|No_Other_Antibodies     |   2|   0.0009|    0.0090|  0.9238|       |
|No_Other_Antibodies     |   3|  -0.0011|    0.0086|  0.8932|       |
|Has_Other_Antibodies    |   0|  -0.0437|    0.0278|  0.1161|       |
|Has_Other_Antibodies    |   1|  -0.0212|    0.0212|  0.3165|       |
|Has_Other_Antibodies    |   2|  -0.0208|    0.0199|  0.2970|       |
|Has_Other_Antibodies    |   3|  -0.0273|    0.0210|  0.1937|       |


## 分析污染物: CO



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                       |  -1.0954|    0.5940|   -1.8439|  0.0652|.      |
|   0|CO_M0                                             |   0.8726|    0.8160|    1.0694|  0.2849|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |   1.9968|    1.7312|    1.1534|  0.2487|       |
|   0|CO_M0:other_antibodies_statusHas_Other_Antibodies |  -2.7902|    2.4415|   -1.1428|  0.2531|       |
|   1|(Intercept)                                       |  -0.7893|    0.5462|   -1.4452|  0.1484|       |
|   1|CO_M1                                             |   0.4387|    0.7434|    0.5902|  0.5551|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |   1.2018|    1.3947|    0.8617|  0.3889|       |
|   1|CO_M1:other_antibodies_statusHas_Other_Antibodies |  -1.6134|    1.8796|   -0.8584|  0.3907|       |
|   2|(Intercept)                                       |  -0.5044|    0.5333|   -0.9458|  0.3443|       |
|   2|CO_M2                                             |   0.0397|    0.7222|    0.0550|  0.9562|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |   1.8829|    1.3893|    1.3553|  0.1753|       |
|   2|CO_M2:other_antibodies_statusHas_Other_Antibodies |  -2.5652|    1.9002|   -1.3500|  0.1770|       |
|   3|(Intercept)                                       |  -0.4874|    0.5186|   -0.9398|  0.3473|       |
|   3|CO_M3                                             |   0.0158|    0.6944|    0.0228|  0.9818|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |   1.9358|    1.4123|    1.3706|  0.1705|       |
|   3|CO_M3:other_antibodies_statusHas_Other_Antibodies |  -2.6415|    1.9331|   -1.3664|  0.1718|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.8726|    0.8160|  0.2849|       |
|No_Other_Antibodies     |   1|   0.4387|    0.7434|  0.5551|       |
|No_Other_Antibodies     |   2|   0.0397|    0.7222|  0.9562|       |
|No_Other_Antibodies     |   3|   0.0158|    0.6944|  0.9818|       |
|Has_Other_Antibodies    |   0|  -1.9175|    2.3011|  0.4047|       |
|Has_Other_Antibodies    |   1|  -1.1747|    1.7263|  0.4962|       |
|Has_Other_Antibodies    |   2|  -2.5255|    1.7576|  0.1507|       |
|Has_Other_Antibodies    |   3|  -2.6257|    1.8041|  0.1456|       |


## 分析污染物: NO2



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |  -0.5200|    0.2896|   -1.7954|  0.0726|.      |
|   0|NO2_M0                                             |   0.0018|    0.0109|    0.1686|  0.8661|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.9784|    0.8448|    1.1582|  0.2468|       |
|   0|NO2_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0448|    0.0375|   -1.1961|  0.2317|       |
|   1|(Intercept)                                        |  -0.4017|    0.2764|   -1.4530|  0.1462|       |
|   1|NO2_M1                                             |  -0.0031|    0.0105|   -0.3001|  0.7641|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |   0.5240|    0.7341|    0.7138|  0.4754|       |
|   1|NO2_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0214|    0.0289|   -0.7383|  0.4604|       |
|   2|(Intercept)                                        |  -0.4296|    0.2743|   -1.5661|  0.1173|       |
|   2|NO2_M2                                             |  -0.0019|    0.0101|   -0.1891|  0.8501|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |   0.8518|    0.7899|    1.0784|  0.2809|       |
|   2|NO2_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0347|    0.0311|   -1.1144|  0.2651|       |
|   3|(Intercept)                                        |  -0.3105|    0.2726|   -1.1392|  0.2546|       |
|   3|NO2_M3                                             |  -0.0067|    0.0099|   -0.6781|  0.4977|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   0.2305|    0.6716|    0.3432|  0.7314|       |
|   3|NO2_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0086|    0.0251|   -0.3443|  0.7306|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0018|    0.0109|  0.8661|       |
|No_Other_Antibodies     |   1|  -0.0031|    0.0105|  0.7641|       |
|No_Other_Antibodies     |   2|  -0.0019|    0.0101|  0.8501|       |
|No_Other_Antibodies     |   3|  -0.0067|    0.0099|  0.4977|       |
|Has_Other_Antibodies    |   0|  -0.0430|    0.0359|  0.2306|       |
|Has_Other_Antibodies    |   1|  -0.0245|    0.0270|  0.3635|       |
|Has_Other_Antibodies    |   2|  -0.0366|    0.0294|  0.2136|       |
|Has_Other_Antibodies    |   3|  -0.0154|    0.0230|  0.5051|       |


## 分析污染物: O3



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                       |  -0.2298|    0.4775|   -0.4812|  0.6304|       |
|   0|O3_M0                                             |  -0.0043|    0.0081|   -0.5327|  0.5943|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |  -0.3752|    1.5617|   -0.2403|  0.8101|       |
|   0|O3_M0:other_antibodies_statusHas_Other_Antibodies |   0.0070|    0.0249|    0.2797|  0.7797|       |
|   1|(Intercept)                                       |  -0.3235|    0.5423|   -0.5965|  0.5508|       |
|   1|O3_M1                                             |  -0.0027|    0.0093|   -0.2885|  0.7730|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |  -0.5344|    1.4072|   -0.3798|  0.7041|       |
|   1|O3_M1:other_antibodies_statusHas_Other_Antibodies |   0.0094|    0.0223|    0.4206|  0.6740|       |
|   2|(Intercept)                                       |  -0.7909|    0.5202|   -1.5203|  0.1284|       |
|   2|O3_M2                                             |   0.0054|    0.0086|    0.6248|  0.5321|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |   0.3421|    1.1934|    0.2867|  0.7744|       |
|   2|O3_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0052|    0.0196|   -0.2671|  0.7894|       |
|   3|(Intercept)                                       |  -1.1022|    0.4890|   -2.2539|  0.0242|*      |
|   3|O3_M3                                             |   0.0110|    0.0083|    1.3300|  0.1835|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |   1.6470|    1.3492|    1.2207|  0.2222|       |
|   3|O3_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0279|    0.0226|   -1.2345|  0.2170|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|  -0.0043|    0.0081|  0.5943|       |
|No_Other_Antibodies     |   1|  -0.0027|    0.0093|  0.7730|       |
|No_Other_Antibodies     |   2|   0.0054|    0.0086|  0.5321|       |
|No_Other_Antibodies     |   3|   0.0110|    0.0083|  0.1835|       |
|Has_Other_Antibodies    |   0|   0.0026|    0.0235|  0.9107|       |
|Has_Other_Antibodies    |   1|   0.0067|    0.0203|  0.7412|       |
|Has_Other_Antibodies    |   2|   0.0001|    0.0177|  0.9946|       |
|Has_Other_Antibodies    |   3|  -0.0169|    0.0210|  0.4222|       |


## 分析污染物: PM10



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                                | estimate| std.error| statistic| p.value|signif |
|---:|:---------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                         |  -0.6012|    0.3737|   -1.6089|  0.1076|       |
|   0|PM10_M0                                             |   0.0030|    0.0085|    0.3561|  0.7217|       |
|   0|other_antibodies_statusHas_Other_Antibodies         |   1.4899|    1.0084|    1.4775|  0.1395|       |
|   0|PM10_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0369|    0.0246|   -1.5004|  0.1335|       |
|   1|(Intercept)                                         |  -0.6073|    0.3580|   -1.6964|  0.0898|.      |
|   1|PM10_M1                                             |   0.0032|    0.0081|    0.3922|  0.6949|       |
|   1|other_antibodies_statusHas_Other_Antibodies         |   1.0815|    0.8901|    1.2150|  0.2244|       |
|   1|PM10_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0248|    0.0199|   -1.2473|  0.2123|       |
|   2|(Intercept)                                         |  -0.5046|    0.3599|   -1.4018|  0.1610|       |
|   2|PM10_M2                                             |   0.0007|    0.0080|    0.0848|  0.9324|       |
|   2|other_antibodies_statusHas_Other_Antibodies         |   0.8632|    0.8611|    1.0024|  0.3162|       |
|   2|PM10_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0195|    0.0190|   -1.0249|  0.3054|       |
|   3|(Intercept)                                         |  -0.3474|    0.3458|   -1.0046|  0.3151|       |
|   3|PM10_M3                                             |  -0.0030|    0.0075|   -0.3976|  0.6909|       |
|   3|other_antibodies_statusHas_Other_Antibodies         |   0.9606|    0.8966|    1.0713|  0.2840|       |
|   3|PM10_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0219|    0.0200|   -1.0941|  0.2739|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0030|    0.0085|  0.7217|       |
|No_Other_Antibodies     |   1|   0.0032|    0.0081|  0.6949|       |
|No_Other_Antibodies     |   2|   0.0007|    0.0080|  0.9324|       |
|No_Other_Antibodies     |   3|  -0.0030|    0.0075|  0.6909|       |
|Has_Other_Antibodies    |   0|  -0.0339|    0.0231|  0.1422|       |
|Has_Other_Antibodies    |   1|  -0.0217|    0.0182|  0.2338|       |
|Has_Other_Antibodies    |   2|  -0.0188|    0.0173|  0.2757|       |
|Has_Other_Antibodies    |   3|  -0.0249|    0.0186|  0.1803|       |


## 分析污染物: PM2.5



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                                 | estimate| std.error| statistic| p.value|signif |
|---:|:----------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                          |  -0.5436|    0.3235|   -1.6804|  0.0929|.      |
|   0|PM2.5_M0                                             |   0.0028|    0.0123|    0.2269|  0.8205|       |
|   0|other_antibodies_statusHas_Other_Antibodies          |   1.3731|    0.9098|    1.5092|  0.1312|       |
|   0|PM2.5_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0593|    0.0384|   -1.5457|  0.1222|       |
|   1|(Intercept)                                          |  -0.4852|    0.3144|   -1.5434|  0.1227|       |
|   1|PM2.5_M1                                             |   0.0004|    0.0118|    0.0322|  0.9743|       |
|   1|other_antibodies_statusHas_Other_Antibodies          |   0.7276|    0.7833|    0.9289|  0.3529|       |
|   1|PM2.5_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0277|    0.0289|   -0.9579|  0.3381|       |
|   2|(Intercept)                                          |  -0.4937|    0.2998|   -1.6470|  0.0996|.      |
|   2|PM2.5_M2                                             |   0.0007|    0.0109|    0.0651|  0.9481|       |
|   2|other_antibodies_statusHas_Other_Antibodies          |   0.6540|    0.7404|    0.8833|  0.3771|       |
|   2|PM2.5_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0245|    0.0267|   -0.9182|  0.3585|       |
|   3|(Intercept)                                          |  -0.4538|    0.2953|   -1.5367|  0.1244|       |
|   3|PM2.5_M3                                             |  -0.0009|    0.0105|   -0.0828|  0.9340|       |
|   3|other_antibodies_statusHas_Other_Antibodies          |   0.8306|    0.7394|    1.1233|  0.2613|       |
|   3|PM2.5_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0313|    0.0267|   -1.1736|  0.2406|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0028|    0.0123|  0.8205|       |
|No_Other_Antibodies     |   1|   0.0004|    0.0118|  0.9743|       |
|No_Other_Antibodies     |   2|   0.0007|    0.0109|  0.9481|       |
|No_Other_Antibodies     |   3|  -0.0009|    0.0105|  0.9340|       |
|Has_Other_Antibodies    |   0|  -0.0565|    0.0363|  0.1199|       |
|Has_Other_Antibodies    |   1|  -0.0273|    0.0264|  0.3005|       |
|Has_Other_Antibodies    |   2|  -0.0238|    0.0244|  0.3289|       |
|Has_Other_Antibodies    |   3|  -0.0322|    0.0245|  0.1896|       |


## 分析污染物: SO2



### 按 other_antibodies_status 分层



#### 交互作用模型 (Logistic)

Table: 交互作用模型结果 (Logistic)

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|(Intercept)                                        |  -0.6073|    0.3716|   -1.6343|  0.1022|       |
|   0|SO2_M0                                             |   0.0032|    0.0085|    0.3758|  0.7071|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   1.5058|    1.0027|    1.5017|  0.1332|       |
|   0|SO2_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0375|    0.0246|   -1.5254|  0.1271|       |
|   1|(Intercept)                                        |  -0.5893|    0.3558|   -1.6561|  0.0977|.      |
|   1|SO2_M1                                             |   0.0028|    0.0081|    0.3406|  0.7334|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |   1.0527|    0.8808|    1.1951|  0.2320|       |
|   1|SO2_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0242|    0.0197|   -1.2271|  0.2198|       |
|   2|(Intercept)                                        |  -0.4975|    0.3578|   -1.3902|  0.1645|       |
|   2|SO2_M2                                             |   0.0005|    0.0080|    0.0641|  0.9489|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |   0.8134|    0.8543|    0.9521|  0.3411|       |
|   2|SO2_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0184|    0.0189|   -0.9723|  0.3309|       |
|   3|(Intercept)                                        |  -0.3383|    0.3443|   -0.9827|  0.3257|       |
|   3|SO2_M3                                             |  -0.0032|    0.0075|   -0.4275|  0.6690|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   0.9272|    0.8898|    1.0420|  0.2974|       |
|   3|SO2_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0213|    0.0200|   -1.0650|  0.2869|       |

#### 分层分析 (Logistic)

Table: 按亚组分层分析结果 (Logistic)

|other_antibodies_status | lag| estimate| std.error| p.value|signif |
|:-----------------------|---:|--------:|---------:|-------:|:------|
|No_Other_Antibodies     |   0|   0.0032|    0.0085|  0.7071|       |
|No_Other_Antibodies     |   1|   0.0028|    0.0081|  0.7334|       |
|No_Other_Antibodies     |   2|   0.0005|    0.0080|  0.9489|       |
|No_Other_Antibodies     |   3|  -0.0032|    0.0075|  0.6690|       |
|Has_Other_Antibodies    |   0|  -0.0343|    0.0231|  0.1370|       |
|Has_Other_Antibodies    |   1|  -0.0215|    0.0180|  0.2332|       |
|Has_Other_Antibodies    |   2|  -0.0178|    0.0171|  0.2971|       |
|Has_Other_Antibodies    |   3|  -0.0245|    0.0185|  0.1863|       |


# 分析结局: Brainstem dysfunction



## 分析污染物: AQI



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|AQI_M0                                             |   0.0012|    0.0092|    0.1277|  0.8985|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.6707|    1.1384|    0.5891|  0.5562|       |
|   0|AQI_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0216|    0.0264|   -0.8186|  0.4136|       |
|   0|0&#124;1                                           |   0.1703|    0.4063|    0.4192|  0.6754|       |
|   0|1&#124;2                                           |   0.1956|    0.4063|    0.4814|  0.6305|       |
|   0|2&#124;3                                           |   1.9699|    0.4263|    4.6206|  0.0000|***    |
|   0|3&#124;1+2                                         |   1.9699|    0.4263|    4.6206|  0.0000|***    |
|   0|1+2&#124;1+3                                       |   2.1868|    0.4326|    5.0556|  0.0000|***    |
|   0|1+3&#124;2+3                                       |   2.1868|    0.4326|    5.0556|  0.0000|***    |
|   0|2+3&#124;1+2+3                                     |   5.0923|    0.8105|    6.2827|  0.0000|***    |
|   1|AQI_M1                                             |   0.0026|    0.0087|    0.3044|  0.7610|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |   0.5509|    1.0306|    0.5345|  0.5934|       |
|   1|AQI_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0178|    0.0225|   -0.7912|  0.4294|       |
|   1|0&#124;1                                           |   0.2327|    0.3865|    0.6021|  0.5475|       |
|   1|1&#124;2                                           |   0.2576|    0.3865|    0.6664|  0.5056|       |
|   1|2&#124;3                                           |   2.0319|    0.4088|    4.9702|  0.0000|***    |
|   1|3&#124;1+2                                         |   2.0321|    0.4088|    4.9704|  0.0000|***    |
|   1|1+2&#124;1+3                                       |   2.2493|    0.4154|    5.4151|  0.0000|***    |
|   1|1+3&#124;2+3                                       |   2.2496|    0.4154|    5.4157|  0.0000|***    |
|   1|2+3&#124;1+2+3                                     |   5.1535|    0.8010|    6.4341|  0.0000|***    |
|   2|AQI_M2                                             |  -0.0078|    0.0083|   -0.9424|  0.3467|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |   0.4208|    1.0047|    0.4188|  0.6756|       |
|   2|AQI_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0146|    0.0220|   -0.6646|  0.5068|       |
|   2|0&#124;1                                           |  -0.2181|    0.3778|   -0.5774|  0.5641|       |
|   2|1&#124;2                                           |  -0.1930|    0.3777|   -0.5110|  0.6097|       |
|   2|2&#124;3                                           |   1.5852|    0.3934|    4.0296|  0.0001|***    |
|   2|3&#124;1+2                                         |   1.5853|    0.3934|    4.0299|  0.0001|***    |
|   2|1+2&#124;1+3                                       |   1.8030|    0.3998|    4.5099|  0.0000|***    |
|   2|1+3&#124;2+3                                       |   1.8032|    0.3998|    4.5103|  0.0000|***    |
|   2|2+3&#124;1+2+3                                     |   4.7126|    0.7929|    5.9438|  0.0000|***    |
|   3|AQI_M3                                             |  -0.0047|    0.0079|   -0.5949|  0.5524|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   1.5243|    1.0735|    1.4200|  0.1566|       |
|   3|AQI_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0406|    0.0245|   -1.6602|  0.0979|.      |
|   3|0&#124;1                                           |  -0.0877|    0.3663|   -0.2394|  0.8110|       |
|   3|1&#124;2                                           |  -0.0619|    0.3662|   -0.1690|  0.8659|       |
|   3|2&#124;3                                           |   1.7227|    0.3854|    4.4701|  0.0000|***    |
|   3|3&#124;1+2                                         |   1.7228|    0.3854|    4.4704|  0.0000|***    |
|   3|1+2&#124;1+3                                       |   1.9409|    0.3923|    4.9480|  0.0000|***    |
|   3|1+3&#124;2+3                                       |   1.9411|    0.3923|    4.9483|  0.0000|***    |
|   3|2+3&#124;1+2+3                                     |   4.8548|    0.7895|    6.1493|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term   | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |AQI_M0 |   0.0012|    0.0093|    0.1339|  0.8936|       |
|   1|No_Other_Antibodies     |AQI_M1 |   0.0028|    0.0088|    0.3193|  0.7497|       |
|   2|No_Other_Antibodies     |AQI_M2 |  -0.0081|    0.0084|   -0.9685|  0.3337|       |
|   3|No_Other_Antibodies     |AQI_M3 |  -0.0049|    0.0080|   -0.6104|  0.5421|       |
|   0|Has_Other_Antibodies    |AQI_M0 |  -0.0177|    0.0242|   -0.7328|  0.4682|       |
|   1|Has_Other_Antibodies    |AQI_M1 |  -0.0129|    0.0199|   -0.6497|  0.5198|       |
|   2|Has_Other_Antibodies    |AQI_M2 |  -0.0200|    0.0196|   -1.0176|  0.3153|       |
|   3|Has_Other_Antibodies    |AQI_M3 |  -0.0396|    0.0224|   -1.7710|  0.0846|.      |


## 分析污染物: CO



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|CO_M0                                             |  -0.1982|    0.7592|   -0.2611|  0.7942|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |  -0.5837|    1.4816|   -0.3940|  0.6939|       |
|   0|CO_M0:other_antibodies_statusHas_Other_Antibodies |   0.4999|    2.0289|    0.2464|  0.8056|       |
|   0|0&#124;1                                          |  -0.0188|    0.5488|   -0.0343|  0.9727|       |
|   0|1&#124;2                                          |   0.0065|    0.5488|    0.0118|  0.9906|       |
|   0|2&#124;3                                          |   1.7791|    0.5617|    3.1672|  0.0017|**     |
|   0|3&#124;1+2                                        |   1.7791|    0.5617|    3.1672|  0.0017|**     |
|   0|1+2&#124;1+3                                      |   1.9956|    0.5664|    3.5234|  0.0005|***    |
|   0|1+3&#124;2+3                                      |   1.9956|    0.5664|    3.5234|  0.0005|***    |
|   0|2+3&#124;1+2+3                                    |   4.8991|    0.8891|    5.5104|  0.0000|***    |
|   1|CO_M1                                             |  -0.5484|    0.6944|   -0.7898|  0.4303|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |   0.4453|    1.4440|    0.3084|  0.7580|       |
|   1|CO_M1:other_antibodies_statusHas_Other_Antibodies |  -0.9127|    1.9569|   -0.4664|  0.6413|       |
|   1|0&#124;1                                          |  -0.2689|    0.5065|   -0.5308|  0.5959|       |
|   1|1&#124;2                                          |  -0.2435|    0.5065|   -0.4807|  0.6310|       |
|   1|2&#124;3                                          |   1.5326|    0.5187|    2.9546|  0.0034|**     |
|   1|3&#124;1+2                                        |   1.5326|    0.5187|    2.9546|  0.0034|**     |
|   1|1+2&#124;1+3                                      |   1.7494|    0.5238|    3.3400|  0.0009|***    |
|   1|1+3&#124;2+3                                      |   1.7494|    0.5238|    3.3400|  0.0009|***    |
|   1|2+3&#124;1+2+3                                    |   4.6559|    0.8621|    5.4005|  0.0000|***    |
|   2|CO_M2                                             |  -1.0142|    0.6822|   -1.4867|  0.1381|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |   0.8119|    1.4120|    0.5750|  0.5657|       |
|   2|CO_M2:other_antibodies_statusHas_Other_Antibodies |  -1.4053|    1.9218|   -0.7312|  0.4652|       |
|   2|0&#124;1                                          |  -0.6053|    0.5002|   -1.2101|  0.2271|       |
|   2|1&#124;2                                          |  -0.5798|    0.5001|   -1.1593|  0.2472|       |
|   2|2&#124;3                                          |   1.2057|    0.5095|    2.3664|  0.0186|*      |
|   2|3&#124;1+2                                        |   1.2057|    0.5095|    2.3664|  0.0186|*      |
|   2|1+2&#124;1+3                                      |   1.4238|    0.5145|    2.7673|  0.0060|**     |
|   2|1+3&#124;2+3                                      |   1.4238|    0.5145|    2.7673|  0.0060|**     |
|   2|2+3&#124;1+2+3                                    |   4.3361|    0.8562|    5.0645|  0.0000|***    |
|   3|CO_M3                                             |  -0.6308|    0.6466|   -0.9757|  0.3300|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |   2.2682|    1.5042|    1.5079|  0.1326|       |
|   3|CO_M3:other_antibodies_statusHas_Other_Antibodies |  -3.5043|    2.1183|   -1.6543|  0.0991|.      |
|   3|0&#124;1                                          |  -0.3390|    0.4824|   -0.7026|  0.4828|       |
|   3|1&#124;2                                          |  -0.3133|    0.4824|   -0.6495|  0.5165|       |
|   3|2&#124;3                                          |   1.4757|    0.4950|    2.9809|  0.0031|**     |
|   3|3&#124;1+2                                        |   1.4757|    0.4950|    2.9809|  0.0031|**     |
|   3|1+2&#124;1+3                                      |   1.6946|    0.5001|    3.3882|  0.0008|***    |
|   3|1+3&#124;2+3                                      |   1.6946|    0.5001|    3.3882|  0.0008|***    |
|   3|2+3&#124;1+2+3                                    |   4.6125|    0.8476|    5.4419|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term  | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:-----|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |CO_M0 |  -0.2048|    0.7661|   -0.2673|  0.7895|       |
|   1|No_Other_Antibodies     |CO_M1 |  -0.5637|    0.7006|   -0.8046|  0.4217|       |
|   2|No_Other_Antibodies     |CO_M2 |  -1.0433|    0.6876|   -1.5173|  0.1304|       |
|   3|No_Other_Antibodies     |CO_M3 |  -0.6458|    0.6514|   -0.9914|  0.3224|       |
|   0|Has_Other_Antibodies    |CO_M0 |   0.1942|    1.7773|    0.1093|  0.9136|       |
|   1|Has_Other_Antibodies    |CO_M1 |  -1.1991|    1.7113|   -0.7007|  0.4877|       |
|   2|Has_Other_Antibodies    |CO_M2 |  -2.0224|    1.7041|   -1.1868|  0.2427|       |
|   3|Has_Other_Antibodies    |CO_M3 |  -3.5209|    1.9210|   -1.8328|  0.0747|.      |


## 分析污染物: NO2



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|NO2_M0                                             |  -0.0039|    0.0102|   -0.3833|  0.7018|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.2144|    0.8095|    0.2649|  0.7913|       |
|   0|NO2_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0210|    0.0345|   -0.6082|  0.5435|       |
|   0|0&#124;1                                           |   0.0276|    0.2700|    0.1023|  0.9186|       |
|   0|1&#124;2                                           |   0.0539|    0.2699|    0.1998|  0.8418|       |
|   0|2&#124;3                                           |   1.8286|    0.2955|    6.1886|  0.0000|***    |
|   0|3&#124;1+2                                         |   1.8288|    0.2955|    6.1891|  0.0000|***    |
|   0|1+2&#124;1+3                                       |   2.0450|    0.3043|    6.7201|  0.0000|***    |
|   0|1+3&#124;2+3                                       |   2.0453|    0.3043|    6.7207|  0.0000|***    |
|   0|2+3&#124;1+2+3                                     |   4.9486|    0.7498|    6.6003|  0.0000|***    |
|   1|NO2_M1                                             |  -0.0076|    0.0098|   -0.7772|  0.4376|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |  -0.1230|    0.7179|   -0.1714|  0.8640|       |
|   1|NO2_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0043|    0.0273|   -0.1593|  0.8735|       |
|   1|0&#124;1                                           |  -0.0569|    0.2572|   -0.2212|  0.8251|       |
|   1|1&#124;2                                           |  -0.0309|    0.2571|   -0.1202|  0.9044|       |
|   1|2&#124;3                                           |   1.7446|    0.2825|    6.1754|  0.0000|***    |
|   1|3&#124;1+2                                         |   1.7448|    0.2825|    6.1759|  0.0000|***    |
|   1|1+2&#124;1+3                                       |   1.9613|    0.2918|    6.7210|  0.0000|***    |
|   1|1+3&#124;2+3                                       |   1.9616|    0.2918|    6.7218|  0.0000|***    |
|   1|2+3&#124;1+2+3                                     |   4.8660|    0.7453|    6.5292|  0.0000|***    |
|   2|NO2_M2                                             |  -0.0204|    0.0096|   -2.1244|  0.0344|*      |
|   2|other_antibodies_statusHas_Other_Antibodies        |   0.1483|    0.7826|    0.1895|  0.8498|       |
|   2|NO2_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0158|    0.0308|   -0.5120|  0.6090|       |
|   2|0&#124;1                                           |  -0.3679|    0.2563|   -1.4353|  0.1522|       |
|   2|1&#124;2                                           |  -0.3424|    0.2562|   -1.3367|  0.1823|       |
|   2|2&#124;3                                           |   1.4534|    0.2764|    5.2586|  0.0000|***    |
|   2|3&#124;1+2                                         |   1.4538|    0.2764|    5.2596|  0.0000|***    |
|   2|1+2&#124;1+3                                       |   1.6707|    0.2856|    5.8506|  0.0000|***    |
|   2|1+3&#124;2+3                                       |   1.6710|    0.2856|    5.8512|  0.0000|***    |
|   2|2+3&#124;1+2+3                                     |   4.5775|    0.7417|    6.1714|  0.0000|***    |
|   3|NO2_M3                                             |  -0.0142|    0.0094|   -1.5188|  0.1298|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   0.3551|    0.7048|    0.5038|  0.6148|       |
|   3|NO2_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0263|    0.0284|   -0.9252|  0.3556|       |
|   3|0&#124;1                                           |  -0.2282|    0.2566|   -0.8893|  0.3746|       |
|   3|1&#124;2                                           |  -0.2019|    0.2565|   -0.7870|  0.4319|       |
|   3|2&#124;3                                           |   1.5869|    0.2790|    5.6884|  0.0000|***    |
|   3|3&#124;1+2                                         |   1.5874|    0.2790|    5.6896|  0.0000|***    |
|   3|1+2&#124;1+3                                       |   1.8043|    0.2882|    6.2604|  0.0000|***    |
|   3|1+3&#124;2+3                                       |   1.8045|    0.2882|    6.2608|  0.0000|***    |
|   3|2+3&#124;1+2+3                                     |   4.7124|    0.7436|    6.3376|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term   | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |NO2_M0 |  -0.0041|    0.0103|   -0.4009|  0.6888|       |
|   1|No_Other_Antibodies     |NO2_M1 |  -0.0079|    0.0099|   -0.8006|  0.4241|       |
|   2|No_Other_Antibodies     |NO2_M2 |  -0.0210|    0.0097|   -2.1706|  0.0308|*      |
|   3|No_Other_Antibodies     |NO2_M3 |  -0.0147|    0.0094|   -1.5590|  0.1202|       |
|   0|Has_Other_Antibodies    |NO2_M0 |  -0.0218|    0.0322|   -0.6786|  0.5015|       |
|   1|Has_Other_Antibodies    |NO2_M1 |  -0.0101|    0.0241|   -0.4190|  0.6776|       |
|   2|Has_Other_Antibodies    |NO2_M2 |  -0.0310|    0.0278|   -1.1122|  0.2731|       |
|   3|Has_Other_Antibodies    |NO2_M3 |  -0.0355|    0.0259|   -1.3703|  0.1786|       |


## 分析污染物: O3



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                              | estimate| std.error| statistic| p.value|signif |
|---:|:-------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|O3_M0                                             |  -0.0017|    0.0075|   -0.2317|  0.8169|       |
|   0|other_antibodies_statusHas_Other_Antibodies       |   0.2945|    1.6387|    0.1797|  0.8575|       |
|   0|O3_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0086|    0.0265|   -0.3243|  0.7459|       |
|   0|0&#124;1                                          |   0.0201|    0.4447|    0.0452|  0.9640|       |
|   0|1&#124;2                                          |   0.0459|    0.4447|    0.1033|  0.9178|       |
|   0|2&#124;3                                          |   1.8184|    0.4634|    3.9241|  0.0001|***    |
|   0|3&#124;1+2                                        |   1.8186|    0.4634|    3.9246|  0.0001|***    |
|   0|1+2&#124;1+3                                      |   2.0354|    0.4690|    4.3396|  0.0000|***    |
|   0|1+3&#124;2+3                                      |   2.0358|    0.4691|    4.3403|  0.0000|***    |
|   0|2+3&#124;1+2+3                                    |   4.9403|    0.8294|    5.9562|  0.0000|***    |
|   1|O3_M1                                             |   0.0073|    0.0085|    0.8595|  0.3907|       |
|   1|other_antibodies_statusHas_Other_Antibodies       |   1.3980|    1.4272|    0.9796|  0.3281|       |
|   1|O3_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0270|    0.0230|   -1.1714|  0.2424|       |
|   1|0&#124;1                                          |   0.5370|    0.4989|    1.0763|  0.2826|       |
|   1|1&#124;2                                          |   0.5619|    0.4990|    1.1259|  0.2611|       |
|   1|2&#124;3                                          |   2.3380|    0.5186|    4.5079|  0.0000|***    |
|   1|3&#124;1+2                                        |   2.3381|    0.5186|    4.5082|  0.0000|***    |
|   1|1+2&#124;1+3                                      |   2.5557|    0.5236|    4.8807|  0.0000|***    |
|   1|1+3&#124;2+3                                      |   2.5559|    0.5236|    4.8810|  0.0000|***    |
|   1|2+3&#124;1+2+3                                    |   5.4610|    0.8624|    6.3322|  0.0000|***    |
|   2|O3_M2                                             |   0.0060|    0.0078|    0.7670|  0.4437|       |
|   2|other_antibodies_statusHas_Other_Antibodies       |   0.6501|    1.2040|    0.5399|  0.5896|       |
|   2|O3_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0150|    0.0197|   -0.7594|  0.4482|       |
|   2|0&#124;1                                          |   0.4730|    0.4754|    0.9950|  0.3205|       |
|   2|1&#124;2                                          |   0.4981|    0.4755|    1.0476|  0.2957|       |
|   2|2&#124;3                                          |   2.2714|    0.4943|    4.5952|  0.0000|***    |
|   2|3&#124;1+2                                        |   2.2716|    0.4943|    4.5955|  0.0000|***    |
|   2|1+2&#124;1+3                                      |   2.4899|    0.4996|    4.9838|  0.0000|***    |
|   2|1+3&#124;2+3                                      |   2.4901|    0.4996|    4.9842|  0.0000|***    |
|   2|2+3&#124;1+2+3                                    |   5.3963|    0.8485|    6.3598|  0.0000|***    |
|   3|O3_M3                                             |   0.0067|    0.0076|    0.8716|  0.3841|       |
|   3|other_antibodies_statusHas_Other_Antibodies       |   0.8784|    1.3637|    0.6442|  0.5199|       |
|   3|O3_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0190|    0.0226|   -0.8410|  0.4010|       |
|   3|0&#124;1                                          |   0.4977|    0.4492|    1.1079|  0.2688|       |
|   3|1&#124;2                                          |   0.5229|    0.4493|    1.1639|  0.2454|       |
|   3|2&#124;3                                          |   2.2989|    0.4706|    4.8855|  0.0000|***    |
|   3|3&#124;1+2                                        |   2.2991|    0.4706|    4.8859|  0.0000|***    |
|   3|1+2&#124;1+3                                      |   2.5163|    0.4765|    5.2812|  0.0000|***    |
|   3|1+3&#124;2+3                                      |   2.5164|    0.4765|    5.2814|  0.0000|***    |
|   3|2+3&#124;1+2+3                                    |   5.4221|    0.8352|    6.4917|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term  | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:-----|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |O3_M0 |  -0.0014|    0.0076|   -0.1833|  0.8547|       |
|   1|No_Other_Antibodies     |O3_M1 |   0.0075|    0.0086|    0.8719|  0.3841|       |
|   2|No_Other_Antibodies     |O3_M2 |   0.0067|    0.0079|    0.8507|  0.3957|       |
|   3|No_Other_Antibodies     |O3_M3 |   0.0073|    0.0077|    0.9486|  0.3437|       |
|   0|Has_Other_Antibodies    |O3_M0 |  -0.0117|    0.0247|   -0.4716|  0.6399|       |
|   1|Has_Other_Antibodies    |O3_M1 |  -0.0173|    0.0208|   -0.8306|  0.4114|       |
|   2|Has_Other_Antibodies    |O3_M2 |  -0.0081|    0.0173|   -0.4677|  0.6427|       |
|   3|Has_Other_Antibodies    |O3_M3 |  -0.0106|    0.0205|   -0.5195|  0.6064|       |


## 分析污染物: PM10



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                                | estimate| std.error| statistic| p.value|signif |
|---:|:---------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|PM10_M0                                             |   0.0032|    0.0078|    0.4122|  0.6804|       |
|   0|other_antibodies_statusHas_Other_Antibodies         |   0.7453|    0.9535|    0.7817|  0.4350|       |
|   0|PM10_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0241|    0.0224|   -1.0732|  0.2840|       |
|   0|0&#124;1                                            |   0.2542|    0.3457|    0.7351|  0.4628|       |
|   0|1&#124;2                                            |   0.2795|    0.3458|    0.8082|  0.4196|       |
|   0|2&#124;3                                            |   2.0552|    0.3701|    5.5532|  0.0000|***    |
|   0|3&#124;1+2                                          |   2.0552|    0.3701|    5.5532|  0.0000|***    |
|   0|1+2&#124;1+3                                        |   2.2723|    0.3773|    6.0230|  0.0000|***    |
|   0|1+3&#124;2+3                                        |   2.2723|    0.3773|    6.0230|  0.0000|***    |
|   0|2+3&#124;1+2+3                                      |   5.1789|    0.7826|    6.6174|  0.0000|***    |
|   1|PM10_M1                                             |   0.0041|    0.0074|    0.5610|  0.5752|       |
|   1|other_antibodies_statusHas_Other_Antibodies         |   0.4282|    0.8627|    0.4964|  0.6200|       |
|   1|PM10_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0153|    0.0186|   -0.8208|  0.4124|       |
|   1|0&#124;1                                            |   0.2919|    0.3272|    0.8922|  0.3730|       |
|   1|1&#124;2                                            |   0.3166|    0.3272|    0.9675|  0.3341|       |
|   1|2&#124;3                                            |   2.0918|    0.3539|    5.9110|  0.0000|***    |
|   1|3&#124;1+2                                          |   2.0920|    0.3539|    5.9113|  0.0000|***    |
|   1|1+2&#124;1+3                                        |   2.3092|    0.3615|    6.3887|  0.0000|***    |
|   1|1+3&#124;2+3                                        |   2.3095|    0.3615|    6.3892|  0.0000|***    |
|   1|2+3&#124;1+2+3                                      |   5.2174|    0.7755|    6.7282|  0.0000|***    |
|   2|PM10_M2                                             |  -0.0077|    0.0074|   -1.0478|  0.2956|       |
|   2|other_antibodies_statusHas_Other_Antibodies         |   0.1727|    0.8632|    0.2001|  0.8415|       |
|   2|PM10_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0090|    0.0188|   -0.4775|  0.6333|       |
|   2|0&#124;1                                            |  -0.2043|    0.3312|   -0.6168|  0.5378|       |
|   2|1&#124;2                                            |  -0.1793|    0.3312|   -0.5415|  0.5885|       |
|   2|2&#124;3                                            |   1.5990|    0.3490|    4.5813|  0.0000|***    |
|   2|3&#124;1+2                                          |   1.5991|    0.3490|    4.5818|  0.0000|***    |
|   2|1+2&#124;1+3                                        |   1.8169|    0.3562|    5.1002|  0.0000|***    |
|   2|1+3&#124;2+3                                        |   1.8171|    0.3563|    5.1006|  0.0000|***    |
|   2|2+3&#124;1+2+3                                      |   4.7260|    0.7720|    6.1216|  0.0000|***    |
|   3|PM10_M3                                             |  -0.0062|    0.0070|   -0.8832|  0.3778|       |
|   3|other_antibodies_statusHas_Other_Antibodies         |   1.3192|    0.9343|    1.4120|  0.1589|       |
|   3|PM10_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0371|    0.0218|   -1.7033|  0.0895|.      |
|   3|0&#124;1                                            |  -0.1470|    0.3227|   -0.4556|  0.6490|       |
|   3|1&#124;2                                            |  -0.1222|    0.3227|   -0.3788|  0.7051|       |
|   3|2&#124;3                                            |   1.6661|    0.3430|    4.8572|  0.0000|***    |
|   3|3&#124;1+2                                          |   1.6665|    0.3430|    4.8581|  0.0000|***    |
|   3|1+2&#124;1+3                                        |   1.8837|    0.3507|    5.3717|  0.0000|***    |
|   3|1+3&#124;2+3                                        |   1.8838|    0.3507|    5.3720|  0.0000|***    |
|   3|2+3&#124;1+2+3                                      |   4.7971|    0.7695|    6.2342|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term    | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:-------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |PM10_M0 |   0.0034|    0.0079|    0.4243|  0.6717|       |
|   1|No_Other_Antibodies     |PM10_M1 |   0.0043|    0.0074|    0.5792|  0.5629|       |
|   2|No_Other_Antibodies     |PM10_M2 |  -0.0080|    0.0074|   -1.0679|  0.2865|       |
|   3|No_Other_Antibodies     |PM10_M3 |  -0.0065|    0.0071|   -0.9161|  0.3604|       |
|   0|Has_Other_Antibodies    |PM10_M0 |  -0.0182|    0.0206|   -0.8833|  0.3826|       |
|   1|Has_Other_Antibodies    |PM10_M1 |  -0.0095|    0.0164|   -0.5804|  0.5651|       |
|   2|Has_Other_Antibodies    |PM10_M2 |  -0.0150|    0.0167|   -0.8960|  0.3759|       |
|   3|Has_Other_Antibodies    |PM10_M3 |  -0.0379|    0.0200|   -1.8949|  0.0657|.      |


## 分析污染物: PM2.5



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                                 | estimate| std.error| statistic| p.value|signif |
|---:|:----------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|PM2.5_M0                                             |   0.0010|    0.0114|    0.0883|  0.9297|       |
|   0|other_antibodies_statusHas_Other_Antibodies          |   0.1131|    0.8482|    0.1334|  0.8940|       |
|   0|PM2.5_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0146|    0.0335|   -0.4355|  0.6635|       |
|   0|0&#124;1                                             |   0.1452|    0.3006|    0.4831|  0.6294|       |
|   0|1&#124;2                                             |   0.1707|    0.3006|    0.5677|  0.5706|       |
|   0|2&#124;3                                             |   1.9436|    0.3263|    5.9562|  0.0000|***    |
|   0|3&#124;1+2                                           |   1.9439|    0.3263|    5.9570|  0.0000|***    |
|   0|1+2&#124;1+3                                         |   2.1608|    0.3344|    6.4624|  0.0000|***    |
|   0|1+3&#124;2+3                                         |   2.1609|    0.3344|    6.4628|  0.0000|***    |
|   0|2+3&#124;1+2+3                                       |   5.0657|    0.7627|    6.6422|  0.0000|***    |
|   1|PM2.5_M1                                             |   0.0001|    0.0108|    0.0050|  0.9960|       |
|   1|other_antibodies_statusHas_Other_Antibodies          |   0.1661|    0.7846|    0.2117|  0.8325|       |
|   1|PM2.5_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0155|    0.0284|   -0.5450|  0.5862|       |
|   1|0&#124;1                                             |   0.1227|    0.2883|    0.4256|  0.6707|       |
|   1|1&#124;2                                             |   0.1476|    0.2883|    0.5120|  0.6090|       |
|   1|2&#124;3                                             |   1.9181|    0.3150|    6.0886|  0.0000|***    |
|   1|3&#124;1+2                                           |   1.9192|    0.3151|    6.0913|  0.0000|***    |
|   1|1+2&#124;1+3                                         |   2.1357|    0.3234|    6.6045|  0.0000|***    |
|   1|1+3&#124;2+3                                         |   2.1358|    0.3234|    6.6048|  0.0000|***    |
|   1|2+3&#124;1+2+3                                       |   5.0386|    0.7570|    6.6556|  0.0000|***    |
|   2|PM2.5_M2                                             |  -0.0079|    0.0100|   -0.7856|  0.4327|       |
|   2|other_antibodies_statusHas_Other_Antibodies          |   0.2471|    0.7545|    0.3275|  0.7435|       |
|   2|PM2.5_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0181|    0.0270|   -0.6714|  0.5025|       |
|   2|0&#124;1                                             |  -0.0751|    0.2760|   -0.2721|  0.7858|       |
|   2|1&#124;2                                             |  -0.0507|    0.2759|   -0.1838|  0.8543|       |
|   2|2&#124;3                                             |   1.7263|    0.2997|    5.7609|  0.0000|***    |
|   2|3&#124;1+2                                           |   1.7265|    0.2997|    5.7613|  0.0000|***    |
|   2|1+2&#124;1+3                                         |   1.9434|    0.3082|    6.3064|  0.0000|***    |
|   2|1+3&#124;2+3                                         |   1.9442|    0.3082|    6.3082|  0.0000|***    |
|   2|2+3&#124;1+2+3                                       |   4.8504|    0.7506|    6.4624|  0.0000|***    |
|   3|PM2.5_M3                                             |  -0.0043|    0.0097|   -0.4402|  0.6601|       |
|   3|other_antibodies_statusHas_Other_Antibodies          |   0.8580|    0.7630|    1.1245|  0.2617|       |
|   3|PM2.5_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0431|    0.0285|   -1.5121|  0.1315|       |
|   3|0&#124;1                                             |   0.0099|    0.2735|    0.0361|  0.9712|       |
|   3|1&#124;2                                             |   0.0344|    0.2734|    0.1256|  0.9001|       |
|   3|2&#124;3                                             |   1.8163|    0.3000|    6.0545|  0.0000|***    |
|   3|3&#124;1+2                                           |   1.8168|    0.3000|    6.0556|  0.0000|***    |
|   3|1+2&#124;1+3                                         |   2.0338|    0.3087|    6.5876|  0.0000|***    |
|   3|1+3&#124;2+3                                         |   2.0340|    0.3087|    6.5881|  0.0000|***    |
|   3|2+3&#124;1+2+3                                       |   4.9361|    0.7491|    6.5891|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term     | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:--------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |PM2.5_M0 |   0.0011|    0.0116|    0.0928|  0.9261|       |
|   1|No_Other_Antibodies     |PM2.5_M1 |   0.0002|    0.0109|    0.0144|  0.9885|       |
|   2|No_Other_Antibodies     |PM2.5_M2 |  -0.0081|    0.0101|   -0.8020|  0.4233|       |
|   3|No_Other_Antibodies     |PM2.5_M3 |  -0.0042|    0.0098|   -0.4280|  0.6690|       |
|   0|Has_Other_Antibodies    |PM2.5_M0 |  -0.0119|    0.0305|   -0.3893|  0.6992|       |
|   1|Has_Other_Antibodies    |PM2.5_M1 |  -0.0130|    0.0250|   -0.5186|  0.6070|       |
|   2|Has_Other_Antibodies    |PM2.5_M2 |  -0.0232|    0.0243|   -0.9555|  0.3454|       |
|   3|Has_Other_Antibodies    |PM2.5_M3 |  -0.0417|    0.0260|   -1.6016|  0.1175|       |


## 分析污染物: SO2



### 按 other_antibodies_status 分层



#### 交互作用模型

Table: 交互作用模型結果

| lag|term                                               | estimate| std.error| statistic| p.value|signif |
|---:|:--------------------------------------------------|--------:|---------:|---------:|-------:|:------|
|   0|SO2_M0                                             |   0.0037|    0.0078|    0.4694|  0.6391|       |
|   0|other_antibodies_statusHas_Other_Antibodies        |   0.7690|    0.9454|    0.8134|  0.4166|       |
|   0|SO2_M0:other_antibodies_statusHas_Other_Antibodies |  -0.0247|    0.0223|   -1.1091|  0.2683|       |
|   0|0&#124;1                                           |   0.2715|    0.3436|    0.7904|  0.4299|       |
|   0|1&#124;2                                           |   0.2969|    0.3436|    0.8639|  0.3883|       |
|   0|2&#124;3                                           |   2.0729|    0.3683|    5.6276|  0.0000|***    |
|   0|3&#124;1+2                                         |   2.0729|    0.3683|    5.6276|  0.0000|***    |
|   0|1+2&#124;1+3                                       |   2.2900|    0.3756|    6.0973|  0.0000|***    |
|   0|1+3&#124;2+3                                       |   2.2900|    0.3756|    6.0973|  0.0000|***    |
|   0|2+3&#124;1+2+3                                     |   5.1968|    0.7819|    6.6467|  0.0000|***    |
|   1|SO2_M1                                             |   0.0038|    0.0074|    0.5165|  0.6059|       |
|   1|other_antibodies_statusHas_Other_Antibodies        |   0.4599|    0.8549|    0.5379|  0.5910|       |
|   1|SO2_M1:other_antibodies_statusHas_Other_Antibodies |  -0.0161|    0.0185|   -0.8668|  0.3867|       |
|   1|0&#124;1                                           |   0.2770|    0.3250|    0.8521|  0.3948|       |
|   1|1&#124;2                                           |   0.3019|    0.3251|    0.9287|  0.3538|       |
|   1|2&#124;3                                           |   2.0779|    0.3517|    5.9084|  0.0000|***    |
|   1|3&#124;1+2                                         |   2.0780|    0.3517|    5.9088|  0.0000|***    |
|   1|1+2&#124;1+3                                       |   2.2953|    0.3593|    6.3882|  0.0000|***    |
|   1|1+3&#124;2+3                                       |   2.2955|    0.3593|    6.3888|  0.0000|***    |
|   1|2+3&#124;1+2+3                                     |   5.2042|    0.7746|    6.7187|  0.0000|***    |
|   2|SO2_M2                                             |  -0.0078|    0.0074|   -1.0643|  0.2880|       |
|   2|other_antibodies_statusHas_Other_Antibodies        |   0.1579|    0.8571|    0.1842|  0.8540|       |
|   2|SO2_M2:other_antibodies_statusHas_Other_Antibodies |  -0.0086|    0.0187|   -0.4625|  0.6441|       |
|   2|0&#124;1                                           |  -0.2073|    0.3294|   -0.6293|  0.5296|       |
|   2|1&#124;2                                           |  -0.1823|    0.3293|   -0.5534|  0.5804|       |
|   2|2&#124;3                                           |   1.5962|    0.3472|    4.5973|  0.0000|***    |
|   2|3&#124;1+2                                         |   1.5963|    0.3472|    4.5977|  0.0000|***    |
|   2|1+2&#124;1+3                                       |   1.8140|    0.3544|    5.1178|  0.0000|***    |
|   2|1+3&#124;2+3                                       |   1.8142|    0.3545|    5.1182|  0.0000|***    |
|   2|2+3&#124;1+2+3                                     |   4.7230|    0.7712|    6.1242|  0.0000|***    |
|   3|SO2_M3                                             |  -0.0063|    0.0070|   -0.8965|  0.3707|       |
|   3|other_antibodies_statusHas_Other_Antibodies        |   1.3007|    0.9278|    1.4020|  0.1619|       |
|   3|SO2_M3:other_antibodies_statusHas_Other_Antibodies |  -0.0370|    0.0218|   -1.6969|  0.0907|.      |
|   3|0&#124;1                                           |  -0.1485|    0.3219|   -0.4614|  0.6449|       |
|   3|1&#124;2                                           |  -0.1243|    0.3218|   -0.3863|  0.6995|       |
|   3|2&#124;3                                           |   1.6626|    0.3421|    4.8598|  0.0000|***    |
|   3|3&#124;1+2                                         |   1.6629|    0.3421|    4.8603|  0.0000|***    |
|   3|1+2&#124;1+3                                       |   1.8830|    0.3499|    5.3816|  0.0000|***    |
|   3|1+3&#124;2+3                                       |   1.8833|    0.3499|    5.3822|  0.0000|***    |
|   3|2+3&#124;1+2+3                                     |   4.7978|    0.7695|    6.2349|  0.0000|***    |

#### 分層分析

Table: 按亞組分層分析結果

| lag|other_antibodies_status |term   | estimate| std.error| statistic| p.value|signif |
|---:|:-----------------------|:------|--------:|---------:|---------:|-------:|:------|
|   0|No_Other_Antibodies     |SO2_M0 |   0.0038|    0.0079|    0.4861|  0.6273|       |
|   1|No_Other_Antibodies     |SO2_M1 |   0.0040|    0.0074|    0.5353|  0.5929|       |
|   2|No_Other_Antibodies     |SO2_M2 |  -0.0081|    0.0074|   -1.0874|  0.2778|       |
|   3|No_Other_Antibodies     |SO2_M3 |  -0.0066|    0.0071|   -0.9382|  0.3490|       |
|   0|Has_Other_Antibodies    |SO2_M0 |  -0.0184|    0.0204|   -0.8985|  0.3746|       |
|   1|Has_Other_Antibodies    |SO2_M1 |  -0.0104|    0.0163|   -0.6380|  0.5273|       |
|   2|Has_Other_Antibodies    |SO2_M2 |  -0.0148|    0.0166|   -0.8902|  0.3789|       |
|   3|Has_Other_Antibodies    |SO2_M3 |  -0.0381|    0.0200|   -1.9008|  0.0649|.      |
