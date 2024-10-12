% 6. Applying Histogram Equalization to Color Images
% In this final example, we apply histogram equalization to the color image's individual channels (RGB) and then combine them back to form a color-enhanced image.

% Optimal Display: A simple 2x2 subplot showing the original color image, the equalized color image, and the individual channel histograms.

% Step 1: Read the color image
color_image = imread('D:\MatLab\Image_Processing\original_Images\westerlund.jpg');

% Step 2: Apply histogram equalisation to each channel (R, G, B)
r_channel = color_img(:,:,1);
g_channel = color_img(:,:,2);
b_channel = color_img(:,:,3);

% Step 3 Equalise each channel individually
r_eq = histeq(r_channel);
g_eq = histeq(g_channel);
b_eq = histeq(b_channel;

% Step 4: Recombine the equalised channel
equalised_color_image = cat(3, r_eq, g_eq, b_eq);

% Step 5: Display the original and equalized color images with histograms
figure;
subplot(2, 2, 1);
imshow(color_image); 
title('Original Color Image');

subplot(2, 2, 2);
imshow(equalized_color_image); 
title('Equalized Color Image');

subplot(2, 2, 3);
imhist(color_image(:,:,1)); 
title('Histogram of Original Red Channel');

subplot(2, 2, 4);
imhist(equalized_color_image(:,:,1)); 
title('Histogram of Equalized Red Channel');

% Key Learning:
% A 2x2 layout allows for a direct comparison between the original and equalized color images, as well as their corresponding histograms.