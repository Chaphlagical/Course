function [lambda] = PolynomialInterpolation(X,Y)
%POLYNOMIALFITTING �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
A=X'.^(0:length(X)-1);
lambda=A^(-1)*Y';

end

