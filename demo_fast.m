
%warning('off','all');
% this is MAIN, it runs all other functions
tic;
image = double(imread('huh.jpg'))/255;

image = imresize(image, 0.8);

result = dehaze_fast(image, 0.95, 5);

%for synchronization purpose we've used tic toc

toc;

figure, imshow(image)
figure, imshow(result)

imwrite(result,'huh_recovered.jpg')

warning('on','all');