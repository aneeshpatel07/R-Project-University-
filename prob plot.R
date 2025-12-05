predictHome <- predict(model1, data.frame(Home=1, Team= "West Ham",
                                          Opponent="Liverpool"), type="response")
predictAway <- predict(model1, data.frame(Home=0, Team= "Liverpool",
                                          Opponent="West Ham"), type="response")

# Plot to model probabilities
plotrange <- 0:9
hp <- dpois(plotrange, predictHome)
ap <- dpois(plotrange, predictAway)
plot(plotrange, hp, type="b", ylim=range(hp, ap), main="West Ham Vs Liverpool", 
     xlab="Number of goals", ylab="Probability")
points(plotrange, ap, type="b", pch=24)
legend(x=4, y=0.5, legend=c("West Ham", "Liverpool"), pch=c(21, 24))
