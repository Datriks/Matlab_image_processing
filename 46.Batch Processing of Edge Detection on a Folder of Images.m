% Example 6: Batch Processing of Edge Detection on a Folder of Images
% For the final example, we’ll create a function that performs edge detection on every image in a folder and saves the results.

function batch_edge_detection(input_folder, output_folder)
    % Get list of all images in the input folder
    image_files = dir(fullfile(input_folder, '*.jpg'));
    
    % Loop through each image file
    for k = 1:length(image_files)
        % Read the image
        file_name = fullfile(input_folder, image_files(k).name);
        img = imread(file_name);
        
        % Convert to grayscale
        gray_img = rgb2gray(img);
        
        % Apply Canny edge detection
        edges = edge(gray_img, 'canny');
        
        % Create output file name
        [~, name, ext] = fileparts(file_name);
        output_file_name = fullfile(output_folder, [name '_edges' ext]);
        
        % Save the edge-detected image
        imwrite(edges, output_file_name);
        
        % Optionally display progress
        fprintf('Processed %s\n', image_files(k).name);
    end
end

% Example usage:
% Specify input and output folders
input_folder = 'D:\MatLab\Image_Processing\original_Images';
output_folder = 'D:\MatLab\Image_Processing\edge_results';
batch_edge_detection(input_folder, output_folder);

% Key Learning:
% This function processes all images in a folder, applies Canny edge detection, and saves the results to a specified output folder.
% It demonstrates batch processing for a real-world image processing pipeline.
