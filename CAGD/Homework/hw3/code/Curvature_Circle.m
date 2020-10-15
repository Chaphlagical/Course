function [X,Y] = Curvature_Circle(a,b,x,y)
%CURVATURE_CIRCLE 此处显示有关此函数的摘要
%   此处显示详细说明

k=(a*b)/((a^2*(y/b)^2+b^2*(x/a)^2)^(3/2));

c1x=-a*y/b;
c1y=b*x/a;
c2x=-x;
c2y=-y;
e1x=c1x/sqrt(c1x^2+c1y^2);
e1y=c1y/sqrt(c1x^2+c1y^2);
bx=c2x-(c2x*e1x+c2y*e1y)*e1x;
by=c2y-(c2x*e1x+c2y*e1y)*e1y;
e2x=bx/sqrt(bx^2+by^2);
e2y=by/sqrt(bx^2+by^2);

Ox=x+1/k*e2x;
Oy=y+1/k*e2y;

t=0:0.01:2*pi;
X=Ox+1/k*cos(t);
Y=Oy+1/k*sin(t);


end

