Example 1 Resizing to smaller iImage
% Import Image
original_img = imread("D:\MatLab\Image_Processing\webb_2.jpg");

%Resizing an image to 0.5 its original size
resized_img = imresize(original_img, 0.5);

% Display imges side by side
imshowpair(original_img,resized_img, 'montage');
title('Original Image vs Resized Image (50%)');