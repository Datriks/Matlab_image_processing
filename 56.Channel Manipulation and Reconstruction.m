% Example 2: Channel Manipulation and Reconstruction
% Here, we separate the channels, modify the intensity of the red channel, 
% and reconstruct the image using the modified red channel.

5 % Step 1: Read the image
I2 = imread('D:\MatLab\Image_Processing\original_Images\westerlund.jpg');

% Step 2: Separate the color channels
R2 = I2(:,:,1); % red Channel
G2 = I2(:,:,2); % green channel
B2 = I2(:,:,3); % blue channel

% Step 3; Increase the intensity of the red Channel
R2_mod = R2 + 50; % Add a constant to increase intensity

% Step 4: Reconstruct the image with the modified red Channel
I2_mod = cat(3, R2_mod, G2, B2);

% Step 5: Display the original and modified images
figure;

imshowpair(I2, I2_mod, 'montage');
title('Original Image vs Modified Red Channel Image');
