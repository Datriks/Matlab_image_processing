img = imread("D:\MatLab\Image_Processing\original_Images\westerlund.jpg");

%Rotate image by 45 degrees and crop and preserve the original size
tot_crop = imrotate(img, 45, 'bilinear', 'crop');

% Display original and croped image
subplot(1,2,1); imshow(img); title('Original Image');
subplot(1,2,2); imshow(tot_crop); title('Rotated and Croped Image');