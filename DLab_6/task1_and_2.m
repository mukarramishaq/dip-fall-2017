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


%%%  Median Filter
figure('name','Task 02 Median Filter');


subplot(2,3,1);
imshow(medfilt2(gaussianI,[9 9]),[]);
title(' on guassian');

subplot(2,3,2);
imshow(medfilt2(poissonI,[9 9]),[]);
title(' on poisson');

subplot(2,3,3);
imshow(medfilt2(ponI,[9 9]),[]);
title(' on pepper only');

subplot(2,3,4);
imshow(medfilt2(sonI,[9 9]),[]);
title('on salt only');

subplot(2,3,5);
imshow(medfilt2(speckleI,[9 9]),[]);
title(' on speckle');

subplot(2,3,6);
imshow(medfilt2(spnI,[9 9]),[]);
title(' on salt & pepper');



%%%  Max Filter
figure('name','Task 02 Max Filter');


subplot(2,3,1);
imshow(ordfilt2(gaussianI,9,ones(3,3)),[]);
title(' on guassian');

subplot(2,3,2);
imshow(ordfilt2(poissonI,9,ones(3,3)),[]);
title(' on poisson');

subplot(2,3,3);
imshow(ordfilt2(ponI,9,ones(3,3)),[]);
title(' on pepper only');

subplot(2,3,4);
imshow(ordfilt2(sonI,9,ones(3,3)),[]);
title('on salt only');

subplot(2,3,5);
imshow(ordfilt2(speckleI,9,ones(3,3)),[]);
title(' on speckle');

subplot(2,3,6);
imshow(ordfilt2(spnI,9,ones(3,3)),[]);
title(' on salt & pepper');


%%%  Min Filter
figure('name','Task 02 Min Filter');


subplot(2,3,1);
imshow(ordfilt2(gaussianI,1,ones(3,3)),[]);
title(' on guassian');

subplot(2,3,2);
imshow(ordfilt2(poissonI,1,ones(3,3)),[]);
title(' on poisson');

subplot(2,3,3);
imshow(ordfilt2(ponI,1,ones(3,3)),[]);
title(' on pepper only');

subplot(2,3,4);
imshow(ordfilt2(sonI,1,ones(3,3)),[]);
title('on salt only');

subplot(2,3,5);
imshow(ordfilt2(speckleI,1,ones(3,3)),[]);
title(' on speckle');

subplot(2,3,6);
imshow(ordfilt2(spnI,1,ones(3,3)),[]);
title(' on salt & pepper');


%%%  Harmonic Mean Filter
figure('name','Task 02 Harmonic Mean Filter');
harFunc = @(x) harmmean(x(:));


subplot(2,3,1);
imshow(nlfilter(im2double(gaussianI),[3 3],harFunc));
title(' on guassian');

subplot(2,3,2);
imshow(nlfilter(im2double(poissonI),[3 3],harFunc));
title(' on poisson');

subplot(2,3,3);
imshow(nlfilter(im2double(ponI),[3 3],harFunc));
title(' on pepper only');

subplot(2,3,4);
imshow(nlfilter(im2double(sonI),[3 3],harFunc));
title('on salt only');

subplot(2,3,5);
imshow(nlfilter(im2double(speckleI),[3 3],harFunc));
title(' on speckle');

subplot(2,3,6);
imshow(nlfilter(im2double(spnI),[3 3],harFunc));
title(' on salt & pepper');


%%%  Geometric Mean Filter
figure('name','Task 02 Geo Mean Filter');
geoFunc = @(x) geomean(x(:));


subplot(2,3,1);
imshow(nlfilter(im2double(gaussianI),[3 3],geoFunc));
title(' on guassian');

subplot(2,3,2);
imshow(nlfilter(im2double(poissonI),[3 3],geoFunc));
title(' on poisson');

subplot(2,3,3);
imshow(nlfilter(im2double(ponI),[3 3],geoFunc));
title(' on pepper only');

subplot(2,3,4);
imshow(nlfilter(im2double(sonI),[3 3],geoFunc));
title('on salt only');

subplot(2,3,5);
imshow(nlfilter(im2double(speckleI),[3 3],geoFunc));
title(' on speckle');

subplot(2,3,6);
imshow(nlfilter(im2double(spnI),[3 3],geoFunc));
title(' on salt & pepper');



%%% Contra Harmonic
figure();
subplot(3,2,1),imshow(Contra_HarmonicMeanFilter(gaussianI,2,3)),title('Contra Harmonic Mean Gaussian');
subplot(3,2,2),imshow(Contra_HarmonicMeanFilter(poissonI,2,3)),title('Contra Harmonic Mean Poisson');

subplot(3,2,3),imshow(Contra_HarmonicMeanFilter(spnI,2,3)),title('Contra Harmonic Mean Salt and Pepper');
subplot(3,2,4),imshow(Contra_HarmonicMeanFilter(speckleI,2,3)),title('Contra Harmonic Mean Speckle');
subplot(3,2,5),imshow(Contra_HarmonicMeanFilter(ponI,2,3)),title('Contra Harmonic Mean Pepper');
subplot(3,2,6),imshow(Contra_HarmonicMeanFilter(sonI,2,3)),title('Contra Harmonic Mean Salt');



