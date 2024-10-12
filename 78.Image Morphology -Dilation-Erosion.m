% Image Morphology (Dilation/Erosion)
% Morphological operations like dilation and erosion are essential in image processing, 
% particularly for cleaning up or enhancing binary images. They can be used to fill gaps, 
% remove noise, or alter the structure of objects in a binary image.

% Example 1: Basic Dilation
% In this example, we'll start by applying a simple dilation operation on a binary image.
% Step 1: Read and binarize the image
img = rgb2gray(imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg');
binaryimg = imbinarize(img);

% Step 2: Define the structuring element
se = strel('disk', 5);

% Step 3: Apply dilation
dilatedImg = imdilate(binaryimg, se);

% Step 4: Display Original and dilated Image
figure;
imshowpair(binaryimg, dilatedImg, 'montage');
title('Original vs Dilated Image');

% Key Points:
% Introduced the imdilate function with a circular structuring element.
% Visualized the effect of dilation on the binary image.
