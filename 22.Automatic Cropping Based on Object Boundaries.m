% Automatic Cropping Based on Object Boundaries
% This example demonstrates how to crop an image based on the boundaries of an object % (e.g., a bright object in a dark background).
img = imread('d:\image');

%Convert image to gray scaler and threshold
gray_img = rgb2gray(img);
binary_img = imbinarize(gray_image, 'adaptive');

% Find boundaries of the object and crop the bounding box
props = regionprops(binary_image, 'BoundingBox');
crop_img = imcrop(img, props(1).BoundingBox);

% Display the cropped image
imshow(crop_img);
title('Cropped Image (Image Object Boundaries)');

%
Sure, let's break this down into simpler terms:

1. **Read the image:**
   ```matlab
   original_image = imread('D:/space.jpg'); % Read the image
   ```
   This line loads the image file located at 'D:/space.jpg' into the variable `original_image`.

2. **Convert image to grayscale and threshold:**
   ```matlab
   gray_image = rgb2gray(original_image);
   ```
   This converts the color image to a grayscale image, which means it turns the image into shades of gray.

   ```matlab
   binary_image = imbinarize(gray_image, 'adaptive');
   ```
   This converts the grayscale image to a binary image (black and white) using an adaptive thresholding method. In the binary image, the objects of interest are white, and the background is black.

3. **Find boundaries of the object and crop the bounding box:**
   ```matlab
   props = regionprops(binary_image, 'BoundingBox');
   ```
   This line finds the properties of the white objects in the binary image. Specifically, it looks for the bounding box, which is the smallest rectangle that can contain the object.

   ```matlab
   cropped_image = imcrop(original_image, props(1).BoundingBox);
   ```
   This crops the original image to the bounding box of the first detected object. Essentially, it cuts out the part of the image that contains the object.

4. **Display the cropped image:**
   ```matlab
   imshow(cropped_image);
   title('Cropped Image (Automatic Object Boundaries)');
   ```
   These lines display the cropped image with the title 'Cropped Image (Automatic Object Boundaries)'.

In summary, this script reads an image, converts it to grayscale, then to a binary image, finds the object in the image, crops the image to that object, and finally displays the cropped image. 


%