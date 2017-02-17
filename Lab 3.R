# Numerical Methods for PDEs
# Practical 3

# Exercise 1
# Consider the heat equation
# Generating a vector of non-boundary grid points
N <- 30
L <- 1
h <- L/N
x <- h*(1:(N-1))
# Setting the initial condition
w <- 2*sin(2*pi*x)
w
# Our system runs for T=0.1 and we shall have M=200 steps hence time step size is tau=T/M
# We can now define the vector t of time steps
T <- 0.1
M <- 200
tau <- T/M
t <- tau*(0:M)
# Setting the heat parameter K=1, so gamma=Kt/h^2
K <- 1
gamma <- K*tau/(h^2)
# To determine the next timestep we multiply w by matrix A
A <- diag(1-2*gamma, N-1)
for (k in 1:(N-2)) {
  A[k,k+1] <- gamma
  A[k+1,k] <- gamma
}
# Compute matrix product A %*% w of A and w
plot(x, w, type = "l")
lines(x, A %*% w, col = "red")

# To evolve the system for M time steps we rewrite w by the updated value
Temperature <- matrix(0, N-1, M+1) # matrix to hold the solution
Temperature[ ,1] <- w
# Loop over time steps
for (j in 0:(M)) {
  w <- A %*% w
  Temperature[ , j+1] <- w
}
library("plot3Drgl")
persp3D(x, t, Temperature,
        xlab="x", ylab="t", zlab="Temperature", # Provides axis labels
        ticktype="detailed", nticks=4) # Provides axis ticks
plotrgl(smooth=TRUE, lighting = TRUE)

# Exercise 2
# Setting new initial condition
w <- 6*sin(pi*x/L)
w
# Compute matrix product A %*% w of A and w
plot(x, w, type = "l")
lines(x, A %*% w, col = "red")
# To evolve the system for M time steps we rewrite w by the updated value
Temperature <- matrix(0, N-1, M+1) # matrix to hold the solution
Temperature[ ,1] <- w
# Loop over time steps
for (j in 0:(M)) {
  w <- A %*% w
  Temperature[ , j+1] <- w
}
library("plot3Drgl")
persp3D(x, t, Temperature,
        xlab="x", ylab="t", zlab="Temperature", # Provides axis labels
        ticktype="detailed", nticks=4) # Provides axis ticks
plotrgl(smooth=TRUE, lighting = TRUE)
# Setting new initial condition
w <- 2*sin(3*pi*x/L)*cos(pi/L*x)
w
# Compute matrix product A %*% w of A and w
plot(x, w, type = "l")
lines(x, A %*% w, col = "red")
# To evolve the system for M time steps we rewrite w by the updated value
Temperature <- matrix(0, N-1, M+1) # matrix to hold the solution
Temperature[ ,1] <- w
# Loop over time steps
for (j in 0:(M)) {
  w <- A %*% w
  Temperature[ , j+1] <- w
}
library("plot3Drgl")
persp3D(x, t, Temperature,
        xlab="x", ylab="t", zlab="Temperature", # Provides axis labels
        ticktype="detailed", nticks=4) # Provides axis ticks
plotrgl(smooth=TRUE, lighting = TRUE)

# Exercise 3
# Setting the heat parameter K=1, so gamma=Kt/h^2
K <- 1.2
gamma <- K*tau/(h^2)
# To determine the next timestep we multiply w by matrix A
A <- diag(1-2*gamma, N-1)
for (k in 1:(N-2)) {
  A[k,k+1] <- gamma
  A[k+1,k] <- gamma
}
# Compute matrix product A %*% w of A and w
plot(x, w, type = "l")
lines(x, A %*% w, col = "red")

# To evolve the system for M time steps we rewrite w by the updated value
Temperature <- matrix(0, N-1, M+1) # matrix to hold the solution
Temperature[ ,1] <- w
# Loop over time steps
for (j in 0:(M)) {
  w <- A %*% w
  Temperature[ , j+1] <- w
}
library("plot3Drgl")
persp3D(x, t, Temperature,
        xlab="x", ylab="t", zlab="Temperature", # Provides axis labels
        ticktype="detailed", nticks=4) # Provides axis ticks
plotrgl(smooth=TRUE, lighting = TRUE)

# Exercise 4
# Setting the heat parameter K=1.5, so gamma=Kt/h^2
K <- 1.5
gamma <- K*tau/(h^2)
# To determine the next timestep we multiply w by matrix A
A <- diag(1-2*gamma, N-1)
for (k in 1:(N-2)) {
  A[k,k+1] <- gamma
  A[k+1,k] <- gamma
}
# Compute matrix product A %*% w of A and w
plot(x, w, type = "l")
lines(x, A %*% w, col = "red")

# To evolve the system for M time steps we rewrite w by the updated value
Temperature <- matrix(0, N-1, M+1) # matrix to hold the solution
Temperature[ ,1] <- w
# Loop over time steps
for (j in 0:(M)) {
  w <- A %*% w
  Temperature[ , j+1] <- w
}
library("plot3Drgl")
persp3D(x, t, Temperature,
        xlab="x", ylab="t", zlab="Temperature", # Provides axis labels
        ticktype="detailed", nticks=4) # Provides axis ticks
plotrgl(smooth=TRUE, lighting = TRUE)
