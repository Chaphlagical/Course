function [X, Y] = Ellipse(a, b)
%ELLIPSE �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
t=0:0.01:360;
X=a*cos(t);
Y=b*sin(t);
end

