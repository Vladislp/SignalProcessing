% function [ t_step, impulse_response ] = ImpulseSignal( input, impulse )

Z = 8 # 4 = to short signal... if we want larger then Z = 8 ...here was 60 also

t = 1:500;
X = 0.3*sin(t*pi/4) + sin(t*pi/50); # sin(t*pi/4) => period = 8... sin(t*pi/50) => period = 1000
H = ones(1,Z) / Z;
[t2, Y] = ImpulseSignal( X, H );
#First part of the Exercise 1... also upper thing is also Exercise 1

#Y = Y((Z/2) : (end-)(Z/2))
#plot(t, X, t, Y)

#Second part of the Exercise 2

S = X-Y;
plot(t, X, t, Y, t, S) 

# Second Exercise, change with previous one
#Y = Y(1: (end-(Z-1))
#plot(t, X, t, Y, t, S)


# Plot first part
#plot(t, X)
#figure;
#plot(t2, Y)