function [y] = Fourier(lambda,x,n)
%FOURIER 此处显示有关此函数的摘要
%   此处显示详细说明
y=0;
for i=0:n
   if mod(i,2)==0
       y=y+lambda(i+1)*cos(i*pi*x);
   else
       y=y+lambda(i+1)*sin((i+1)*pi*x);
   end
end
end

