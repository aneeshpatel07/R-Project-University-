# model fitting data from all games for previous PL season
model3 <- glm(Goals ~ Home + Team + Opponent, family=poisson(link=log), data=newdata) 
# model with out home effect
model4 <- update(model3, . ~ . - Home)
# test to see if home effect is significant across 380 games
lrtest(model4,model3)
# parameter is highly significant
