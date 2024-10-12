% Option 4: Overlaid Edge Detection (Edge on Original Image)
% Another way to vary the presentation is by overlaying the edge-detected results 
% on the original grayscale image to see the boundaries directly over the original.

% Step 1 : Convert to grayscale
gray_image = rgb2gray(imread('D:\MatLab\Image_Processing\original_Images\westerlund.jpg'));

% Step 2 : Apply Prewit and Roberts edge detection
prewitt_edge = edge(gray_image, 'prewitt');
roberts_edge =edge(gray_image, 'roberts');

% Step 3: Display original with overlaid edge detection
figure;


% Overlay Prewitt edges on the original image
subplot(1, 2, 1);
imshow(gray_image); hold on;
h = imshow(prewitt_edge);
set(h, 'AlphaData', 0.5); % set transparency to see both images
title('Prewitt Edges Over Original');

% Overlay Roberts Edges on the original image
subplot(1,2, 2);
imshow(gray_image); hold on;
h2 = imshow(roberts_edge); 
set(h2, 'AlphaData', 0.5); % set transparency
title('Roberts Edges Over Original');

% Key Learning:
% This method overlays edge detection results on the original image using transparency to combine the two visually.
