% Import the image to be improved
img = imread("D:\MatLab\Image_Processing\original_Images\buble_nebula.jpg");

% resize the image to 800 by 800
% img_resized = imresize(img, [800, 800]);

% Apply unsharp masking
sharpend_img = imsharpen(img, 'Radius', 2, 'Amount', 1.5);

% Display original and sharpened image
figure;
subplot(1,2,1);
imshow(img);
title('Original Image');
axis on;

subplot(1,2,2);
imshow(sharpend_img);
title('Sharpened Image');
axis on;

truesize([800, 800]); % Set the size of the displayed images to 800x800 pixels