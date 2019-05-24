# 4 = to short signal... if we want larger then Z = 8 ...here was 60 also
# Exercise 2.

t = 1:500;
X = 0.3*sin(t*pi/5) + sin(t*pi/50); # sin(t*pi/4) => period = 8... sin(t*pi/50) => period = 1000

# a
Z = 8

H = ones(1,Z) / Z;

[t2, Y] = ImpulseSignal( X, H );

# b

Y = Y((Z/2) : (end-(Z/2)))

S = X-Y;

# c

plot(t, X, t, Y, t, S) 