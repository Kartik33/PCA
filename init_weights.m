function [W_new] = init_weights(pcs,ev)

W_init = normrnd(0,0.5,[pcs,ev]);
W_new = W_init./vecnorm(W_init,2,2)

end