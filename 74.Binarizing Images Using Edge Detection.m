% Example 5: Binarizing Images Using Edge Detection
% This example combines edge detection with binarization to isolate object boundaries.

% Step 1: Read the grayscale image
img = rgb2gray(imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg'));

% Step 2: Apply edge dettection (Canny)
edges = edge(img, 'canny');

% Step 3: Use the detected edges to binarize the image
binaryImage = imbinarize(edges);

% Step 4: Display the original and edge-detected binarized images
figure;
imshowpair(img, binaryImage, 'montage');
title('Edge Detection Binarization using Canny Method');

% Key Points:
% Combined edge detection (edge) with binarization.