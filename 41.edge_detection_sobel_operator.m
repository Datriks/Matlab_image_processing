% Load original image
img = imread("D:\MatLab\Image_Processing\original_Images\lagoon_nebula.jpg");

% convert image to gray scale
gray_img = rgb2gray(img);

% Apply Sobel edge detection
sobel_edge = edge(gray_img, "sobel");

% Display original image and edge-detected images
figure;
subplot(1,2,1);
imshow(img);
title('Original Grayscale Image');

subplot(1, 2, 2);
imshow(sobel_edge); 
title('Sobel Edge Detection');

truesize([800, 800]);