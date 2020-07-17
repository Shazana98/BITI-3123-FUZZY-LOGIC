> library("FactoMineR")
> library("VIM")
> library("factoextra")
> library("tidyverse")
> library("cluster") 
> library(magrittr)
> library(dplyr)
> Epileptic <- read.csv("C:/Users/shaza/Desktop/Epileptic.csv")
> newEpileptic <- Epileptic %>% select(X121, X153, X92, X91, X120, X103, X24, X113, X44, X130, X78, X102, X133, X165, X73, X146, X124, X129, X84, X4)
> ep.kmns <- kmeans(newEpileptic, centers = 3, nstart = 25)
> str(ep.kmns)
List of 9
$ cluster     : int [1:150] 1 2 2 3 2 2 2 2 2 1 ...
$ centers     : num [1:3, 1:20] -446.3 -30.9 -15 178 -16.6 ...
..- attr(*, "dimnames")=List of 2
.. ..$ : chr [1:3] "1" "2" "3"
.. ..$ : chr [1:20] "X121" "X153" "X92" "X91" ...
$ totss       : num 1.17e+08
$ withinss    : num [1:3] 5378923 58423060 25654008
$ tot.withinss: num 89455990
$ betweenss   : num 27717419
$ size        : int [1:3] 3 137 10
$ iter        : int 2
$ ifault      : int 0
- attr(*, "class")= chr "kmeans"
> ep.kmns
K-means clustering with 3 clusters of sizes 3, 137, 10

Cluster means:
  X121      X153         X92         X91       X120
1 -446.33333 178.00000  274.000000  205.333333 -596.33333
2  -30.89051 -16.59854   -4.927007   -1.474453  -32.18978
3  -15.00000  66.10000 -516.500000 -466.400000  -27.30000
X103        X24       X113       X44       X130       X78
1 718.66667 -196.33333  537.00000 601.00000 -828.33333 142.33333
2 -21.56204  -20.05109   15.16788 -12.08759  -21.60584 -17.13139
3  76.10000   12.50000 -133.50000 286.40000  494.20000 171.00000
X102      X133      X165       X73      X146     X124
1 686.00000 -95.33333 624.66667 249.00000  31.33333 150.0000
2 -20.10949 -17.91971 -25.24818 -18.74453 -14.23358 -25.9635
3  77.80000 425.90000 -53.60000  30.50000 119.50000 -21.6000
X129        X84         X4
1 -968.33333  314.66667 -154.66667
2  -19.62774  -14.86131  -32.58394
3  399.40000 -300.10000  259.30000

Clustering vector:
  [1] 1 2 2 3 2 2 2 2 2 1 3 2 2 2 2 2 2 3 2 2 2 2 3 2 3 3 3 2 2 2
[31] 2 2 2 2 2 2 2 3 2 2 3 1 2 2 3 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2
[61] 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2
[91] 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2
[121] 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2

Within cluster sum of squares by cluster:
  [1]  5378923 58423060 25654008
(between_SS / total_SS =  23.7 %)

Available components:
  
  [1] "cluster"      "centers"      "totss"        "withinss"    
[5] "tot.withinss" "betweenss"    "size"         "iter"        
[9] "ifault"      
> fviz_cluster(ep.kmns, data = newEpileptic)
> ep.sil <- silhouette(ep.kmns$cluster, dist(newEpileptic))
> fviz_silhouette(ep.sil)
cluster size ave.sil.width
1       1   10         -0.12
2       2    3          0.13
3       3  137          0.66