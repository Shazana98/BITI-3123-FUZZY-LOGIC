library(Boruta)
library(caret)

> Epileptic <- read.csv("C:/Users/shaza/Desktop/Epileptic.csv")
>   View(Epileptic)
> rPartMod <- train(y ~ ., data = Epileptic, method = "rpart")
> View(rPartMod)
> rpartImp <- varImp(rPartMod)
> print(rpartImp)
rpart variable importance

only 20 most important variables shown (out of 178)

Overall
X121  100.00
X153   96.68
X92    48.73
X91    48.15
X120   47.36
X103   46.20
X24    45.72
X113   45.71
X44     0.00
X130    0.00
X78     0.00
X102    0.00
X133    0.00
X165    0.00
X73     0.00
X146    0.00
X124    0.00
X129    0.00
X84     0.00
X4      0.00