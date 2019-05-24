% function [ t_step, impulse_response ] = ImpulseSignal( input, impulse )

X = [1,1,1,1];
H = [1,0,-1];

[t, Y] = ImpulseSignal( X, H );

stem(t, Y)