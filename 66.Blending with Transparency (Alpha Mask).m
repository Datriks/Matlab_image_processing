% We will blend images using an alpha mask, allowing control over which part of the image should be more transparent.
% Step 1: Read the images
img1 = imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg');
img2 = imread('D:/MatLab/Image_Processing/original_Images/image2.jpg');

% Step 2: Create a Alpha mask (a circular one for this example)
% Extract the dimensions of the image
[rows, cols, ~] = size(img1);

% Create coordinate grids for the image
[X, Y] = meshgrid(1:cols, 1:rows);

% Calculate the radius for the circular mask
radius = min(rows, cols) / 4;

% Determine the center of the image
centerX = cols / 2;
centerY = rows / 2;

% Create a circular mask
alphaMask = sqrt((X - centerX).^2 + (Y - centerY).^2) <= radius;
% (X - centerX) and (Y - centerY) calculate the distance of each pixel from the center in the x and y directions.
% .^2 squares these distances.
% sqrt(...) computes the Euclidean distance from the center for each pixel.
% <= radius creates a logical mask where pixels within the radius are true (inside the circle) and others are false (outside the circle).
% This script essentially creates a circular mask centered in the image, where the mask is true inside the circle and false outside.

%Step 3: Convert to double for blending
img1 = im2double(img1);
img2 = im2double(img2);

% Step 4: Blend using the alpha mask
blended_img = img1 .* repmat(~alphaMask, [1 1 3]) + img2 .* repmat(alphaMask, [1 1 3]);
% Invert the Mask:
% ~alphaMask flips the mask, making the circle false and the outside true.
% Replicate the Mask for RGB Channels:
% repmat(~alphaMask, [1 1 3]) and repmat(alphaMask, [1 1 3]) extend the masks to cover all three color channels.
% Apply the Masks:
% img1 .* repmat(~alphaMask, [1 1 3]) keeps img1’s pixels outside the circle.
% img2 .* repmat(alphaMask, [1 1 3]) keeps img2’s pixels inside the circle.
% Combine the Images:
% Adding the two masked images blends them, with img1 outside the circle and img2 inside.
% This line blends two images using a circular mask, creating a smooth transition between them

% Step 5: display the result
figure;
imshow(blended_img);
title('Blended Image with Alpha Mask (Circular)');

