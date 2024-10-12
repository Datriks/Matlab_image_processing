% Get the image information using imfinfo
info = imfinfo('D:\MatLab\Image_Processing\lion.jpg');

% Display the extracted metadata
disp('--- Image Metadata ---');
disp(['Filename: ', info.Filename]);
disp(['File Size: ', num2str(info.FileSize), ' bytes']);
disp(['Image Width: ', num2str(info.Width), ' pixels']);
disp(['Image Height: ', num2str(info.Height), ' pixels']);
disp(['Color Depth (Bit Depth): ', num2str(info.BitDepth), ' bits per pixel']);
disp(['Color Type: ', info.ColorType]);
disp(['Last Modified: ', info.FileModDate]);
disp(['Number of samples: ', info.NumberOfSamples]);
disp(['Coding Method: ', info.CodingMethod]);
disp(['Coding Process: ', info.CodingProcess]);
