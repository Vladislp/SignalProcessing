% function [ t_step, impulse_response ] = ImpulseSignal( input, impulse )

Z = 60

t = 1:500;

X = 0.3*sin(t*pi/4) + sin(t*pi/50);
H = ones(1,Z) / Z;

[t, Y] = ImpulseSignal( X, H );

stem(t, Y)