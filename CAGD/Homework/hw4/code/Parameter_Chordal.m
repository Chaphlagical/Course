function [delta] = Parameter_Chordal(X,Y)
%PARAMETER_CHORDAL 此处显示有关此函数的摘要
%   此处显示详细说明
delta=sqrt((X(2:length(X))-X(1:length(X)-1)).^2+(Y(2:length(X))-Y(1:length(X)-1)).^2);
end

