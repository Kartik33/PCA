function [weights,output] = updateWOne(lr, x, W, iterations,pca)
    y = W*x.';
    delW = lr*y*(x-(W*y));
    weights = W+delW;
    output = y;
end


