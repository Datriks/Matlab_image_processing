% Load the image
img = imread("D:\MatLab\Image_Processing\original_Images\westerlund.jpg");

% Create a binary circular mask
mask = false(size(img, 1), size(img, 2));

[columnsInImage, rowsInImage] = meshgrid(1:size(mask, 2), 1:size(mask, 1));

centerX = 600;
centerY = 200;
radius = 150; % Set an appropriate radius value

circlePixels = (rowsInImage - centerY).^2 + (columnsInImage - centerX).^2 <= radius.^2;
mask(circlePixels) = true;

% Apply the mask
crop_img = bsxfun(@times, img, cast(mask, 'like', img));

% Display the masked and cropped image
imshow(crop_img);
title('Cropped Image (Masked Region)');
