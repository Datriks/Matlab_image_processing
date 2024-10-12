% Cropping Multiple Regions (Batch Cropping)
img = imread("D:\MatLab\Image_Processing\original_Images\westerlund.jpg");

% Define multiple crop rectangles [x, y, width, height]
crop_rect = [
			500, 50, 150, 150;
			300, 200, 100, 100;
			500, 300, 120, 100;
			];
% Loop over each crop rectangles
for i = 1: size(crop_rect, 1)
	crop_img = imcrop(img, crop_rect(i, :));
	
	% Display each cropped image
	figure, imshow(crop_img);
	title(['Cropped Image', num2str(i)]);	
end
