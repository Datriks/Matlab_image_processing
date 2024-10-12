% Displaying CDF (cumulative distribution function) of Original and Equalized Image
% In this example, we’ll display the cumulative distribution function (CDF) along with the images to illustrate how equalization redistributes the pixel values.

% Optimal Display: Using a horizontal tiled layout with images on the left and their CDFs on the right.

% Step 1: Convert to grayscale
gray_image = rgb2gray(imread('D:\MatLab\Image_Processing\original_Images\westerlund.jpg'));

% Apply histogram Equalisation
eq_img = histeq(gray_image);

%Calculate and apply CDF cummulative distribution function
figure;
t = tiledlayout(2, 2, 'TileSpacing', 'compact', 'Padding', 'compact'); % 2 rows, 2 columns

nexttile;
imshow(gray_image); 
title('Original Image);

nextile;
imshow(eq_img); 
title('Equalised Image');

nextile;
cdfplot(gray_image(:));
title('CDF of Original Image');

cdfplot(eq_img(:));
title('CDF of Equalised Image');

% Key Learning:
% A 2x2 tiled layout is ideal when comparing both the image and its statistical properties like CDF, side by side.