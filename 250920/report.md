在病例的个体层面上进行分析：

##1.	污染物浓度与首发症状关系
症状对应的项目分别为：Seizures；Memory dysfunction；Psychiatric symptoms；Coma；Language problem；Dyskinesia/dystonia；Gait instability and ataxia ......；Brainstem dysfunction

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

两污染物联合的two_pollutant_summary_report, 无显著

## 6.	亚组分析
性别；年龄；发病冷热季；抽烟情况；婚姻状况；是否合并肿瘤；是否合并其他抗体
*冷热季节划分：5-10月为热季；11-次年4月为冷季
*是否合并肿瘤：tumor
*是否合并其他抗体：other antibodies and titers

*污染物浓度数据同前，使用月均浓度，向前lag3个月

---

关于发病风险(risk ratio),亚组


1 发病冷热季：AQI（M0-3）显著

2 Non-Smoker: AQI (M0-3) 仅对不吸烟的人群显著，对吸烟人群影响不显著

3 Non-Tumor: AQI (M0-2) 仅对没有肿瘤的人群显著

4 性别：CO（M0-3）仅对女性显著，对所有人群亦有一定显著性（但结果比较mix，不容易解读）

5  发病冷热季：CO（M0-3）显著，对warm显著，对cold则显著性差

6 Non-Smoker: CO (M0-3) 仅对不吸烟的人群显著，对吸烟人群影响不显著

7 Marital：CO（M0-3）对已婚人士显著，对未婚和离异人士不显著

8 Non-Tumor: CO (M0-2) 仅对没有肿瘤的人群显著

9 发病冷热季：NO2（M0-3）显著，对cold尤为显著，对warm仅M0,M1显著性

10 Non-Smoker: CO (M0-3) 仅对吸烟的人群显著，对不吸烟人群影响不显著 （与前AQI,CO相反）

11 seems like risk ratio and marital status itself has some relationship, but under each group, the pollutant has no significant difference

12 Tumor: NO2 (M1-3) 仅对有肿瘤的人群显著 (与之前AQI,CO再次相反)

13 发病冷热季：O3 显著，对两季都有显著性，但显著性不易解读，例如03当月和延迟两个月对cold季下的risk ratio显著，但偏偏延迟一个月没有，类似的结果会让人担心是数据量不足的结果

14 Smoker: O3 (M3) 仅对吸烟的人群显著，而吸烟人群对risk ratio的影响是非常显著的

15 Tumor: O3 (M3) 仅对没有肿瘤的人群显著，而是否有肿瘤对risk ratio的影响是显著的

16 发病冷热季：PM10（M0-3）， PM2.5 （M0-3）显著

17 Non-smoker: PM10（M0-2） 对不吸烟人群是有显著影响的，对吸烟人群也有影响(M3), 而核心是，吸烟和PM10是又相互作用关系的，所以其中相关性可能令我们的解读变得不容易，但大致可以判断这俩对risk ratio都是有影响的

18 Non-Tumor: PM10 (M0-2) PM2.5 （M0-2）仅对没有肿瘤的人群显著

19 Non-smoker: PM2.5（M0-3） 对不吸烟人群是有显著影响，对吸烟人群没有影响， 相比于PM10，这个关系更清晰一些；但同时也观察到吸烟和PM2.5之间是具有相关性的

20 发病冷热季：SO2（M0-3）显著

21 Non-smoker: SO2（M0-2） 对不吸烟人群是有显著影响的，对吸烟人群也有影响(M3), 而核心是，吸烟和PM10是又相互作用关系的，所以其中相关性可能令我们的解读变得不容易，但大致可以判断这俩对risk ratio都是有影响的

22 Non-Tumor: SO2 (M0-2) 仅对没有肿瘤的人群显著

最后 SO2 24h 与SO2 显示的结果不匹配，前面提到，大致判断为SO224h的数据有问题，所以不再罗列SO2 24h相关的结果

