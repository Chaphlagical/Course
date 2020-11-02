function [x,y] = BSpline(dx,dy,k,feature)
%BSPLINE 此处显示有关此函数的摘要
%   此处显示详细说明
n=length(dx);
T=Knot(feature);
t=min(T):0.01:max(T);
x=zeros(1,length(t)-1);y=zeros(1,length(t)-1);
for i=1:n
    for j=1:length(t)-1
        x(j)=x(j)+BSplineBasis(i,k,T,t(j))*dx(i);
        y(j)=y(j)+BSplineBasis(i,k,T,t(j))*dy(i);
    end
end

end

