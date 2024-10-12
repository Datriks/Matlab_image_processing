% 1. Basic Histogram Equalization with histeq
% In this example, we will apply basic histogram equalization to enhance the contrast of an image. 
% The goal is to make the image's histogram more uniform.
% Optimal Display: Using tiledlayout to compare the original and the equalized image side by side.
% Step 1 Import the image and convert it to grayscale
gray_img = rgb2gray(imread("D:\MatLab\Image_Processing\original_Images\veil_nebula.jpg"));

% Step 2: Apply Histogram Equalization
eq_img = histeq(gray_img);

% Step 3: Display original and equalized image using tiled layout
figure;
t = tiledlayout(1, 2, 'TileSpacing', 'compact', 'Padding', 'compact');  % 1 row, 2 columns

nexttile;
imshow(gray_img); title('Original Image Grayscale');

nexttile;
imshow(eq_img); title('Histogram Equalised Image');

% Key Learning:
% tiledlayout is ideal when comparing two related images side by side without too much padding
% or gray areas.
