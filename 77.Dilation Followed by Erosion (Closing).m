% Example 3: Dilation Followed by Erosion (Closing)
% In this example, we use closing, which is a dilation followed by erosion, to close small gaps in the image.

% Step1: Read and Imbinarize the grayscale image
img = rgb2gray(imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg');
binaryImg = imbinarize(img);

% Step 2: Create the structuring element
se = strel('disk', 5);

% Step 3: Apply closing (dilation followed by erosion)
closedImg = imclose(binaryImg, se);

% Step 4: Display original and closed images
figure;
imshowpair(binaryImg, closedImg, 'montage');
title('Original vs Closed Image');

% Key Points:
% Demonstrated the combined effect of dilation and erosion using imclose.
% Useful for filling small holes and gaps in objects.
