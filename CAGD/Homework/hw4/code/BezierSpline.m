function [x,y] = BezierSpline(X,Y)
%BEZIERSPLINE 此处显示有关此函数的摘要
%   此处显示详细说明
x=[];
y=[];

for i=0:(length(X)-1)/3-1
    inputX=[X(3*i+1) X(3*i+2) X(3*i+3) X(3*i+4)];
    inputY=[Y(3*i+1) Y(3*i+2) Y(3*i+3) Y(3*i+4)];
    [outputX, outputY]=Bezier(inputX,inputY);
    x=[x outputX];
    y=[y outputY];
end
end

