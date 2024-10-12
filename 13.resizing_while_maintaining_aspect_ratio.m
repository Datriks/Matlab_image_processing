% Resizing While Maintaining Aspect Ratio
% Here, we resize the image to a fixed height, and MATLAB automatically 
% adjusts the width to maintain the aspect ratio.
% import Image

img = imread('pillars.jpg');

% Resize height to 300, width adjusted to keep aspect ratio
res_img = imresize(img, [NaN,300]);

imshowpair(img, res_img, 'montage');
title('Original Image vs Resized Image (Maintaining Aspect Ratio');