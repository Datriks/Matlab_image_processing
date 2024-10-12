function folder_images_rotation(input_folder, output_folder, rotation_angle)
    % Check if output folder exists, create it if it doesn't
    if ~exist(output_folder, 'dir')
        mkdir(output_folder);
    end

    % Get list of all image files in the input folder
    image_files = dir(fullfile(input_folder, '*.*')); % Adjust file extensions if needed
    valid_extensions = {'.jpg', '.jpeg', '.png', '.bmp', '.tiff', '.gif'}; % Supported extensions

    for i = 1:length(image_files)
        % Get file name and extension
        [~, ~, ext] = fileparts(image_files(i).name);
        
        % Check if the file is a valid image type
        if ismember(lower(ext), valid_extensions)
            % Read the image
            img = imread(fullfile(input_folder, image_files(i).name));
            
            % Rotate the image by the specified angle
            rotated_img = imrotate(img, rotation_angle);
            
            % Save the rotated image to the output folder
            output_filename = fullfile(output_folder, image_files(i).name);
            imwrite(rotated_img, output_filename);
            
            % Display progress in the command window
            fprintf('Rotated and saved: %s\n', output_filename);
        end
    end
    
    fprintf('All images rotated and saved to %s\n', output_folder);
end
