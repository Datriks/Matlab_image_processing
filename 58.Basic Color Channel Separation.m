% Example 1: Basic Color Channel Separation
% % Step 1: Read the image
I1 = imread('D:\MatLab\Image_Processing\original_Images\westerlund.jpg');

% Step 2: Separate the collor channels
R = I1(:,:,1); % Red Channel
G = I1(:,:,2); % Green Channel
B = I1(:,:,3); % Blue Channel

% Step the original image and individual color channels
figure;

subplot(2,2,1); Imshow(I1); title('Original Image');
subplot(2,2,2); Imshow(R); title('Red Channel');
subplot(2,2,3); Imshow(G); title('Green Channel');
subplot(2,2,4); Imshow(B); title('Blue Channel');

% Learning Points:

% Understanding how to split RGB images into their respective color channels.
% Using imshow and subplot to display images side by side.