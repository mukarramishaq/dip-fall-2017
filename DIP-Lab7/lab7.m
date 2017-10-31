%%%
%Author: Mukarram Ishaq
%Class:  BESE-5A
%CMS ID: 111134
%%%

img = imread('text.png');
dImg = im2double(img);
binImg = imbinarize(dImg);
cc = bwconncomp(~binImg);
j = 1;
for i = 1:cc.NumObjects
    newImg = false(size(binImg));
    
    if size(newImg(cc.PixelIdxList{i})) == [117 1]
        newImg(cc.PixelIdxList{i})= true;
        newImg(cc.PixelIdxList{i+1})= true;
        imwrite(newImg,sprintf('C:/Users/mishaq.bese14seecs/Desktop/DIP-Lab7/sep_ch/%d.png',j));
        j = j+1;
    elseif size(cc.PixelIdxList{i}) == [429 1]   
            
    else
         newImg(cc.PixelIdxList{i}) = true;
         imwrite(newImg,sprintf('C:/Users/mishaq.bese14seecs/Desktop/DIP-Lab7/sep_ch/%d.png',j));
         j = j+1;
    end
    
end