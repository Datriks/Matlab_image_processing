% Example 2: Basic Erosion
%This example demonstrates erosion, which shrinks objects in a binary image.

% Step 1: Load and binarize the image
img = rgb2gray(imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg');
binaryImg = imbinarize(img);

% Step 2: define the structuring element
se = strel('disk', 5);

% Step 3: Apply Erosion
erodeImg = imerode(binaryImg, se);

% Step 4: Display original and eroded images
figure;
imshowpair(binaryImg, erodedImg, 'montage');
title('Original vs Eroded Image');

% Key Points:
% Showed how to shrink objects with imerode.
% Compared the original image to the eroded image side by side.