
# Using grid approximation



# Define grid 
p_grid <- seq(from=0, to=1, length.out=20)

# define prior 
prior <- rep(1,20) # uniform prior 

#prior <- ifelse(p_grid < 0.5, 0, 1)
#prior <- exp(-5 * abs(p_grid -0.5))

print(prior)

# compute liklihood at each value in the grid
likelihood <- dbinom(6, size=9, prob=p_grid) # numbr of waters (6) out of (9) throws 

# compute product of likelihood and prior 
unstd.posterior <- likelihood * prior

# Standardize the posterior, so it sums to 1
posterior <- unstd.posterior / sum(unstd.posterior )

# Display
plot(p_grid, posterior, type="b", xlab="prob of water", ylab="posterior prob")
mtext("20 points")