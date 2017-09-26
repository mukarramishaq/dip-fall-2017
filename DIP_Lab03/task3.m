%%%%%%%%%%%%%%%%%Author%%%%%%%%%%%%%%%%
%%%%%	Mukarram Ishaq
%%%%%	32381
%%%%%	BESE5A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 cameramanImg = imread ('cameraman.tif');
 
 builtinHistogram = imhist(cameramanImg);
 histImg= histeq(cameramanImg);
 builtinEhistogram= imhist(histImg);
 r = size(cameramanImg,1);
 c = size(cameramanImg,2);
 A= zeros(1,256);
 for j=1:r
   for x=1:c
       v=cameramanImg(j,x);
       A(v+1)=A(v+1)+1;
   end
 end
   for y=1:256
     pmf(y)= ((A(y))/(r*c));
   end
   cdf(1)=pmf(1);
   for y=2:256
        cdf(y) = cdf(y-1)+ pmf(y);
   end
     for b=1:256
       T(b)=cdf(b)*255;
      end

    for j=1:r
        for x=1:c
            I4(j,x) =T(cameramanImg(j,x));

         end
    end




   myEquilizedHistogram= imhist(I4);



  figure
  subplot(3,2,1)
   imagesc(cameramanImg),title('Orignal image')
  subplot(3,2,2)
  plot(builtinHistogram)
  title('Built in Histogram')

 subplot(3,2,3)
 imagesc(histImg),title('Built in Equilized image')
 
  subplot(3,2,4)
  plot(builtinEhistogram)
  title('Built in Equilized histogram')

  subplot(3,2,5)
  imagesc(I4),title('My equilized image')
  subplot(3,2,6)
   plot( myEquilizedHistogram),title('My equilized Histogram')
   
