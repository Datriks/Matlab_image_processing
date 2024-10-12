% 4. Overlaying Histograms on Equalized Image
% In this case, we overlay the histograms directly on the images to see how pixel intensities 
% change visually.

% Optimal Display: Using transparency (AlphaData) to overlay the histogram on top of the 
% equalized image.

% Step 1: Convert to grayscale
gray_image = rgb2gray(imread('D:\MatLab\Image_Processing\original_Images\westerlund.jpg'));

% Step 2: Create equalised Image
eq_img = histeq(gray_image);

% Step 3: display with histogram overlay
figure;

subplot(1,2,1);
imshow(gray_image);
title('Original image);
hold on;
histogram(gray_image(:), 'EdgeColor', 'none', 'FaceColor', 'r', 'FaceAlpha', 0.50);%Overlay histogram

subplot(1,2,2);
imshow(gray_image);
title('Equalised Image');
hold on;
histogram(eq_img(:), 'EdgeColor','none', 'FaceColor', 'r', 'FaceAlpha', 0.5);
hold off;