function [weights,output] = updateW(lr, x, W, iterations,pca)
    y = W*x.';
    y = reshape(y,[pca,1]);
    yt = reshape(y,[1,pca]);
    LT = tril(y*yt);
    a = y.*repmat(x,[pca 1]);
    b = LT*W;
    weights = W+ lr/iterations*(a - b);
    output = y;
end


