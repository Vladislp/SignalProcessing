% function [ t_step, impulse_response ] = ImpulseSignal( input, impulse )

X = [4,1,2,-5];
H = [-1,2,-1];

[t, Y] = ImpulseSignal( X, H );

stem(t, Y)