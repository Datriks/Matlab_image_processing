% Resizing with Anti-aliasing
% For better quality when reducing the size of an image, anti-aliasing can be applied. 
% It helps avoid aliasing artifacts.
original_image = imread('pillars.jpg');

% Resize with anti-aliasing
resized_anti_alias = imresize(original_image, 0.2, 'Antialiasing', true);

% Resize without anti-aliasing
resized_no_alias = imresize(original_image, 0.2, 'Antialiasing', false); 

figure;
subplot(1,2,1); imshow(resized_anti_alias); title('Resized with Anti-aliasing');
subplot(1,2,2); imshow(resized_no_alias); title('Resized without Anti-aliasing');
% Summary of Key Points
% imresize() can scale images by a factor or to specific dimensions.
% You can maintain the aspect ratio or use different interpolation methods for different quality results.
% Anti-aliasing helps reduce artifacts when shrinking images.

