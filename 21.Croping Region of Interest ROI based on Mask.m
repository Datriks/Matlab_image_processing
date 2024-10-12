% Croping Region of Interest ROI based on Mask
% In some cases, you might want to crop a specific region based on a mask or binary image.
img = imread(d:\image);

%Create binary mask(example: circla mask)
mask = false(size(img, 1), size(img,2));

[columnsInImage, rowsInImage] = meshgrid(1:size(mask, 2), 1:size(mask, 1));

centerX = 200; 
centerY = 100;
radius = 100;

circePixels = (rowsInImage - centerY).^2 + (columnsInImage - centerX).^2 <= radius.^2;
mask(circlePixels) = true;

% Apply the mask
crop_img = bsxfun(@times, img, cast(mask, 'like', img));

%Display yjthe masked and cropped image
imshow(crop_img);
title('Cropped Image (Masked Region)');

%
Break down this script step by step:

1. **Read the image:**
   ```matlab
   original_image = imread('D:/space.jpg'); % Read the image
   ```
   This line reads the image file located at 'D:/space.jpg' and stores it in the variable `original_image`.

2. **Create a binary mask (example: circle mask):**
   ```matlab
   mask = false(size(original_image, 1), size(original_image, 2));
   ```
   This line initializes a binary mask of the same size as the image, filled with `false` values (logical 0).

   ```matlab
   [columnsInImage, rowsInImage] = meshgrid(1:size(mask,2), 1:size(mask,1));
   ```
   `meshgrid` creates two matrices: `columnsInImage` and `rowsInImage`, which contain the column and row indices of the mask, respectively.

   ```matlab
   centerX = 200; centerY = 150; radius = 100;
   ```
   These lines define the center coordinates (`centerX`, `centerY`) and the radius of the circle.

   ```matlab
   circlePixels = (rowsInImage - centerY).^2 + (columnsInImage - centerX).^2 <= radius.^2;
   ```
   This line creates a logical array `circlePixels` where each element is `true` if the corresponding pixel is within the defined circle, and `false` otherwise.

   ```matlab
   mask(circlePixels) = true;
   ```
   This line updates the `mask` so that the pixels within the circle are set to `true`.

3. **Apply the mask:**
   ```matlab
   cropped_image = bsxfun(@times, original_image, cast(mask, 'like', original_image));
   ```
   `bsxfun` applies the element-wise multiplication of the `original_image` and the `mask`. `cast(mask, 'like', original_image)` ensures the mask is of the same data type as the image. This effectively keeps the pixels within the circle and sets the rest to zero.

4. **Display the masked and cropped image:**
   ```matlab
   imshow(cropped_image);
   title('Cropped Image (Masked Region)');
   ```
   These lines display the resulting image with the title 'Cropped Image (Masked Region)'.

Feel free to ask if you have any questions or need further clarification on any part of the script!
