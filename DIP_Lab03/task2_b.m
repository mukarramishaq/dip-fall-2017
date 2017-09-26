cameramanImg = im2double(imread('cameraman.tif'));


c = 1;



gamma1 = 0.4;
gamma2 = 0.1;
gamma3 = 1;
gamma4 = 2.5;
gamma5 = 4;



subplot(2,3,1);
imshow(cameramanImg);
title('Original');


subplot(2,3,2);

imshow(a*power(cameramanImg,gamma1))
title(strcat(num2str(a),strcat('* original ^ ',num2str(gamma1))));

subplot(2,3,3);
imshow(a*power(cameramanImg,gamma2))
title(strcat(num2str(b),strcat('* original ^ ',num2str(gamma2))));

subplot(2,3,4);
imshow(c*power(cameramanImg,gamma3))
title(strcat(num2str(c),strcat('* original^',num2str(gamma3))));

subplot(2,3,5);
imshow(c*power(cameramanImg,gamma4))
title(strcat(num2str(d),strcat('* original^',num2str(gamma4))));
subplot(2,3,6);
imshow(c*power(cameramanImg,gamma5))
title(strcat(num2str(e),strcat('* original^',num2str(gamma5))));

