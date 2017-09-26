


cameramanImg = imread('cameraman.tif');
tireImg = imread('tire.tif');
a = 0.5;
b = 3;
c = 0.8;
newCameraManImg = a*cameramanImg;
newTireImg = a* tireImg;

subplot(2,4,1);
imshow(cameramanImg);
title('original Image');
subplot(2,4,2);
newImg = a*cameramanImg;
imshow(newImg);
title(strcat(num2str(a),'* original Image'));
subplot(2,4,3);
newImg = b*cameramanImg;
imshow(newImg);
title(strcat(num2str(b),'* original Image'));
subplot(2,4,4);
newImg = c*cameramanImg;
imshow(newImg);
title(strcat(num2str(c),'* original Image'));

subplot(2,4,5);
imshow(tireImg);
title('original Image');
subplot(2,4,6);
newImg = a*tireImg;
imshow(newImg);
title(strcat(num2str(a),'* original Image'));
subplot(2,4,7);
newImg = b*tireImg;
imshow(newImg);
title(strcat(num2str(b),'* original Image'));
subplot(2,4,8);
newImg = c*tireImg;
imshow(newImg);
title(strcat(num2str(c),'* original Image'));