function [Im]=Contra_HarmonicMeanFilter(Img,Q,masksize)
data=im2double(Img);
sumn=[];
sumd=[];
pixln=0;
pixld=0;
[ro col]=size(data);

for i=1:ro;
    for j=1:col;
        for m=-masksize:masksize;
            for n=-masksize:masksize;
                if (i+m>0 && i+m<ro && j+n>0 && j+n<col && ...      % To keep indices in limit
                        masksize+m>0 && masksize+m<ro && ...
                        masksize+n>0 && masksize+n<col) 
                    
                    pixl1=(data(i+m,j+n)).^(Q+1);                   % Application of Formula
                    pixl2= (data(i+m,j+n)).^Q;
                    pixln=pixln+pixl1;                              % Application of Summation
                    pixld=pixld+pixl2;
                
                end
            end
        end
       Im(i,j)=(pixln/pixld);
       pixln=0;
       pixld=0;
    end
end