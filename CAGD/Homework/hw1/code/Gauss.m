function [y] = Gauss(lambda,u,x)
%GAUSS �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
y=[];
for i=x
    y=[y [1 GaussFunction(u,i)]*lambda];
end
end

