function details_metadata_function(image_path)
    % Extractimage information using infinfo
    info = imfinfo(image_path);

    % Display the extracted metadata
    disp('--- Image Metadata ---');
    disp(['Filename: ', info.Filename]);
    disp(['File Size: ', num2str(info.FileSize), ' bytes']);
    disp(['Image Width: ', num2str(info.Width), ' pixels']);
    disp(['Image Height: ', num2str(info.Height), ' pixels']);
    disp(['Color Depth (Bit Depth): ', num2str(info.BitDepth), ' bits per pixel']);
    disp(['Color Type: ', info.ColorType]);
    disp(['Last Modified: ', info.FileModDate]);

    % Check if the optional fields exist before displaying them
    if isfield(info, 'NumberOfSamples')
        disp(['Number of Samples: ', num2str(info.NumberOfSamples)]);
    else
        disp('Number of Samples: Not available');
    end
    
    if isfield(info, 'CodingMethod')
        disp(['Coding Method: ', info.CodingMethod]);
    else
        disp('Coding Method: Not available');
    end
    
    if isfield(info, 'CodingProcess')
        disp(['Coding Process: ', info.CodingProcess]);
    else
        disp('Coding Process: Not available');
    end
end

% Call the function with an image file path
details_metadata_function('D:\MatLab\Image_Processing\wolf.jpg');