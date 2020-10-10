function [lambda] = FourierApproximation(X,Y,n)
%FOURIERAPPROXIMATION �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
lambda=zeros(n+1,1);
A=zeros(length(X),n+1);
for i=1:length(X)
    for j=0:n
        if mod(j,2)==0
            A(i,j+1)=cos(j*pi*X(i));
        else
            A(i,j+1)=sin((j+1)*pi*X(i));
        end
    end
end
lambda=(A'*A)^(-1)*A'*Y';
end

