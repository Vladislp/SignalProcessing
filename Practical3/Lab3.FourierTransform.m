# Don't have to use convolution

[y, Fs] = audioread('opop.wav');

#ft = fft(y) # Fourier domain
#plot(y)
#plot(real(ft))
######################
# ������ �������� ( ����� ������� )
# ��������� ����� �� ������, ��� �� ������ ���
#[y, Fs] = audioread('opop.wav');
#ft = fft(y);
#ft = ft(1:(length(ft)/2)) #NB! �������� �������������
#T = 1:length(ft);
freq_range = (1-abs(linspace(-1,1,length(ft))))*Fs/2
#plot(freq_range, ft)# � ��� ������ freq �� x ����������
#semilogx(freq_range, real(ft))# ������ ��� �������������.

# ��� ��� ��������� ������, ���� ������ ��� ���� ��� �� �������� ���.
# ���� �������� Freq Domain �� ������ Domain, �� ������� ������� �� �����

G = ones(size(ft)) #... ����� �� ��� � Fourier Transform ... ���� ������ � �������.
G(abs(freq_range)<500) = 0; #... every frequensi that is smaller then 100 hertz, change them to zero. ��� ������ ��������, ��� ������ ��������� �������.

#ft = ft .* G;
#time_domain = ifft(ft)
#plot(freq_range, real(time_domain))

figure;# original signal , and in the end we cut off low freq stuff.
semilogx(freq_range, G) #... G = filter

y = ifft(ft);
audiowrite('out_3.wav', y, Fs);
