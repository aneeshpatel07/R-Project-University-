# calculating Probabilities
p <- dpois(0:9,0.6429387) %o% dpois(0:9,3.131493)
rownames(p) <-0:9
colnames(p) <-0:9
print(p)

draw <- sum(diag(p))
away <- sum(p[upper.tri(p)])
home <- sum(p[lower.tri(p)])
cat('home: ', home * 100, '%') 

cat('draw: ', draw * 100, '%') 

cat('away: ', away * 100, '%') 