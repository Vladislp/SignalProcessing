% function [ t_step, impulse_response ] = ImpulseSignal( input, impulse )

n = 8

X = sin(n/5)
H = [-1,-2,8,-2,-1]; # Need to change this 
# [ n, i1 ] = ImpulseSignal( 20, 20, 0 );
#Y = Y((Z/2) : (end-)(Z/2)))
[t, Y] = ImpulseSignal( X, H );

stem(t, Y)
#plot(t, X, t, Y)