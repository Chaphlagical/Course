function [X, Y] = Ellipse(a, b)
%ELLIPSE 此处显示有关此函数的摘要
%   此处显示详细说明
t=0:0.01:360;
X=a*cos(t);
Y=b*sin(t);
end

