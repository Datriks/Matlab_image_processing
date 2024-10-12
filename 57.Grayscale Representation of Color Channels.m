% % Example 3: Grayscale Representation of Color Channels
% This example converts each color channel into a grayscale image and compares the intensity distribution of each channel.

% Step 1: Read he image
I3 = imread('D:\MatLab\Image_Processing\original_Images\westerlund.jpg');

% Step 2: Separate the color Channels
R3 = I3(:,:,1); % Red channel
G3 = I3(:,:,2); % Green Channel
B3 = I3(:,:,3); % Blue channel

% Step 3: display the grayscale representation of each channel
figure;
subplot(1,3,1); title('Red Channel Grayscale');
subplot(1,3,2); title('Green Channel Grayscale');
subplot(1,3,3); title('Blue Channel Grayscale');

% Learning Points:

% Visualizing color channel information in grayscale.
% Understanding the intensity contributions of different color channels.