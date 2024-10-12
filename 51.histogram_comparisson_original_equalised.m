% 2. Histogram Comparison of Original and Equalized Image
% In this example, we will not only display the images but also their corresponding histograms 
% to understand how histogram equalization changes pixel intensities.

% Optimal Display: Using a 2x2 subplot grid to display the original image, equalized image, 
% and their corresponding histograms.
% Step 1: Import omage and convert to gray scale
gray_img = rgb2gray(imread("D:\MatLab\Image_Processing\original_Images\veil_nebula.jpg"));

% Step 2: Apply histogram equalisation
eq_img = histeq(gray_img);

% Step 3: Dispaly Images and their histogram
figure;
subplot(2,2,1); 
imshow(gray_img); 
title('Original Image');

subplot(2,2,2); 
imshow(eq_img); 
title('Equalised Image');

subplot(2,2,3); 
imhist(gray_img); 
title(' Histogram Original Image');

subplot(2,2,4); 
imhist(eq_img); 
title('Histogram Equalised Image');