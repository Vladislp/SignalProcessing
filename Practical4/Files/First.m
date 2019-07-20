pkg load image;

# Читать файл... в самой домашке лучше не использовать опоп. Использовать 16 бит
[y, Fs] = audioread('out_1.wav');
# Используем на прямую stft ( Делаем рисунок ) на этот звуковой файл
w = stft(y);
# Показываем рисунок
#figure;
# Конвертируем изображение, а то (126 на 6427) не много плохо.
#imshow(imresize(real(w),[600, 1400]))
# Читаем рисунок нащ
im = imread('pog.png');
# Делаем изображение grayscale, что бы было без проблем инвентированием
#im = rgb2gray(im);
# Делаем рисайз изображение, так как там и так уже double в самом изображении
# а если будет инт, то будет проблемы
im =(imresize(im,size(w))) * 5;
# Ставить рисунок на какое то место
imbase = zeros(size(w));
im = imresize(im,[50,50]) * 5;
imbase(50:99,500:549) = im;
im = imbase;
# Сверху тоже самое
# Показываем рисунок
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
# Пишем файл новый
#audiowrite('out_1_ISTFT.wav', out, Fs);



#[y, Fs] = audioread('out_1_ISTFT.wav')
#Converting to stft
#stft([0,0,1,1])