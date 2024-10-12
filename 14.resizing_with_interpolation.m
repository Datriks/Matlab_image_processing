% Interpolation Methods for Resizing
%Different interpolation methods can be used for resizing: 'nearest', 'bilinear', and 'bicubic'. 
% In this example, we resize the image using these methods and compare the results.
 img =imread('pillars.jpg');

 % Nearest Neighbour interpolation
 resiz_nearest = imresize(img, 0.3, 'nearest');
 % Bilinear Interpolation
 resiz_bilinear = imresize(img, 0.3, 'bilinear');
 % Bicubic Interpolation
 resiz_bicubic = imresize(img, 0.3, 'bicubic');

 figure;
 subplot(2,2,1); imshow(img); title('Original Image');
 subplot(2,2,2); imshow(resiz_nearest); title('Nearest Interpolation');
 subplot(2,2,3); imshow(resiz_bilinear); title('Bilinear Interpolation');
 subplot(2,2,4); imshow(resiz_bicubic); title('Bicubic Interpolation');
