pkg load image;

# ������ ����... � ����� ������� ����� �� ������������ ����. ������������ 16 ���
[y, Fs] = audioread('out_1.wav');
# ���������� �� ������ stft ( ������ ������� ) �� ���� �������� ����
w = stft(y);
# ���������� �������
#figure;
# ������������ �����������, � �� (126 �� 6427) �� ����� �����.
#imshow(imresize(real(w),[600, 1400]))
# ������ ������� ���
im = imread('pog.png');
# ������ ����������� grayscale, ��� �� ���� ��� ������� ���������������
#im = rgb2gray(im);
# ������ ������ �����������, ��� ��� ��� � ��� ��� double � ����� �����������
# � ���� ����� ���, �� ����� ��������
im =(imresize(im,size(w))) * 5;
# ������� ������� �� ����� �� �����
imbase = zeros(size(w));
im = imresize(im,[50,50]) * 5;
imbase(50:99,500:549) = im;
im = imbase;
# ������ ���� �����
# ���������� �������
#figure;
#imshow(imresize(im,[600, 1400]))

#wr = real(w) + im; # Real part
#wi = imag(w) + im; # Imag part
#w = complex(wr,wi);
#figure;
#imshow(imresize(real(w),[600, 1400]))

out = istft(w);
figure;
imshow(imresize(real(out),[600, 1400]))
# ����� ���� �����
#audiowrite('out_1_ISTFT.wav', out, Fs);



#[y, Fs] = audioread('out_1_ISTFT.wav')
#Converting to stft
#stft([0,0,1,1])