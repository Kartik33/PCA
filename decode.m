function [im,rowData] = decode(v,newData,imgMean,x,y,z)
    disp(size(v))
    rowData = (v'*newData)'+imgMean;
    im = reshape(rowData,[x,y,z]);
    im = uint8(im);
    imshow(im);
end