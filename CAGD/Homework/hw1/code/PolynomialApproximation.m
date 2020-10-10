function [lambda] = PolynomialApproximation(X,Y,n)
%POLYNOMIALAPPROXIMATION 此处显示有关此函数的摘要
%   此处显示详细说明
A=X'.^(0:n);
lambda=(A'*A)^(-1)*A'*Y';

end

