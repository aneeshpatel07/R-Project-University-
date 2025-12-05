
# Predicting outcome of West Ham Vs Liverpool
predict(model1, data.frame(Home=1, Team= "West Ham",
                           Opponent="Liverpool"), type="response")
predict(model1, data.frame(Home=0, Team= "Liverpool",
                           Opponent="West Ham"), type="response")

# Predicting outcome of West Ham Vs Liverpool without home effect
predict(model1, data.frame(Home=1, Team= "West Ham",
                           Opponent="Liverpool"), type="response")
predict(model2, data.frame(Home=1, Team= "West Ham",
                           Opponent="Liverpool"), type="response")
