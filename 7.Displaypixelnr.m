info = imfinfo('D:\MatLab\Image_Processing\pillars_2.jpg');

image_width = info.Width;
image_height = info.Height;

% Call the function
total_pixels = calculate_pixels(image_width, image_height);

%Display the result
disp(['Total Pixels: ', num2str(total_pixels)]);
