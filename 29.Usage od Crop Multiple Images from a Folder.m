% Define folder paths
input_folder = 'd:\Input_Images';
output_folder = 'd:\Output_Images';

%Define crop rectangle [x, y, width, height]
crop_rect = [100, 50, 200, 150];

%Call the function to crop all images in the folder
crop_images_in_folder(input_folder, output_folder, crop_rect);