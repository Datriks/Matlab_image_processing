% Step 1: Read the image
original_image = imread('D:\MatLab\Image_Processing\original_Images\westerlund.jpg');

% Step 2: Rotate the image by 30 degrees using bilinear interpolation
rotated_image = imrotate(original_image, 30, 'bilinear', 'loose');

% Step 3: Create a white background of the same size as the rotated image
[rows, cols, ~] = size(rotated_image);
white_background = 255 * ones(rows, cols, 3, 'uint8'); % Create white background (RGB: [255, 255, 255])

% Step 4: Find the non-black pixels in the rotated image and overlay onto the white background
mask = rotated_image > 0; % Create a mask of non-black pixels
white_background(mask) = rotated_image(mask); % Overlay rotated image on white background

% Step 5: Display the original and rotated images
figure;
subplot(1, 2, 1); imshow(original_image); title('Original Image');
subplot(1, 2, 2); imshow(white_background); title('Rotated with White Background');
