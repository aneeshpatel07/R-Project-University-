predictHome1 <- predict(model1, data.frame(Home=1, Team= "Southampton",
                                          Opponent="Crystal Palace"), type="response")
predictAway1 <- predict(model1, data.frame(Home=0, Team= "Crystal Palace",
                                          Opponent="Southampton"), type="response")

#skellam distribution

sum(dskellam(-100:-1, predictHome1, predictAway1)) #Away

sum(dskellam(1:100, predictHome1, predictAway1)) #Home

sum(dskellam(0, predictHome1, predictAway1)) #Draw

#Goal difference plot
goalDiffRange <- -6:6
plot(goalDiffRange, dskellam(goalDiffRange, predictHome1, predictAway1), 
     type="b", main="Southampton Vs Crystal Palace", ylab="Probability", 
     xlab="Goal difference")
