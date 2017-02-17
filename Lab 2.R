# Numerical Methods for PDEs
# Practical 2

# Exercise 1
mysum <- function(N) {
  f <- 1
  c <- 0
  for (n in 1:N) {
    f <- 1/(n^2)
    c <- f+c
  }
  return(c)
}
mysum(10)
mysum(50)
mysum(100)

# Exercise 2
circle <- function(N, r) {
  t <- (1:N)/N
  A <- list(x=r*sin(2*pi*t), y=r*cos(2*pi*t))
  return(A)
}
par(pty="s")
plot(circle(100,7)) # plot the first largest circle
for (r in 1:7) {
  coords <- circle(100,r)
  points(coords$x, coords$y) # plotting the points of all circle radii
}

# Exercise 3
mysin <- function(x) {
  sinx <- 0
  R <- 0
  for (n in 1:1000) {
    sinx <- x + ((-1)^n)*((x^(2*n+1))/factorial(2*n+1))
    R <- (abs(x)^(2*n+3))/factorial(2*n+3)
      if (R <= 0.0001) {
        break
      } else {
        y <- sinx + R
      }
  }
  return(y)
}
mysin(pi)
mysin(pi/2)

# Exercise 4
# Plotting a doughnut (torus)
install.packages("plot3Drgl")
library("plot3Drgl")
library("plot3D")
library("rgl")
a <- 2
b <- 1
x <- seq(0, 2*pi, length.out = 100)
y <- seq(0, 2*pi, length.out = 100)
xy <- mesh(x, y)
alpha <- xy$x
beta <- xy$y
X <- ((a+b*cos(alpha))*cos(beta))
Y <- ((a+b*cos(alpha))*sin(beta))
Z <- b*sin(alpha)
persp3D(X, Y, Z, xlim = c(-3, 3), ylim = c(-3, 3), zlim = c(-2, 2))
plotrgl(smooth = TRUE)
