% Read the image
img = imread("D:\MatLab\Image_Processing\original_Images\westerlund.jpg");

% Rotate the image by 45 degrees
rot_img = imrotate(img, -90);

% Display the original and rotated image
subplot(1,2,1); imshow(img); title('Original Image');
subplot(1,2,2); imshow(rot_img); title('Rotated Image');