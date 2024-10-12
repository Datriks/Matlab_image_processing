% display images
image_1 = imread("D:\MatLab\Image_Processing\pillars.jpg");
image_2 = imread("D:\MatLab\Image_Processing\pillars_2.jpg");
image_3 = imread("D:\MatLab\Image_Processing\pillars.png");
image_4 = imread("D:\MatLab\Image_Processing\webb_2.jpg");


% to show the image
subplot(4,1,1); imshow(image_1);
subplot(4,1,2); imshow(image_2);
subplot(4,1,3); imshow(image_3);
subplot(4,1,4); imshow(image_4);

