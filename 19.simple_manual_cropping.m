% Load the image
img = imread("D:\MatLab\Image_Processing\original_Images\space_5.jpg");

% display image
imshow(img);

% Manually crop by selecting a region of interest with the mouse
crop_img = imcrop(img);

% display cropped image
figure, imshow(crop_img);
title('Cropped Image (Manual Selection)');