function [lambda,u,condA] = GaussInterpolation(X,Y)
%GAUSSFITTING 此处显示有关此函数的摘要
%   此处显示详细说明
u=X;
A=GaussFunction(X',X);
meanY=ones(length(Y),1)*mean(Y);
lambda=[mean(Y); A^(-1)*(Y-meanY')'];

end

