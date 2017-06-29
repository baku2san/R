library(reshape)

x <- melt(d, variable_name = "group")
head(NG_1yy_1_1$CH1_MoSPD)

res <- aov(value ~ factor(group), data = NG_1_1_1$)

summary(res)
anova(aov(formula=NG_1_1_1_bottom$cycleStatus ~ NG_1_1_1_bottom$cycleStatusLength))
manova(NG_1_1_1_bottom)
str(NG_1_1_1_bottom)

summary(NG_1_1_1_bottom) # display Type I ANOVA table
drop1(NG_1_1_1_bottom$cycleStatus,~.,test="F")

result <- manova(cbind( NG_1_1_1_bottomCross$`1`, NG_1_1_1_bottomCross$`2`, NG_1_1_1_bottomCross$`3`, NG_1_1_1_bottomCross$`4`) ~ c(0:3)) 
summary.aov(result) 


summary(result, test="Pillai") #　　　と記述し，4測定値まとめて多変量分散分析の結果で「Pillai のﾄﾚｰｽ検定」する.

# 何も指定しないとPillai の検定になる．

summary(result, test="Wilks") #　　　と記述し，4測定値まとめて多変量分散分析の結果で「Wilk's Lambdaの検定」する.

summary(result, test="Hotelling-Lawley") #　　　と記述し，4測定値まとめて多変量分散分析の結果で「Hotelling-Lawleyのﾄﾚｰｽ検定」する.

summary(result, test="Roy") #　　　と記述し，4測定値まとめて多変量分散分析の結果で「Roy の最大根検定」する.

anova(aov(cycleStatus ~ cycleStatusLength, data=NG_1_1_1_bottom))
