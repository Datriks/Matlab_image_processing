% Example 5: Morphological Gradient
% The morphological gradient highlights the boundaries of objects by subtracting the eroded image from the dilated image.

% Step 1: Read and binarize the grayscale image
img = rgb2gray(imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg'));
binaryImg = imbinarize(img);

% Step 2: Define the structuring element
se = strel('disk', 5);

% Step 3: Compute the gradient (difference between dilation and erosion)
dilatedImg = imdilate(binaryImg, se);
erodeImg = imerode(binaryImg, se);
gradientImg = dilatedImg - erodeImg;

% Step 4: Display the original image and gradient image
figure;
imshowpair(binaryImg, gradientImg, 'montage');
title('Original vs Morphological Gradient');

% Key Points:
% Showed how to extract object boundaries using morphological gradient operations.
