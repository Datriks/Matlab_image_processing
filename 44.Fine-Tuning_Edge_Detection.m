% Example 4: Fine-Tuning Edge Detection Parameters
% In this example, we’ll fine-tune parameters of the Canny edge detection method to improve edge detection.

% Step 1: Convert to grayscale
gray_image = rgb2gray(imread('D:\MatLab\Image_Processing\original_Images\westerlund.jpg'));

% Apply Canny edge detection with fine-tuned Parameters
canny_fine_tuned = edge(gray_image, 'canny', [low_threshold high-threshold]);


% Step 3: Display each image in a separate figure window
figure;
imshow(gray_image);
title('original Grayscale Image');

figure;
imshow(canny_fine_tuned);
title('Canny Fined Tuned Threshold Image');

% Key Learning:
% Each figure will be displayed in a separate window, allowing for full-size viewing of each image.
% Thresholding in the Canny method can significantly change the detection results.
% By adjusting the low_threshold and high_threshold, you can control how sensitive the edge detection is to intensity changes in the image.
