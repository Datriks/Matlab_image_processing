function batchBinarizeImages(inputFolder, outputFolder)
    % Create output folder if it doesn't exist
    if ~exist(outputFolder, 'dir')
        mkdir(outputFolder);
    end
    
    % Get list of all images in the input folder
    imageFiles = dir(fullfile(inputFolder, '*.jpg'));
    
    % Loop through each image in the folder
    for k = 1:length(imageFiles)
        % Read each image
        filePath = fullfile(inputFolder, imageFiles(k).name);
        img = imread(filePath);
        
        % Convert to grayscale
        grayImg = rgb2gray(img);
        
        % Apply adaptive thresholding
        binaryImg = imbinarize(grayImg, 'adaptive', 'ForegroundPolarity', 'dark');
        
        % Save the binarized image
        outputFilePath = fullfile(outputFolder, ['Binarized_' imageFiles(k).name]);
        imwrite(binaryImg, outputFilePath);
        
        % Display progress
        disp(['Processed and saved: ' imageFiles(k).name]);
    end
end

% Example Usage: Call the function on a folder of images
inputFolder = 'D:/MatLab/Image_Processing/Images_Folder';
outputFolder = 'D:/MatLab/Image_Processing/Binarized_Images';
batchBinarizeImages(inputFolder, outputFolder);
