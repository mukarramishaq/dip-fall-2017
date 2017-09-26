cameramanImg = imread('cameraman.tif');
tireImg = imread('tire.tif');
negativeCameraManImg = 255 - cameramanImg;
negativeTireImg = 255 - tireImg;
subplot(2,2,1)
imshow(cameramanImg);
subplot(2,2,3)
imshow(tireImg);
subplot(2,2,2)
imshow(negativeCameraManImg);
subplot(2,2,4)
imshow(negativeTireImg);