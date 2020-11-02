function [N] = BSplineBasis(i,k,t,x)
%BSPLINE 此处显示有关此函数的摘要
%   此处显示详细说明
% t=[t1,t2,t3,...,tn]
% Nik(x)

if k==1
   if x>=t(i)&&x<t(i+1)
       N=1;
   else
       N=0;
   end
else
    if t(i+k-1)-t(i)==0
        left=0;
    else
        left=(x-t(i))/(t(i+k-1)-t(i))*BSplineBasis(i,k-1,t,x);
    end
    if t(i+k)-t(i+1)==0
        right=0;
    else
        right=(t(i+k)-x)/(t(i+k)-t(i+1))*BSplineBasis(i+1,k-1,t,x);;
    end
    N=left+right;
end


end

