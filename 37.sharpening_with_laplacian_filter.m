% Step 1: Read the image
img = imread("D:\MatLab\Image_Processing\original_Images\buble_nebula.jpg");

% Sharpen the image using Laplacian Filter
sharp_img = imsharpen(img);

% Display both images side by side
figure;

subplot(1,2,1);
imshow(img);
title('Original Image');
axis on;

subplot(1,2,2);
imshow(img);
title('Sharpened with Laplacian Method Image');
axis on;

truesize([800, 800]);

% Remember that the Laplacian filter enhances edges, but it can also amplify noise. 
% Depending on your specific use case, you might want to combine it with other techniques 
% (such as noise reduction) for better results.