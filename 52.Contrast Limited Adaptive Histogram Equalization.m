% 3. CLAHE (Contrast Limited Adaptive Histogram Equalization)
% This technique enhances local contrast in an image, which is useful when global 
% histogram equalization does not provide sufficient detail.

% Optimal Display: Using a vertical (3x1) subplot to highlight the differences between the 
% original image, histeq, and CLAHE.

% Step 1: Load image Convert to grayscale
gray_img = rgb2gray(imread("image.jpg"));

% Step 2: Apply global histogram equalisation
eq_img = histeq(gray_img);

%Step 3 : Apply CLAHE
clahe_img = adapthisteq(gray_img, 'ClipLimit', 0.02);

% Step 4: Display Original, equalised and CLAHE images
figure;

subplot(3,1,1);
imshow(gray_img0;
title('Original Image');

subplot(3, 1, 2);
imshow(eq_img); 
title('Global Histogram Equalization');

subplot(3, 1, 3);
imshow(clahe_img); 
title('CLAHE - Local Histogram Equalization');

% Key Learning:
% A 3x1 vertical layout is optimal for showing the progression from the original image to 
% globally equalized and locally enhanced results.