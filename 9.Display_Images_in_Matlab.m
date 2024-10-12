% Displaying images in matlab

image_1 = imread('d:/space1.jpg');
image_2 = imread('d:/space2.jpg');
image_3 = imread('d:/space3.jpg');
image_4 = imread('d:/space4.jpg');

subplot(4,1,1); imshow(image_1);
subplot(4,1,2); imshow(image_2);
subplot(4,1,3); imshow(image_3);
subplot(4,1,4); imshow(image_4);
