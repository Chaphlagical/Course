function [delta] = Parameter_Chordal(X,Y)
%PARAMETER_CHORDAL �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
delta=sqrt((X(2:length(X))-X(1:length(X)-1)).^2+(Y(2:length(X))-Y(1:length(X)-1)).^2);
end

