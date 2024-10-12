% Example 2: Blending Using Different Weights for Each Channel
% Here, we will assign different blending weights for each RGB channel.

% Step 1: Read two images of the same size
img1 = imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg');
img2 = imread('D:/MatLab/Image_Processing/original_Images/image2.jpg');

% Step 2: Convet to double for masnipulation
img1 = im2double(img1);
img2 = im2double(img2);

% Step 3: Define different blending weights for each Channel
alpha_r = 0.7;
alpha_g = 0.5;
alpha_b = 0.3;

% Step 4: Blend each channel separately
blended_img(:,:,1) = alpha_r * img1(:,:,1) + (1-alpha_r)*img2(:,:,1); % Red Channel
blended_img(:,:,2) = alpha_g * img1(:,:,2) + (1-alpha_g)*img2(:,:,2); % Green Channel
blended_img(:,:,3) = alpha_b * img1(:,:,3) + (1-alpha_b)*img2(:,:,3); % Green Channel

% Step 5: Display the results
figure;
imshow(blended_img); title('Blended Image with Different Channel Weights');

% Key Learning Point:
% Control blending for individual channels (Red, Green, Blue) to achieve more nuanced effects.
