function resize_folder_images(input_folder, output_folder, scale_factor)
    % Check if output folder exists, create it if it doesn't
    if ~exist(output_folder, 'dir')
        mkdir(output_folder);
    end

    % Get list of all image files in the input folder
    image_files = dir(fullfile(input_folder, '*.*')); % Adjust filter as needed (e.g., '*.jpg')
    valid_extensions = {'.jpg', '.jpeg', '.png', '.bmp', '.tiff', '.gif'}; % Supported extensions

    for i = 1:length(image_files)
        % Get file name and extension
        [~, ~, ext] = fileparts(image_files(i).name);
        
        % Check if the file is a valid image type
        if ismember(lower(ext), valid_extensions)
            % Read the image
            img = imread(fullfile(input_folder, image_files(i).name));
            
            % Resize the image using bilinear interpolation
            resized_img = imresize(img, scale_factor, 'bilinear');
            
            % Save the resized image to the output folder
            output_filename = fullfile(output_folder, image_files(i).name);
            imwrite(resized_img, output_filename);
            
            % Display progress in the command window
            fprintf('Resized and saved: %s\n', output_filename);
        end
    end
    
    fprintf('All images resized and saved to %s\n', output_folder);
end

% Function Parameters:
% input_folder: The folder containing the original images you want to resize.
% output_folder: The folder where the resized images will be saved.
% scale_factor: The resizing factor (e.g., 0.5 to shrink images by half).