[norm,imgMean,x,y,z] = normalised();

eta = 1e-9;

pcs = 3;

[W_new] = init_weights(pcs,3);
for i = 1:50
    for idx = 1:x*y
        [W_new,output] = updateW(eta, norm(idx,:), W_new, 1,pcs);
    end
end
pcs = 3
newData = W_new(1:pcs,:)*norm'; 
[im1,rowData] = decode(W_new(1:pcs,:),newData,imgMean,x,y,z);

imshow(im1);