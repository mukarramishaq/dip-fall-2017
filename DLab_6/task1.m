%%%%  Mukarram Ishaq
%%%%  BESE-5A
%%%%  111134
%%%%%%%%%%%%%%%%%%%%
figure('name','Task 1');

img = rgb2gray(imread('peppers.png'));
subplot(2,4,1);
imshow(img);
title('Original Image');
%%% Guassian noise
subplot(2,4,2);
gaussianI = imnoise(img,'gaussian',0.1);
imshow(gaussianI);
title('Guassian Noise');


%%%  poisson noise
subplot(2,4,3);
poissonI = imnoise(img,'poisson');
imshow(poissonI);
title('Poisson Noise');

%%% Speckle noise
subplot(2,4,4);
speckleI = imnoise(img,'speckle');
imshow(speckleI);
title('Speckle Noise');

%%% Salt & Pepper noise
subplot(2,4,5);
spnI = imnoise(img,'salt & pepper', 0.1);
imshow(spnI);
title('Salt & Pepper Noise');

%%% Only Salt noise
subplot(2,4,6);
sonI = Pepper_Or_Salt(img,0.1,2,0,255);
imshow(sonI);
title('Salt only Noise');


%%% Only Pepper noise
subplot(2,4,7);
ponI = Pepper_Or_Salt(img,0.1,1,0,255);
imshow(ponI);
title('Pepper only Noise');


%%%%%%%%%%%%%%%%%%%%%%%%%  TASK 02   %%%%%%%%%%%%%%%%%%%%

figure('name','Task 02 Arithmatic mean Filter');
%%%arithmatic mean
afilter = fspecial('average',[9 9]);
subplot(2,3,1);
imshow(imfilter(gaussianI,afilter));
title(' on guassian');

subplot(2,3,2);
imshow(imfilter(poissonI,afilter));
title(' on poisson');

subplot(2,3,3);
imshow(imfilter(ponI,afilter));
title(' on pepper only');

subplot(2,3,4);
imshow(imfilter(sonI,afilter),[]);
title('on salt only');

subplot(2,3,5);
imshow(imfilter(speckleI,afilter));
title(' on speckle');

subplot(2,3,6);
imshow(imfilter(spnI,afilter));
title(' on salt & pepper');

figure('name','Task 02 Geometric mean Filter');
