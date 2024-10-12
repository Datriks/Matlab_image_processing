% Example 2: Cropping with Specified Coordinates
% You can crop an image by specifying the coordinates of the top-left corner and the 
% width and height of the cropping rectangle.
img = imread("D:\MatLab\Image_Processing\original_Images\space_5.jpg");

% Crop with specified [x, y, width, height]
crop_img = imcrop(img, [100,50,100,75]);

% dispaly the original
imshowpair(img, crop_img, 'montage');
title('Original Image vs Cropped Image');