% Example 1: Basic Image Blending Using Weighted Sum
% This is the simplest form of image blending, where two images are combined by applying weights to each.

% Step 1: Read two images of the same size
img1 = imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg');
img2 = imread('D:/MatLab/Image_Processing/original_Images/image2.jpg');

% Step 2: Convert both images to double
img1 = im2double(img1);
img2 = im2double(img2);

% Step 3 Apply weighted sum (alpha blending)
alpha = 0.5; % weight for image 1
blended_img = alpha * img1 + (1 - alpha) * img2;

% Display original and blendedfigure;
subplot(1,3,1); imshow(img1); ttitle('Image 1');
subplot(1,3,2); imshow9img2); title('Image2');
subplot(1,3,3); imshow(blended_img); title('Blended Image (Alpha Blending)');

% Key Learning Point:
% Understand basic weighted blending.
% How to assign weights (alpha) to control the contribution of each image.