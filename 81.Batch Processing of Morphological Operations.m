% Example 6: Batch Processing of Morphological Operations on Images in a Folder
% In this advanced example, we create a function to perform dilation followed by erosion (closing) on all images in a folder and save the results in another folder.

function batchMorphology(inputFolder, outputFolder)
    % Create output folder if it doesn't exist
    if ~exist(outputFolder, 'dir')
        mkdir(outputFolder);
    end
    
    % Get list of all images in the input folder
    imageFiles = dir(fullfile(inputFolder, '*.jpg'));
    
    % Define the structuring element
    se = strel('disk', 5);
    
    % Loop through each image in the folder
    for k = 1:length(imageFiles)
        % Read each image
        filePath = fullfile(inputFolder, imageFiles(k).name);
        img = imread(filePath);
        
        % Convert to grayscale and binarize
        grayImg = rgb2gray(img);
        binaryImg = imbinarize(grayImg);
        
        % Apply closing (dilation followed by erosion)
        closedImg = imclose(binaryImg, se);
        
        % Save the processed image
        outputFilePath = fullfile(outputFolder, ['Closed_' imageFiles(k).name]);
        imwrite(closedImg, outputFilePath);
        
        % Display progress
        disp(['Processed and saved: ' imageFiles(k).name]);
    end
end


% Example Usage: Call the function on a folder of images
inputFolder = 'D:/MatLab/Image_Processing/Images_Folder';
outputFolder = 'D:/MatLab/Image_Processing/Closed_Images';
batchMorphology(inputFolder, outputFolder);

% Key Points:
% Batch processed multiple images using closing (imclose).
% Automatically saved the processed images in a separate folder.