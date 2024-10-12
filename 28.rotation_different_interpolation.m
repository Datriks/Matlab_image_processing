% Read the original image
img = imread("D:\MatLab\Image_Processing\original_Images\westerlund.jpg");

% Rotate the image using different interpolation methods
rot_near = imrotate(img, 30, 'nearest');
rot_bilinear = imrotate(img, 30, 'bilinear');
rot_bicubic = imrotate(img, 30, 'bicubic');


% Step 3: Display all rotated images
figure;
subplot(1, 3, 1); imshow(rot_near); title('Nearest Neighbor');
subplot(1, 3, 2); imshow(rot_bilinear); title('Bilinear Interpolation');
subplot(1, 3, 3); imshow(rot_bicubic); title('Bicubic Interpolation');

%Key Points:
%Nearest Neighbor: Fastest but can produce blocky images.
%Bilinear: Provides smoother results than nearest neighbor.
%Bicubic: Produces the smoothest results but is slower.
