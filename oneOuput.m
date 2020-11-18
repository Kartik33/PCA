[norm1,imgMean,x,y,z] = normalised();
norm = norm1;
eta = 1e-9;

pcs = 1;

[W_new] = init_weights(pcs,3);
evi = 0;
out = 0;
evs = [];
ens = [];
itr = [15,200,150]
prevEV = 0;
for j = 1:3
    for i = 1:itr(j)
        for idx = 1:x*y
            [W_new,output] = updateWOne(eta,norm(idx,:) , W_new, 1,pcs);
        end
    end
    rd = (W_new'*W_new);
    rd = rd + prevEV;
    rd = eye - rd;
    norm = norm*rd;
    prevEV = rd+prevEV;
    evi = W_new;
    out = output;
    evs = [evs;evi];
    ens = [ens; out];
    disp(j)
end

pcs = 1
newData = evs(1:pcs,:)*norm1'; 
[im2,rowData] = decode(evs(1:pcs,:),newData,imgMean,x,y,z);

imshow(im2);