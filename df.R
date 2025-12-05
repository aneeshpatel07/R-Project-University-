
df <- apply(data,1, function(row){
  data.frame(team=c(row['HomeTeam'], row['AwayTeam']),
             opponent=c(row['AwayTeam'], row['HomeTeam']),
             goals=c(row['FTHG'], row['FTAG']),
             home=c(1, 0))
})
df <- do.call(rbind, df)
df[, c(3)] <- sapply(df[, c(3)], as.numeric)
head(df)


model <- glm(goals ~ home + team + opponent,
             family=poisson(link=log),
             data=df)
summary(model)

predict(model, data.frame(home=1, team= "Man United",
opponent="Leicester"), type="response")
predict(model, data.frame(home=0, team= "Leicester",
                          opponent="Man United"), type="response")

dpois(0:6,2.299339)
dpois(0:6,1.794259)

m <- dpois(0:6,2.299339) %o% dpois(0:6,1.794259)
rownames(m) <-0:6
colnames(m) <-0:6
print(m)

draw <- sum(diag(m))
away <- sum(m[upper.tri(m)])
home <- sum(m[lower.tri(m)])
cat('home: ', home * 100, '%')
cat('draw: ', draw * 100, '%')
cat('away: ', away * 100, '%')

