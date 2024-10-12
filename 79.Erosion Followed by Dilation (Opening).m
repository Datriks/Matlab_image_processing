% Example 4: Erosion Followed by Dilation (Opening)
% Opening, which is erosion followed by dilation, is used to remove small noise in the binary image.

% Step 1: Read and binarize the grayscale image
img = rgb2gray(imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg'));
binaryImg = imbinarize(img);

% Step 2: Define the structuring element
se = strel('disk', 5);

% Step 3: Apply opening (erosion followed by dilation)
openedImg = imopen(binaryImg, se);

% Step 4: Display original and opened images
figure;
imshowpair(binaryImg, openedImg, 'montage');
title('Original vs Opened Image');

% Key Points:
% Showed the use of imopen to remove small noise while preserving the structure of larger objects.