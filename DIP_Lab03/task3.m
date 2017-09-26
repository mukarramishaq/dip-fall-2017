%%%%%%%%%%%%%%%%%FreqTableuthor%%%%%%%%%%%%%%%%
%%%%%	Mukarram Ishaq
%%%%%	32381
%%%%%	BESE5FreqTable
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 tireImg = imread ('tire.tif');
 
 %builtin histogram
 bIH = imhist(tireImg);

 %equalized Histogram
 equalizedHist= histeq(tireImg);

 %built In equlaized histogram
 bIEHist= imhist(equalizedHist);
 
 r = size(tireImg,1);
 c = size(tireImg,2);
 FreqTable= zeros(1,256);
 for j=1:r
   for x=1:c
       value=tireImg(j,x);
       FreqTable(value+1)=FreqTable(value+1)+1;
   end
 end

   for y=1:256
     p(y)= ((FreqTable(y))/(r*c));
   end
   cumDF(1)=p(1);

   for y=2:256
        cumDF(y) = cumDF(y-1)+ p(y);
   end
     for b=1:256
       T(b)=cumDF(b)*255;
      end

    for j=1:r
        for x=1:c
            Eq(j,x) =T(tireImg(j,x));

         end
    end




   nowEqHist= imhist(Eq);



  figure
  subplot(1,2,1);
  plot(bIEHist)
  title('Equalized through Built In func');
 
  subplot(1,2,2)
  plot(nowEqHist),title('My equilized Histogram')
  title('My Equilized Histogram')
   
   
