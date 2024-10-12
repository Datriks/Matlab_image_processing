% import image
img = imread("D:\MatLab\Image_Processing\original_Images\buble_nebula.jpg");


% Apply median filter
med_filt = medfilt2(rgb2gray(img), [3 3]);

% Display original and filtered image
figure;

subplot(1,2,1);
imshow(img, 'XData', [0,800], 'YData', [0, 800]);
title('Original Image');
axis on;

subplot(1,2,2);
imshow(med_filt, 'XData', [0,800], 'YData', [0, 800]);
title('Median Filter for Noise  Removal Image');
axis on;

truesize([800 800]); % Set the size of the displayed images to 800x800 pixels

% Key point: This is useful for removing isolated noise while preserving edges.