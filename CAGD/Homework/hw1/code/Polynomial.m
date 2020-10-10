function [y] = Polynomial(lambda,x,n)
%POLYNOMIAL 此处显示有关此函数的摘要
%   此处显示详细说明
x=x'.^(0:n);
y=(x*lambda)';
end

