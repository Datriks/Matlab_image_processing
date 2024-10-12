% Step 1: Read the image
I4 = imread("D:\MatLab\Image_Processing\original_Images\star_cluster.jpg");

% Step 2: Separate the color channels
R4 = I4(:,:,1);
G4 = I4(:,:,2);
B4 = I4(:,:,3);

% Step 3: Display histograms of the color channels
figure;
subplot(1, 3, 1); imhist(R4); title('Histogram of Red Channel');
subplot(1, 3, 2); imhist(G4); title('Histogram of Green Channel');
subplot(1, 3, 3); imhist(B4); title('Histogram of Blue Channel');

%Learning Points:
% Using imhist to visualize the intensity distribution in each color channel.
% Analyzing color channel contributions through histograms.