% Example 5: Edge Detection in Color Images
% In this more advanced example, we’ll perform edge detection on a color image by 
% processing each channel separately (RGB) and then combining the results.

% In this more advanced example, we’ll perform edge detection on a color image by processing each channel separately (RGB) and then combining the results.
img = imread('D:\MatLab\Image_Processing\original_Images\westerlund.jpg');

% Step 2 Apply edge detection on each clor channel
r_channel = edge(img(:, : , 1), 'canny');
g_channel = edge(img(: ,: , 2), 'canny');
b_channel = edge(img(:, :, 3), 'canny');

%% Step 3: Combine the edges from all color channels
combined_edges = r_channel | g_channel | b_channel;

% Step 4: Display original and color edge-detected images
figure;
subplot(1, 2, 1);
imshow(img); title('Original Image');

subplot(1, 2, 2);
imshow(combined_edges); title('Combined Edges (Color Channels)');

% Key Learning:
% This method detects edges in each RGB channel and combines the results.
% While grayscale edge detection is more common, you can work on color channels to detect colored edges.
