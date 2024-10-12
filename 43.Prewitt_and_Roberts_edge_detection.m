% Example 1: Simple Edge Detection using Prewitt and Roberts Edge Detection Method

% MATLAB's tiledlayout function is a more flexible way to arrange 
% multiple plots compared to subplot. 
%You can control the padding between tiles, the size of the layout grid, and other properties.

% Step 1: Convert to grayscale
gray_image = rgb2gray(imread('D:\MatLab\Image_Processing\original_Images\westerlund.jpg'));

% Apply Prewitt and roberts Edge Detection
prewit_edge = edge(gray_image, 'prewitt');
roberts_edge = edge(gray_image, 'roberts');

% Step 3: Display original, Prewitt, and Roberts edge-detected images using tiledlayout.
figure;
t = tiledlayout(1, 3, 'Tilespacing', 'compact', 'Padding', 'compact');  % 1 row, 3 columns

% Original Image display
nexttile;
imshow(gray_image);
title('Original Grayscale Image');

% Prewitt Edge Detection
nexttile;
imshow(prewit_edge);
title('Prewitt Edge Detection')

% Roberts Edge Detection
nexttile;
imshow(roberts_edge);
title('Roberts Edge Detection');

% Key Learning:
% The tiledlayout gives you more control over padding and spacing, avoiding large gray areas between images.
% Both Prewitt and Roberts are basic edge detectors, just like Sobel, with different kernels for calculating gradients.
% Prewitt uses slightly different weights than Sobel but performs similarly.
% Roberts uses a diagonal gradient approximation, which gives more emphasis to diagonal edges.