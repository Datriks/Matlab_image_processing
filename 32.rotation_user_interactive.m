% Read the image
img = imread("D:\MatLab\Image_Processing\original_Images\westerlund.jpg");

% Prompt user for rotation angle
rotation_angle = input('Enter to rotation angle (degrees): ');

% Rotate the image by the user defined angle
rot_image = imrotate(img, rotation_angle);

% Display the original image and rotated image
subplot(1,2,1); imshow(img); title('Original Image');
subplot(1,2,2); imshow(rot_image); title('Rotated image');