function crop_images_in_folder(input_folder, output_folder, crop_rect)
    % Check if output folder exists, create it if it doesn't
    if ~exist(output_folder, 'dir')
        mkdir(output_folder);
    end

    % Get list of all image files in the input folder
    image_files = dir(fullfile(input_folder, '*.*')); % Adjust file extensions if necessary
    valid_extensions = {'.jpg', '.jpeg', '.png', '.bmp', '.tiff', '.gif'}; % Supported extensions

    for i = 1:length(image_files)
        % Get file name and extension
        [~, ~, ext] = fileparts(image_files(i).name);
        
        % Check if the file is a valid image type
        if ismember(lower(ext), valid_extensions)
            % Read the image
            img = imread(fullfile(input_folder, image_files(i).name));
            
            % Crop the image using the specified crop rectangle [x, y, width, height]
            cropped_img = imcrop(img, crop_rect);
            
            % Save the cropped image to the output folder
            output_filename = fullfile(output_folder, image_files(i).name);
            imwrite(cropped_img, output_filename);
            
            % Display progress in the command window
            fprintf('Cropped and saved: %s\n', output_filename);
        end
    end
    
    fprintf('All images cropped and saved to %s\n', output_folder);
end
