在病例的个体层面上进行分析：

##1.	污染物浓度与首发症状关系
症状对应的项目分别为：Seizures；Memory dysfunction；Psychiatric symptoms；Coma；Language problem；Dyskinesia/dystonia；Gait instability and ataxia；Brainstem dysfunction

NO2（类似地，NO2_24h）对Seizures影响显著（M0与M1，但效果为负，-0.03~-0.02，由于对M0,M1同时放入model时结果不显著，故因理解为两者的共线性过高，指引选取其一，所以因理解为NO2对Seizures是显著，但污染物影响不会有过长的time delay）

SO2_24h 对Seizures或许有部分影响(影响不强，M2, 但结果与SO2结果矛盾)

CO（类似地C0_24h）对Memory Dysfunction有影响，但影响有一些滞后（M1，M2），影响为正（1.98）

NO2（类似地，NO2_24h）对Memory Dysfunction有一定影响（M1，效果为正，0.02，不强）

O3对Memory Dysfunction有影响（90%的置信度），但影响有一些滞后（M1），影响为正（0.01~0.02）

NO2（类似地，NO2_24h）对Brainstem dysfunction影响显著（M2与M3，但效果为负，-0.05~-0.04，由于对M2,M3同时放入model时结果不显著，故因理解为两者的共线性过高，指引选取其一，所以因理解为NO2对Brainstem dysfunction是显著，但污染物影响有过长的time delay）

##### 矛盾的结论

 SO2_24h对Memory Dysfunction有影响（90%的置信度），但结果与SO2结果矛盾，影响为正（0.06）

NO2（类似地，NO2_24h）对Psychiatric symptoms有一定影响（M1,M2，效果为正/负，最大可能是数据有问题，无法直接解读）

PM10（类似地，PM10_24h）对Psychiatric symptoms有一定影响（M0,M1，效果为负/正，最大可能是数据有问题，无法直接解读）

SO2对Psychiatric symptoms有一定影响（M0,M1，效果为负/正，最大可能是数据有问题，无法直接解读），且结果与SO2_24h结果矛盾

PM10对Coma有一定影响（M1,M2，效果为负/正，最大可能是数据有问题，无法直接解读））

SO2对Coma有一定影响（M1,M2，效果为正/负，最大可能是数据有问题，无法直接解读），且结果与SO2_24h结果矛盾

SO2_24h对Language problem有一定影响，但结果与SO2不符，结果为正，（0.05~0.16）

AQI对Gait instability and ataxia有一定影响，（M0，M1，效果负/正，应当是数据中存在一定问题，无法直接解读）

NO2（类似地，NO2_24h）对Gait instability and ataxia有一定影响（M0,M1，效果为负/正，最大可能是数据有问题，无法直接解读）

PM10（类似地，PM10_24h，PM2.5，PM2.5_24h）对Gait instability and ataxia有一定影响（M0,M1，效果为负/正，最大可能是数据有问题，无法直接解读）

SO2对Gait instability and ataxia有一定影响（M0,M1，效果为正/负，最大可能是数据有问题，无法直接解读），且结果与SO2_24h结果矛盾


## 2.	污染物浓度与抗体滴度关系

抗体滴度：anti-NMDAR antibody titer in CSF
弱阳性 1：1——1：10
阳性 1：30——1：100
强阳性 1：300及以上
*一般认为抗体为强阳性的患者可能发病最严重

AQI（M0，M1,M2），CO（M0,M1）,CO_24h(M0,M1), PM10（M0,M1,M2）， PM10_24h（M0,M1,M2），PM2.5（M0,M1,M2）， PM2.5_24h（M0,M1,M2），SO2（M0,M1,M2）,SO2_24h(M2) 对抗体滴度有正影响，NO2，NO2_24h，没影响， O3 有很小的负影响（但结果不易解读），其中大致判断为SO2_24h的数据有问题


## 3.	污染物浓度与严重程度关系
严重程度对应项目：mRS；ICU admission

NO2(M2)，NO2_24h与mRS严重程度负相关, 其余相关性不显著（虽然上次meeting提过抗体滴度和严重程度正相关，0.15左右相关性，但这个相关性似乎不够强到说明污染物浓度与mrs的严重相关）

NO2(M2)，NO2_24h与ICU admission严重程度负相关, 其余相关性不显著

## 4.	抗体滴度与严重程度关系

抗体滴度和mRS严重程度正相关，0.15左右相关性

抗体滴度和ICU admission严重程度正相关，0.14左右相关性

## 5.	污染物联合作用
两个污染物联合、三个污染物联合，分别与首发的症状、抗体滴度、严重程度的关系

## 6.	亚组分析
性别；年龄；发病冷热季；抽烟情况；婚姻状况；是否合并肿瘤；是否合并其他抗体
*冷热季节划分：5-10月为热季；11-次年4月为冷季
*是否合并肿瘤：tumor
*是否合并其他抗体：other antibodies and titers

*污染物浓度数据同前，使用月均浓度，向前lag3个月
