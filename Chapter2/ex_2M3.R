# exercise 

n = 100

# Define grid 
p_grid <- seq(from=0, to=1, length.out=n)

# define prior 
prior <- rep(1,n)


# compute liklihood at each value in the grid
likelihood <- dbinom(3, size=3, prob=p_grid)

# compute product of likelihood and prior 
unstd.posterior <- likelihood * prior

# Standardize the posterior, so it sums to 1
posterior <- unstd.posterior / sum(unstd.posterior )

# Display
plot(p_grid, posterior, type="b", xlab="prob of water", ylab="posterior prob")
mtext("n points")