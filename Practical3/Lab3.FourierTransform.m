# Don't have to use convolution

[y, Fs] = audioread('opop.wav');

#ft = fft(y) # Fourier domain
#plot(y)
#plot(real(ft))
######################
# Дальше варианты ( Может задания )
# Применить какой то фильтр, что бы убрать шум
#[y, Fs] = audioread('opop.wav');
#ft = fft(y);
#ft = ft(1:(length(ft)/2)) #NB! Оставить закоменченным
#T = 1:length(ft);
freq_range = (1-abs(linspace(-1,1,length(ft))))*Fs/2
#plot(freq_range, ft)# У нас теперь freq на x координате
#semilogx(freq_range, real(ft))# Делает это логоритмичным.

# Все что находится сверху, было только для того что бы показать все.
# Если поменять Freq Domain на другой Domain, то разници никакой не будет

G = ones(size(ft)) #... такое же как и Fourier Transform ... таже фигура и размеры.
G(abs(freq_range)<500) = 0; #... every frequensi that is smaller then 100 hertz, change them to zero. Чем больше значение, тем больше удаляется сигнала.

#ft = ft .* G;
#time_domain = ifft(ft)
#plot(freq_range, real(time_domain))

figure;# original signal , and in the end we cut off low freq stuff.
semilogx(freq_range, G) #... G = filter

y = ifft(ft);
audiowrite('out_3.wav', y, Fs);
