% Step 1: Read the image
I5 = imread("D:\MatLab\Image_Processing\original_Images\star_cluster.jpg");

% Step 2: Separate the color channels
R5 = I5(:,:,1);  % Red channel
G5 = I5(:,:,2);  % Green channel
B5 = I5(:,:,3);  % Blue channel

% Step 3: Adjust contrast on each channel
R5_enhanced = imadjust(R5);
G5_enhanced = imadjust(G5);
B5_enhanced = imadjust(B5);

% Step 4: recombine the enhanced channels into one image
I5_enhanced = cat(3, R5_enhanced, G5_enhanced, B5_enhanced);

% Step 5: Display the original and enhanced images
imshowpair(I5, I5_enhanced, 'montage');
title("Original vs Enhanced Image");

% Learning Points:
% Enhancing individual color channels using imadjust.
% Combining the enhanced channels to create a better version of the image.