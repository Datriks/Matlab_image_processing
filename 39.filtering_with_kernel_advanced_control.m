% Load original image
img = imread("D:\MatLab\Image_Processing\original_Images\buble_nebula.jpg");

% Create a custom sharpening kernel - laplacian kernel
kernel = [-1,-1,-1,-1,9,-1,-1,-1,-1];

% Apply the kernel using convolution
sharpened_image_custom = imfilter(img, kernel);

% Dispaly both images
figure;
subplot(1,2,1);
imshow(img);
title('Original Image');
axis on;

subplot(1,2,2);
imshow(sharpened_image_custom);
title('Sharpened Image');
axis on;

truesize([800, 800]);