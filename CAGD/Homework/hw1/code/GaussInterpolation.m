function [lambda,u,condA] = GaussInterpolation(X,Y)
%GAUSSFITTING �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
u=X;
A=GaussFunction(X',X);
meanY=ones(length(Y),1)*mean(Y);
lambda=[mean(Y); A^(-1)*(Y-meanY')'];

end

