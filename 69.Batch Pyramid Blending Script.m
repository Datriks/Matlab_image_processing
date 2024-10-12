function batch_pyramid_blending(inputFolder, outputFolder, levels, alpha)
    % Function to apply pyramid-based image blending to pairs of images in a folder

    % Get all image files from the folder
    imageFiles = dir(fullfile(inputFolder, '*.jpg'));

    % Ensure the output folder exists
    if ~exist(outputFolder, 'dir')
        mkdir(outputFolder);
    end

    % Loop through pairs of images
    for k = 1:2:length(imageFiles)-1
        % Read two consecutive images
        img1 = imread(fullfile(inputFolder, imageFiles(k).name));
        img2 = imread(fullfile(inputFolder, imageFiles(k+1).name));

        % Resize the second image to match the first
        img2 = imresize(img2, size(img1(:,:,1)));

        % Step 3: Create Gaussian pyramids for both images
        gp_img1 = gaussian_pyramid(img1, levels);
        gp_img2 = gaussian_pyramid(img2, levels);

        % Step 4: Create Laplacian pyramids by subtracting Gaussian levels
        lp_img1 = laplacian_pyramid(gp_img1);
        lp_img2 = laplacian_pyramid(gp_img2);

        % Step 5: Blend each level of the pyramid
        blended_pyramid = cell(1, levels);
        for l = 1:levels
            blended_pyramid{l} = alpha * lp_img1{l} + (1 - alpha) * lp_img2{l};
        end

        % Step 6: Reconstruct the final blended image from the pyramid
        blended_img = reconstruct_from_pyramid(blended_pyramid);

        % Step 7: Save the blended image
        blendedName = sprintf('blended_%d_%d.jpg', k, k+1);
        imwrite(blended_img, fullfile(outputFolder, blendedName));

        % Display progress
        disp(['Blended image ' num2str(k) ' and ' num2str(k+1) ' saved as ' blendedName]);
    end
end

% Gaussian pyramid function
function gp = gaussian_pyramid(img, levels)
    gp = cell(1, levels);
    gp{1} = img;
    for i = 2:levels
        gp{i} = impyramid(gp{i-1}, 'reduce'); % Reduce the resolution for the pyramid
    end
end

% Laplacian pyramid function
function lp = laplacian_pyramid(gp)
    levels = length(gp);
    lp = cell(1, levels);
    for i = 1:levels-1
        lp{i} = gp{i} - imresize(gp{i+1}, size(gp{i}(:,:,1))); % Subtract reduced images
    end
    lp{levels} = gp{levels}; % The smallest image is stored as the final laplacian level
end

% Reconstruct from pyramid
function img = reconstruct_from_pyramid(lp)
    levels = length(lp);
    img = lp{levels};
    for i = levels-1:-1:1
        img = imresize(img, size(lp{i}(:,:,1))) + lp{i}; % Upscale and add laplacian
    end
end

% Example of usage:
% Apply pyramid blending to all images in a folder
inputFolder = 'D:/MatLab/Image_Processing/Images_Folder';
outputFolder = 'D:/MatLab/Image_Processing/Blended_Output';
levels = 5; % Number of pyramid levels
alpha = 0.5; % Blending ratio
batch_pyramid_blending(inputFolder, outputFolder, levels, alpha);
