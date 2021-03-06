function [A] = BezierSplineMatrix(n,delta,flag)
%BEZIERSPINE 此处显示有关此函数的摘要
%   此处显示详细说明
A=zeros(3*n-2);

% interpolation
for j=0:n-1
    A(j+1,3*j+1)=1;
end
% C1
for j=1:n-2
    A(n+j,3*j)=delta(j+1);
    A(n+j,3*j+1)=-delta(j)-delta(j+1);
    A(n+j,3*j+2)=delta(j);
end
% C2
for j=1:n-2
   A(2*n-2+j,3*j-1)=delta(j+1)^2;
   A(2*n-2+j,3*j)=-2*delta(j+1)^2;
   A(2*n-2+j,3*j+1)=delta(j+1)^2-delta(j)^2;
   A(2*n-2+j,3*j+2)=2*delta(j)^2;
   A(2*n-2+j,3*j+3)=-delta(j)^2;
end
% end condition
if flag=="Natural"
    A(3*n-3,1)=1;A(3*n-3,2)=-2;A(3*n-3,3)=1;
    A(3*n-2,3*n-4)=1;A(3*n-2,3*n-3)=-2;A(3*n-2,3*n-2)=1;
elseif flag=="Close"
    A(3*n-3,3*n-3)=delta(2);A(3*n-3,1)=-delta(1)-delta(2);A(3*n-3,2)=delta(1);
    A(3*n-2,3*n-4)=delta(2)^2;A(3*n-2,3*n-3)=-2*delta(2)^2;A(3*n-2,1)=delta(2)^2-delta(1)^2;A(3*n-2,2)=2*delta(1)^2;A(3*n-2,3)=-delta(1)^2;
elseif flag=="Bessel"
    A(3*n-3,1)=-1;A(3*n-3,2)=1;
    A(3*n-2,3*n-3)=-1;A(3*n-2,3*n-2)=1;
end


end

