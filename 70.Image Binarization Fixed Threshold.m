% Image Binarization (Thresholding)
% Step 1: Read the grayscale image
img = rgb2gray(imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg'));

% Step 2 Appply a fixed threshold to binarize the Image
threshold = 0.5; % Value between one in 0
imb_img = imbinarize(img, threshold);

%Step 3: Display both images side by side
figure:
imshowpair(img, imb_img, 'montage');
title('Gray Image vs Imbinarized Image' = num2str(threshold)]);

% Key Points:
% Introduced the concept of binarization.
% Used the imbinarize function with a fixed threshold.