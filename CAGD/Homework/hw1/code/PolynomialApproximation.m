function [lambda] = PolynomialApproximation(X,Y,n)
%POLYNOMIALAPPROXIMATION �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
A=X'.^(0:n);
lambda=(A'*A)^(-1)*A'*Y';

end

