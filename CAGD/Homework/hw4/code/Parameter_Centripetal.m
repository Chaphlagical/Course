function [delta] = Parameter_Centripetal(X,Y)
%PARAMETER_CENTRIPETAL 此处显示有关此函数的摘要
%   此处显示详细说明
delta=sqrt(sqrt((X(2:length(X))-X(1:length(X)-1)).^2+(Y(2:length(X))-Y(1:length(X)-1)).^2));
end