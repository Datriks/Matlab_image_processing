% Load original image and convert to gray
img = rgb2gray(imread("D:\MatLab\Image_Processing\original_Images\antennae_galaxies.jpg"));

% Apply Canny Edge Detection
canny_edge = edge(img, 'canny');


% Step 3: Display original and Canny edge-detected images
figure;
subplot(1, 2, 1);
imshow(img); 
title('Original Grayscale Image');

subplot(1, 2, 2);
imshow(canny_edge); 
title('Canny Edge Detection');

truesize([800, 800]);