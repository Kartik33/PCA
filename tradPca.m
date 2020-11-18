[norm,imgMean,x,y,z] = normalised();

co = cov(norm);

[v,n] = eig(co);

[d n] = sort(diag(n),'descend');

v = v(:,n);

pcs = 2;
newData = v(:,1:pcs)'*norm'; 
[im,ro] = decode(v(:,1:pcs)',newData,imgMean,x,y,z);