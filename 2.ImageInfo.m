% Get the image information
info = imfinfo('D:\MatLab\Image_Processing\lion.jpg');

% Extract the file name, last modification date, image size, and file size
image_name = info.Filename;
last_modified = info.FileModDate;
image_width = info.Width;
image_height = info.Height;
file_size = info.FileSize; % File size in bytes
color_depth = info.BitDepth;
color_type = info.ColorType;
sample_number = info.NumberOfSamples;
coding_method = info.CodingMethod;
coding_process = info.CodingProcess;

% Display the results with correct formatting
disp(['Image Name: ', image_name]);
disp(['Last Modified: ', last_modified]);
disp(['Image Width: ', num2str(image_width), ' pixels']);
disp(['Image Height: ', num2str(image_height), ' pixels']);
disp(['File Size: ', num2str(file_size), ' bytes']);
disp(['Color Depth: ', num2str(color_depth), ' bit']);
disp(['Color Type: ', num2str(color_type)]);
disp(['Number of Samples: ', num2str(sample_number)]);
disp(['Coding Method: ', coding_method]);
disp(['Coding Process: ', coding_process]);

% extract metadata from an image using imfinfo() function
imfinfo('D:\MatLab\Image_Processing\lion.jpg');
