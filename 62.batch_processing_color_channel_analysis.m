function processAndEnhanceColorChannels(folderPath, savePath)
    % Check if the save directory exists, if not, create it
    if ~exist(savePath, 'dir')
        mkdir(savePath);
    end

    % Get list of all images in the folder
    imageFiles = dir(fullfile(folderPath, '*.jpg'));

    % Loop through each image in the folder
    for k = 1:length(imageFiles)
        % Read each image
        filePath = fullfile(folderPath, imageFiles(k).name);
        img = imread(filePath);

        % Separate color channels
        R = img(:,:,1);  % Red channel
        G = img(:,:,2);  % Green channel
        B = img(:,:,3);  % Blue channel

        % Adjust each color channel for enhanced contrast
        R_adjusted = imadjust(R);
        G_adjusted = imadjust(G);
        B_adjusted = imadjust(B);

        % Recombine the adjusted channels into an enhanced image
        enhanced_img = cat(3, R_adjusted, G_adjusted, B_adjusted);

        % Save the enhanced image in the specified folder
        saveFilePath = fullfile(savePath, ['Enhanced_' imageFiles(k).name]);
        imwrite(enhanced_img, saveFilePath);

        % Display progress
        disp(['Processed and enhanced ' imageFiles(k).name]);
    end
end

% Example Usage: 
% folderPath is the folder containing the images you want to process.
% savePath is the folder where you want to save the enhanced images.

processAndEnhanceColorChannels("D:\MatLab\Image_Processing\original_Images", ...
    'D:\MatLab\Image_Processing\Enhanced_Images');
