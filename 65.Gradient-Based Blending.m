% In this example, we introduce a gradient blending technique where the blending transitions smoothly between two images.
% Step 1: Read the images
img1 = imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg');
img2 = imread('D:/MatLab/Image_Processing/original_Images/image2.jpg');

% Step 2: resize the secongd image to match the first
img2 = imresize(img2, size(img1(:,:,1)));
% imresize resizes img2 to match the dimensions of img1.
% size(img1(:,:,1)) gets the size of the first channel (grayscale) of img1, ensuring img2 has the same width and height.

% Step 3: Create a blending mask with a gradient
[row, cols,~] = size(img1);
mask = repmat(linspace(0,1,cols), [rows, 1]);
% [row, cols,~] = size(img1) extracts the number of rows and columns from img1.
% linspace(0,1,cols) creates a vector with cols elements, linearly spaced between 0 and 1.
% repmat(..., [rows, 1]) replicates this vector rows times to create a gradient mask that transitions horizontally from 0 to 1.

% Step 4: convert to double and blend using the mask
img1 = im2double(img1);
img2 = im2double(img2);
blended_img = img1 .* (1 - mask) + img2 .* mask;
% im2double converts the images to double precision, which is necessary for accurate arithmetic operations.
% blended_img = img1 .* (1-mask) + img2 .* mask blends the two images using the mask. The mask determines the contribution of each image at every pixel, transitioning smoothly from img1 to img2.

% Step 5: Display the blended image
figure;
imshow(blended_img);
title('Gradient - Based Blended Image');
%figure creates a new figure window.
% imshow(blended_img) displays the blended image.
% title('Gradient - Based Blended Image') adds a title to the figure.
%This script effectively blends two images with a smooth gradient transition from one to the other.
