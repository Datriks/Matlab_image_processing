% Customizing Image Sizes Within Subplots
% If you want more precise control over the size of each subplot (e.g., to reduce grey areas), you can directly adjust the axis sizes:

matlab
Copy code
% Step 1: Convert to grayscale
gray_image = rgb2gray(imread('D:\MatLab\Image_Processing\original_Images\westerlund.jpg'));

% Step 2: Apply Prewitt and Roberts edge detection
prewitt_edges = edge(gray_image, 'prewitt');
roberts_edges = edge(gray_image, 'roberts');

% Step 3: Display with custom image sizes within subplots
figure;

subplot(1, 3, 1);
imshow(gray_image, 'XData', [0 600], 'YData', [0 600]); 
title('Original Grayscale Image'); axis on;

subplot(1, 3, 2);
imshow(prewitt_edges, 'XData', [0 600], 'YData', [0 600]); 
title('Prewitt Edge Detection'); axis on;

subplot(1, 3, 3);
imshow(roberts_edges, 'XData', [0 600], 'YData', [0 600]); 
title('Roberts Edge Detection'); axis on;
Key Learning:
You can directly control the size of each displayed image by adjusting the XData and YData properties.
