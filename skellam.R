#skellam distribution

sum(dskellam(-100:-1, predictHome, predictAway)) #Away

sum(dskellam(1:100, predictHome, predictAway)) #Home

sum(dskellam(0, predictHome, predictAway)) #Draw

#Goal difference plot
goalDiffRange <- -6:6
plot(goalDiffRange, dskellam(goalDiffRange, predictHome, predictAway), 
     type="b", main="West Ham Vs Liverpool", ylab="Probability", 
     xlab="Goal difference")