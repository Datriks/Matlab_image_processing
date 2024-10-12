% Pyramid Blending (Laplacian Pyramids)
% In this more advanced technique, we use pyramids to blend images, creating a more seamless combination by focusing on frequency components.
% Step 1: Import images
img1 = imread('D:/MatLab/Image_Processing/original_Images/westerlund.jpg');
img2 = imread('D:/MatLab/Image_Processing/original_Images/image2.jpg');

% Step 2: Resize the seconfd image
img2 = imresize(img2, size(img1(:, :, 1)));

% Step 3: Create Gaussian pyramids for both images
levels = 5; % specifies the number of levels for the Gaussian pyramid.
gp_img1 = gaussian_pyramid(img1, levels); % creates a Gaussian pyramid for img1 with 5 levels.
gp_img2 = gaussian_pyramid(img2, levels); % creates a Gaussian pyramid for img2 with 5 levels.

% Step 4: Create a Laplacian Pyramid
lp_img1 = laplacian_pyramid(gp_img1);
lp_img2 = laplacian_pyramid(gp_img2);

% step 5 Blend each level of the Pyramid
% Initialize a cell array to store the blended images at different levels
blended_pyramid = cell(1, levels);

% Loop through each level of the pyramid
for l = 1:levels
    % Set the blending ratio (50% for each image)
    alpha = 0.5;
    
    % Blend the two images at the current level using the blending ratio
    % blended_pyramid{l} = alpha * lp_img1{l} + (1 - alpha) * lp_img2{l};
    % This formula combines lp_img1 and lp_img2 with a 50-50 blend ratio
    blended_pyramid{l} = alpha * lp_img1{l} + (1 - alpha) * lp_img2{l};
end

% Step 6: Reconstruct the final blended image
bld_img = reconstruct_from_pyramid(blended_pyramid);

% Step 7: Display the final result
figure;
imshow(blended_img); 
title('Pyramid Blended Image');