% Read the original image
img = imread("D:\MatLab\Image_Processing\original_Images\buble_nebula.jpg");

% Apply Gaussian Filter
% % The second parameter is the sigma value
smooth_img = imgaussfilt(img, 2);

%Create a figure with larger dimensions and display the images
%  % [x, y, width, height] - Set to desired size
figure('Position', [100, 100, 1400, 700]);

% Step 3: Display original and smoothed images
subplot(1,2,1); 
imshow(img, 'XData', [0, 800], 'YData', [0,800]); % Adjust the size (800x800 pixels in this case)
title('Original Image');
axis on; % Turn on the axis so you can see the scale

% Remove extra space around the image
% Ensures that the image fills the subplot area
axis tight;

subplot(1,2,2); 
imshow(smooth_img, 'XData', [0, 800], 'YData', [0, 800]); 
title('Gaussian Filter Image');
axis on; % Turn on the axis so you can see the scale

% Key point: The second parameter in imgaussfilt controls the level of 
% smoothing (higher values = more blur).
