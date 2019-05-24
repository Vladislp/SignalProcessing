[y, Fs] = audioread('noise_1.wav');
#[y, Fs] = audioread('opop.wav'); for the test
figure;
plot(y(50:100))

h = [1,1]/2;

[t, out] = ImpulseSignal(y,h);
figure;
plot(out(100:600))

audiowrite('out_1.wav', out, Fs)