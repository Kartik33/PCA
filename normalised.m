function [norm,imgMean,x,y,z] = normalised()

rawImg = double(imread('kk1478.jpeg'));

[x,y,z] = size(rawImg);
img = reshape(rawImg,[x*y,z]);

imgMean = mean(img,1);

norm = img-imgMean;

end