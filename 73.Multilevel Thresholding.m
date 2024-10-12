% Example 4: Multi-level Thresholding
% In this example, we will binarize the image using multiple threshold values.
% Step 1: Read the grayscale image
img = rgb2gray(imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg'));

% Step 2: Apply multi-level thresholding using 2 thresholds
multiThreshold = multithresh(img, 2); 5 get 2 thresholds
quantizedImage = imquantize(img, multiThreshold); % Segment Image into levels

% Step 3: Convert multi-levels into binary images
binaryImage1 = img > multiThreshold(1);
binaryImage2 = img > multiThreshold(2);

% Step 4: Display the multi-level and binary images
figure;
subplot(1, 3, 1); imshow(quantizedImg, []); title('Multi-Level Quantized Image');
subplot(1, 3, 2); imshow(binaryImage1); title(['Binary Image 1 (Threshold = ' num2str(multiThresholds(1)) ')']);
subplot(1, 3, 3); imshow(binaryImage2); title(['Binary Image 2 (Threshold = ' num2str(multiThresholds(2)) ')']);

% Key Points:
% Introduced multi-level thresholding using multithresh.
% Converted the quantized image into separate binary images.
