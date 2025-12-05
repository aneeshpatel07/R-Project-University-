# Data formated for the independent model
# Store in new variable, we need the data in original format later

newdata1 <- data.frame(Team=as.factor(c(as.character(data1$HomeTeam),
                                        as.character(data1$AwayTeam))),
                       Opponent=as.factor(c(as.character(data1$AwayTeam),
                                            as.character(data1$HomeTeam))),
                       Goals=c(data1$FTHG, data1$FTAG),
                       Home=c(rep(1, dim(data1)[1]), rep(0, dim(data1)[1])))

model1 <- glm(Goals ~ Home + Team + Opponent, family=poisson(link=log), data=newdata1)
exp(coef(model1))

contrasts(newdata1$Team) <- contr.treatment(n=levels(newdata1$Team), base=10)

