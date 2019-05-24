Fs=1000;

Ts=1/Fs;

t=0:Ts:1;

ex1_b = sin(2.*pi*20*t);
stem(t, ex1_b)
