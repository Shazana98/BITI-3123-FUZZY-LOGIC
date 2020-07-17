> library("FactoMineR")
> library("VIM")
> library("factoextra")
> library("tidyverse")
> library("cluster") 
> library(magrittr)
> library(dplyr)
> Epileptic <- read.csv("C:/Users/shaza/Desktop/Epileptic.csv")
> ep.kmns1 <- kmeans(newEpileptic, centers = 3, nstart = 25)
> fviz_cluster(ep.fanny, data = newEpileptic)
> ep.sil1 <- silhouette(ep.kmns1$cluster, dist(Epileptic))
> fviz_silhouette(ep.sil1)
cluster size ave.sil.width
1       1  145          0.67
2       2    3         -0.19
3       3    2         -0.06