function blendImagesInFolder(inputFolder, outputFolder, alpha)
    % Get all image files from the folder
    imageFiles = dir(fullfile(inputFolder, '*.jpg'));

    % Ensure the output folder exists
    if ~exist(outputFolder, 'dir')
        mkdir(outputFolder);
    end

    % Process each pair of images
    for k = 1:2:length(imageFiles)-1
        % Read two consecutive images
        img1 = imread(fullfile(inputFolder, imageFiles(k).name));
        img2 = imread(fullfile(inputFolder, imageFiles(k+1).name));
        
        % Convert images to double
        img1 = im2double(imresize(img1, [512, 512]));  % Resize for consistency
        img2 = im2double(imresize(img2, [512, 512]));

        % Blend the images using alpha blending
        blended_img = alpha * img1 + (1 - alpha) * img2;
        
        % Save the blended image
        blendedName = sprintf('blended_%d.jpg', k);
        imwrite(blended_img, fullfile(outputFolder, blendedName));
        
        % Display progress
        disp(['Blended image ' num2str(k) ' saved.']);
    end
end

% Example Usage
blendImagesInFolder('D:\MatLab\Image_Processing\Images_Folder', 'D:\MatLab\Image_Processing\Blended_Output', 0.5);
