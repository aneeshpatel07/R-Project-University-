x <- c(88,116,95,48,22,11)
p <- c(0.208,0.327,0.256,0.134,0.053,0.022)
chisq.test(x,p=p)

# poisson model
with(model1, cbind(res.deviance = deviance, df = df.residual,
               p = pchisq(deviance, df.residual, lower.tail=FALSE)))

pchisq(model1$deviance, df=model1$df.residual, lower.tail=FALSE)

# Home effect predictor
model2 <- update(model1, . ~ . - Home)
lrtest(model1,model2)

