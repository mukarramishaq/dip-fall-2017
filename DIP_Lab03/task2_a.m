cameramanImg = im2double(imread('cameraman.tif'));


a = 20;
b = 2;
c = 0.9;
d = 10;
e = 0.3;
f = 5;





subplot(2,4,1);
imshow(cameramanImg);
title('Original');


subplot(2,4,2);

imshow(a*log(1+cameramanImg))
title(strcat(num2str(a),'*log(1+original)'));

subplot(2,4,3);
imshow(b*log(1+cameramanImg))
title(strcat(num2str(b),'*log(1+original)'));

subplot(2,4,4);
imshow(b*log(1+cameramanImg))
title(strcat(num2str(c),'*log(1+original)'));

subplot(2,4,5);
imshow(d*log(1+cameramanImg))
title(strcat(num2str(d),'*log(1+original)'));
subplot(2,4,6);
imshow(e*log(1+cameramanImg))
title(strcat(num2str(e),'*log(1+original)'));
subplot(2,4,7);
imshow(f*log(1+cameramanImg))
title(strcat(num2str(f),'*log(1+original)'));
