% Converting color space
original_image = imread("d:\space.jpg");

gray_image = rgb2gray(original_image);

subplot(2.1.1); imshow(original_image);
title('Original Image');
subplot(2,1,2); imshow(gray_image);
title('Grayscale Image');

% Example 2

img1 = imread('D:\image1.jpg');
img2 = imread('D:\image2.jpg');

gray_img1 = rgb2gray(img1);
gray_img2 = rgb2gray(img2);

%Display both images
figure;
subplot(2,2,1); imshow(img1); title('Original Image 1');
subplot(2,2,2); imshow(gray_img1); title('Gray Image 1');
subplot(2,2,3); imshow(img2); title('Original Image 2');
subplot(2,2,4); imshow(gray_img1); title('Gray Image 1');


% Example 3
% Processing a batch of images

image_files = dir('d:\images\*.jpg'); %get all files from the folder
num_images = length(image_files);
figures;

for i = 1:num_images
	img - imread(fullfile('d:\images\', image_files(i).name));
	gray_img = rgb2gray(img);

	subplot(num_images, 2, 2*i-1); imshow(img); title(['Original Image', num2str(i)]);
	subplot(num_images, 2, 2*i); imshow(gray_img); title(['Grayscale Image', num2str(i)]);

end

