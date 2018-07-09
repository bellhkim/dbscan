setwd('C:/Users/dsc/dbscan')
df = USArrests
dist(df, method = "manhattan") # "euclidean", "maximum", "manhattan", "canberra", "binary" or "minkowski"

mahalanobis(df, colMeans(df), cov(df))   # mahalanobis(x, center : 각 변수의 평균, cov : 공분산행렬)

> x = data.frame(c(1,3,6,12,20))
> rownames(x) = c("a","b","c","d","e")
> d = dist(x)
> 
  > par(mfcol=c(2,2))
> hc = hclust(d, method = "single")   # single linkage (최단연결법)
> plot(hc)
> hc2 = hclust(d, method = "complete")    # complete linkage (최장연결법)
> plot(hc2)
> hc3 = hclust(d, method = "average")  # average linkage (평균연결법)
> plot(hc3)
> hc4 = hclust(d, method = "ward.D")  # ward method
> plot(hc4)
> par(mfcol=c(1,1))
> 
  > hc$height
[1] 2 3 6 8
> # USArrests
  > 
  > distUS = dist(scale(df))
> 
  > hc = hclust(distUS, method = "single")
> plot(hc)
> hc2 = hclust(distUS, method = "complete")
> plot(hc2)
> hc3 = hclust(distUS, method = "average")
> plot(hc3)
> hc4 = hclust(distUS, method = "ward.D")
> plot(hc4)
> # Cluster Plot
  > # 위 결과중 '평균연결법' 사용.
  > h3result = cutree(hc3, k=5) # k : 그룹의 갯수
> plot(df$Murder, df$Assault, col=h3result, pch=h3result)
> text(df$Murder, df$Assault, labels = rownames(df), col=h3result, pos = 1)
> plot(df$Murder, df$UrbanPop, col=h3result, pch=h3result)
> text(df$Murder, df$UrbanPop, labels = rownames(df), col=h3result, pos = 1)
> df$cluster = h3result
> 
  > par(mfcol=c(2,2))
> 
  > for (i in 1:4) {
    +     boxplot(df[,i] ~ h3result, main = names(df)[i])
    + }
> par(mfcol=c(1,1))
> 
  > 
  > library(psych)
Error in library(psych) : there is no package called ‘psych’
> describe(df)
Error in describe(df) : could not find function "describe"
> describeBy(df, group = h3result)
Error in describeBy(df, group = h3result) : 
  could not find function "describeBy"
> View(x)
> View(hc4)
> View(hc4)
> View(hc3)
> View(hc2)
> View(hc)
> View(df)
> describeBy(df, group = h3result)
Error in describeBy(df, group = h3result) : 
  could not find function "describeBy"
> getwd()
[1] "C:/Users/dsc/Documents"