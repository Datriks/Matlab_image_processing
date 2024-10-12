% Example 2: Otsu's Method for Automatic Thresholding
% Otsu's method automatically determines the optimal threshold value for binarization based on the image histogram.
% Step 1: Read the gray scal eimage
% Step 1: Read the grayscale image
img = rgb2gray(imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg'));

% Step 2: Apply Otsu's method for automatic Thresholding
otsuthreshold = graythresh(img);
binaryImage = imbinarize(img, otsuthreshold);

% Step 3: Display the images
figure;
imshowpair(img, binaryImage, montage);
title('Otsu Threshold = ' num2str(otsuThreshold)]);

% Key Points:
% Showcased automatic thresholding using Otsu's method with graythresh.
% Compared original and binarized images using imshowpair.