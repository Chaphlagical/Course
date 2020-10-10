function [y] = Gauss(lambda,u,x)
%GAUSS 此处显示有关此函数的摘要
%   此处显示详细说明
y=[];
for i=x
    y=[y [1 GaussFunction(u,i)]*lambda];
end
end

