% Step 1: Read the image
img = imread("D:\MatLab\Image_Processing\original_Images\buble_nebula.jpg");

% Convert to grayscale
gray_img = rgb2gray(img);

% Sharpen the grayscale image using Laplacian Filter
sharp_img = imsharpen(gray_img);

% Apply Wiener filter for noise reduction
denoised_img = wiener2(sharp_img, [5, 5]);

% Display both images side by side
figure;

subplot(1,2,1);
imshow(gray_img);
title('Grayscale Image');
axis on;

subplot(1,2,2);
imshow(denoised_img);
title('Sharpened and Denoised Image');
axis on;

truesize([800, 800]);