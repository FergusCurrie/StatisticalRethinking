
# Using maximum a posteriori to use the quadratic approximation.




library(rethinking)

globe.qa <- map(
    alist(
        w ~ dbinom(9,p), # binomial likelihood
        p ~ dunif(0,1)   # uniform prior 
    ),
    data = list(w=6)
)

# display summary of quadratic approximation
precis(globe.qa)