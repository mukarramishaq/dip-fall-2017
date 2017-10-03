%%%%%%%%%AUTHOR%%%%%%%%%%%%%%
%%%%    Mukarram Ishaq    
%%%%    BESE-5A
%%%%    111134
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%<---------------    TASK 01 ---------------->

%>---------Part1--------<
figure('name','Part 1 of Task 1');
img = imread('peppers.png');
subplot(2,3,1);
imshow(img)
title('original Image');


filter3 = fspecial('average',[3 3]);

filter5 = fspecial('average',[5 5]);
filter15 = fspecial('average',[15 15]);
filter35 = fspecial('average',[35 35]);

fi3 = imfilter(img,filter3);
fi5 = imfilter(img,filter5);
fi15 = imfilter(img,filter15);
fi35 = imfilter(img,filter35);


subplot(2,3,2)
imshow(fi3);
title('3x3 Avaerage filtered Image');
subplot(2,3,3)
imshow(fi5);
title('5x5 Avaerage filtered Image');
subplot(2,3,4)
imshow(fi15);
title('15x15 Avaerage filtered Image');
subplot(2,3,5)
imshow(fi35);
title('35x35 Avaerage filtered Image');

%%%%%%%%%% Q.01  Answer 
%%%%%%%%%% The more the size of average filter the more blurrrrr it is.

%>---------END Part1--------<


%>---------Part2--------<
figure('name','Part 2 of Task 1');
%show original image
subplot(2,2,1);
imshow(img);
title('Original Image');


waf1 = (1/16)*[1 2 1;2 4 2;1 2 1];
waf2 = (1/28)*[1 4 1;4 8 4;1 4 1];
arr = [1 2 4 8 4 2 1;
               2 4 8 10 8 4 2;
               4 8 10 12 10 8 4;
               8 10 12 14 12 10 8;
               4 8 10 12 10 8 4;
               2 4 8 10 8 4 2;
               1 2 4 8 4 2 1];
 ssum = sum(sum(arr))
waf3 = (1/ssum)*arr;

%apply filters
fi1 = imfilter(img,waf1);
fi2 = imfilter(img,waf2);
fi3 = imfilter(img,waf3);

%show filtered images
subplot(2,2,2);
imshow(fi1);
title('weighted filtered image[filter waf1]');

subplot(2,2,3);
imshow(fi2);
title('weighted filtered image[filter waf2]');

subplot(2,2,4);
imshow(fi3);
title('weighted filtered image[filter waf3]');


%<---------------  END TASK 01  -------------->


%<-----------------  TASK 02   ----------------->

figure('name','Task 02');
subplot(2,2,1);
imshow(img);
title('Original image');


sobel = fspecial('sobel');
prewitt = fspecial('prewitt');
laplacian = fspecial('laplacian');
%roberts = fspecial('roberts');

fi1 = imfilter(img,sobel);
fi2 = imfilter(img,prewitt);
fi3 = imfilter(img,laplacian);

subplot(2,2,2);
imshow(fi1);
title('sobel filtered');
subplot(2,2,3);
imshow(fi2);
title('prewitt filtered');
subplot(2,2,4);
imshow(fi3);
title('laplacian filtered');






