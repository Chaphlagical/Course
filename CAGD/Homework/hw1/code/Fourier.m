function [y] = Fourier(lambda,x,n)
%FOURIER �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
y=0;
for i=0:n
   if mod(i,2)==0
       y=y+lambda(i+1)*cos(i*pi*x);
   else
       y=y+lambda(i+1)*sin((i+1)*pi*x);
   end
end
end

