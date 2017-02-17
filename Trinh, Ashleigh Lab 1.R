# Numerical Methods in PDEs
# Lab 1

# Exercise 1
a <- 1+2i
b <- 1i
a/b
Conj(a)
1.5
c(0.5, 0.7)
c(TRUE, FALSE)
c("dog","cat","chicken")
9:12
c(1+0i, 2+4i)
x <- c(2,4,8,16)
x + (1:4)
x/(1:4)
x+c(10,200)
x+10
x+c(10,200,3000)
c(2.2, 4, 8)*c(TRUE, FALSE, FALSE) 
seq(0, 2, length.out = 5) # sequence from 0 to 2 with equal increments to 5 entries
seq(0, 2, by = 0.5) # sequence from 0 to 2 with increments of 5
seq(0, -2, by = -0.5)
x <- seq(0, 2, by = 0.5)
sin(x)
x[1]
x[2]
1:50
# Exercise 2
t <- c(1:10)
t*cos(t)
(t^2)*exp(-t)
# Exercise 3
n <- c(0:20)
r <- 0.5
x <- r^n
sum(x)
1/(1-r)
# Matrices
A <- matrix(c(1,2,1,2,3,1,4,2,1), nrow=3, ncol=3)
A
A[2,3]
A[2,3] <- 7
A
B <- A[1:2,1:3]
B
B <- A[2:3, 2:3]
B
B <- t(A) # transpose
B
u <- c(1, 1, 5)
B <- rbind(A, u, deparse.level=0) # appends the vector u to the rows of B
B
v <- c(2, 2, 5)
B <- cbind(A, v, deparse.level=0) # appends the vector v to the columns of B
B
# note that deparse.level=0 is not necessary but it makes the code cleaner so that the new row will not be given a different label
B <- diag(2) # n by n matrix with ones on the diagonal and zeroes elsewhere diag(n)
B
B <- matrix(0, 2, 2) # n by m matrix with each entry equal to v
B
B[, 1] <- c(2, 2)
B
A <- matrix(c(1,1,2,3), nrow=2, ncol=2)
B <- matrix(1, 2, 2)
A+B
A * B # component wise matrix multiplication
A %*% B # true matrix multiplication
x <- c(2,1)
A %*% x
x %*% A
as.vector(x %*% A) # returns output without the labelling of the rows and columns
A <- matrix(c(1,2,1,2,1,1,3,1,1), nrow=3, ncol=3)
A
b <- c(2,2,1)
solve(A,b) # solving AX=b
# Exercise 4
Z <- matrix(c(1,-2,3,5,-2,1,1,1,-1,3,1,-4,1,1,1,7), nrow=4, ncol=4)
Y <- c(-4,5,13,-4)
X <- solve(Z,Y)
X
Z %*% X # to confirm the solution is correct
# Basic Plotting
x <- seq(0,1, by=0.01)
y <- sin(4*pi*x)
plot(x,y)
plot(x,y,type="l") # traditional line plot
theta=(0:100)*2*pi/100
x <- cos(theta)
y <- sin(theta)
par(pty="s") # obtain a square plot
plot(x,y,main="A circle", xlab="X", ylab="y")
par(pty="m") # returning plot parameters back to normal
# Exercise 5
theta=(0:100)*2*pi/100
x <- cos(theta)
y <- sin(theta)
par(pty="s") # obtain a square plot
plot(x,y, main="A circle", xlab="X", ylab="y",type="l", col='blueviolet')
par(pty="m") # returning plot parameters back to normal