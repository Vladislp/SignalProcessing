[y, Fs] = audioread('noise_2.wav');
#[y, Fs] = audioread('opop.wav'); for the test
figure;
plot(y(100:200))

#h = [1,1]/2;
h = ones(7)/7;

[t, out] = ImpulseSignal(y,h);
figure;
plot(out(100:600))

audiowrite('out_2.wav', out, Fs)

# Filters are working very differently , it will work but not how we would like it