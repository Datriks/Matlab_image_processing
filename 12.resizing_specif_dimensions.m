% Import Image:
orig_img = imread('galactic.jpg');

% Resizing to Specific Dimensions
resized_img = imresize(orig_img, [300, 300]);

imshowpair(orig_img, resized_img, 'montage');
tittle('Original Image vs Resized Image(300x300 pixels');