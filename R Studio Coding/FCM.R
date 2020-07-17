> library("FactoMineR")
> library("factoextra")
> library("tidyverse")
> library("cluster")
> library(magrittr) 
> Epileptic <- read.csv("C:/Users/shaza/Desktop/Epileptic.csv")
>   View(Epileptic)
> newEpileptic <- Epileptic %>% select(X121, X153, X92, X91, X120, X103, X24, X113, X44, X130, X78, X102, X133, X165, X73, X146, X124, X129, X84, X4)
> ep.fanny <- fanny(newEpileptic, 3)
> fviz_cluster(ep.fanny, data = newEpileptic)
> fviz_silhouette(ep.fanny, data = newEpileptic)
cluster size ave.sil.width
1       1   21         -0.29
2       2   10         -0.28
3       3  119          0.63