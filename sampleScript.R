###################################################
# R code to benchmark computational performance
# This code written by: Tyler Ransom
###################################################


#------------------------------------------
# Clear out memory; set seed
#------------------------------------------
rm(list = ls())
gc()
set.seed(1)


#------------------------------------------
# Parameters of the simulation
#------------------------------------------
n <- 2e7
k <- 15


dfm <- as.data.frame(matrix(runif(n*k), nrow=n, ncol=k))

X <- cbind(matrix(1, nrow=n, ncol=1),as.matrix(dfm[,2:length(dfm)]))
y <- as.matrix(dfm[,1])

# ols <- lm(dfm[,1]~., data=dfm)
ols <- solve(t(X)%*%X)%*%(t(X)%*%y)
print(ols)
print(object.size(dfm))
# print(object.size(X))
# print(object.size(y))
