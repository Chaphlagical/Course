function [lambda] = PolynomialInterpolation(X,Y)
%POLYNOMIALFITTING 此处显示有关此函数的摘要
%   此处显示详细说明
A=X'.^(0:length(X)-1);
lambda=A^(-1)*Y';

end

