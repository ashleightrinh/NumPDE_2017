# Numerical Methods for PDEs
# Practical 2

# Lists
myList <- list(animal=c("dog", "man"), legs=c(4, 2))
myList
# extracting components of the list by name (separate by $)
myList$legs 
# extracting components of the list by using the index (square brackets)
myList[[2]] 
# returns a list instead of the individual components
myList[2] 

# Creating Functions
# making a function circle(), takes two input arguments: N and r, and outputs
# coordinates of N points equally spaced around a circle radius r.
# function creates a list A with two components: A$x is a vector with the x-coords
# of our circle points, and A$y is a vector with y-coords of the circle points.
circle <- function(N, r) {
  t <- (1:N)/N
  A <- list(x=r*sin(2*pi*t), y=r*cos(2*pi*t))
  return(A)
  }
coords <- circle(100,2)
coords
par(pty="s")
plot(coords$x, coords$y, main="A circle", xlab="x", ylab="y")
par(pty="m")
coords <- circle(6, 2)
par(pty="s")
plot(coords$x, coords$y, main="A hexagon", xlab="X", ylab="Y", type = "l")
# adding one more line to close the hexagon
# the lines command adds additional lines
lines(c((coords$x)[6], (coords$x)[1]), c((coords$y)[6], (coords$y)[1]))
par(pty="m")
# function for a circle but shifted w units to the right
shiftedCircle <- function(N, r) {
  t <- (1:N)/N
  A <- list(x=r*sin(2*pi*t) + w, y=r*cos(2*pi*t))
  return(A)
  }
w <- 1
par(pty="s")
plot(shiftedCircle(100, 2)$x, shiftedCircle(100, 2)$y, 
     main="Two circles", xlab="X", ylab="Y")
w <- 2
points(shiftedCircle(100, 1)$x, shiftedCircle(100, 1)$y)
par(pty="m")

# Loops
# for loop repeats a group of statements a fixed, predetermined number of times (like matlab)
# the repeated statements are enclosed in curly brackets
for (n in 1:3) {
  print(n/2)}
f <- rep(1,10)
f
for (n in 3:10) {f[n] <- f[n-1] + f[n-2]}
f
H <- matrix(0, 5, 5)
for (n in 1:5) {
  for (m in 1:5) {
    H[n, m] <- 1/(n+m)
  }
}
H
# while loops repeats a group of statements an indefinite number of times under the control of a logical condition
s <- 2
q <- c()
while(s < 1000) {
  q <- c(q,s)
  s <- 2*s
}
q
# Approximation of function e^x by its Nth Taylor polynomial at 0.
myexp <- function(x,N) {
  f <- 1
  c <- 1
  for (k in 1:N) {
    c <- c*x/k
    f <- f+c
  }
  return(f)
}
myexp(1,5)

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
par(pty="s")
plot(circle(100,7)) # plot the first largest circle
for (r in 1:7) {
  coords <- circle(100,r)
  points(coords$x, coords$y) # plotting the points of all circle radii
}

install.packages("plot3Drgl")
library("plot3Drgl")
library("plot3D")
library("rgl")
x <- seq(-2.5, 2.5, length.out = 100)
y <- seq(-2, 2, length.out = 100)
xy <- mesh(x, y)
z <- with(xy, x*exp(-x^2-y^2))
persp3D(x, y, z)
plotrgl()
plotrgl(smooth = TRUE)
