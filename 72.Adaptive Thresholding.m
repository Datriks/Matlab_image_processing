% Example 3: Adaptive Thresholding
% Adaptive thresholding computes a threshold for each pixel based on local regions.

% Step 1: Read the grayscale image
img = rgb2gray(imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg'));

% Step 2: Apply adaptative Thresholding
adaptiveBinaryImage = imbinarize(img, 'adaptave', 'ForegroundPolarity', 'dark');

% Step 3: Display original and adaptive binarizeed images
imshowpair(img, adaptiveBinaryImage, 'montage');
title('Adaptive Thresholding');

% Key Points:
% Used imbinarize with the 'adaptive' method.
% Demonstrated local thresholding.