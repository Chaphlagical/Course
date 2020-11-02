function [dx,dy] = DeBoorPoints(feature,X,Y)
%DEBOORPOINTS 此处显示有关此函数的摘要
%   此处显示详细说明
%k0 k1 k2 ... kn
feature
n=sum(feature)-1;
t=Knot(feature);
t
s=t(4:length(t)-3);
A=zeros(n+3,n+3);
kx=zeros(n+3,1);ky=zeros(n+3,1);

% begin
if feature(1)==1%C2
   A(1,1)=1;
   A(2,1)=2;A(2,2)=-3;A(2,3)=1;
   kx(1)=X(1);ky(1)=Y(1);
elseif feature(1)==2%line
   A(1,1)=1;
   A(2,1)=2;A(2,2)=-3;A(2,3)=1;
   A(3,3)=1;
   kx(1)=X(1);ky(1)=Y(1);
   kx(3)=X(1);ky(3)=Y(1);
elseif feature(1)==3%shape point
   A(1,1)=1;
   A(2,1)=2;A(2,2)=-3;A(2,3)=1;
   A(3,3)=1;
   A(4,4)=1;
   kx(1)=X(1);ky(1)=Y(1);
   kx(3)=X(1);ky(3)=Y(1);
   kx(4)=X(1);ky(4)=Y(1);
end

%inner
idx=2+feature(1);
for i=2:length(feature)-1
    if feature(i)==1
        A(idx,idx-1)=BSplineBasis(idx-1,4,t,s(idx-1));
        A(idx,idx)=BSplineBasis(idx,4,t,s(idx-1));
        A(idx,idx+1)=BSplineBasis(idx+1,4,t,s(idx-1));
        kx(idx)=X(i);ky(idx)=Y(i);

    elseif feature(i)==2
        if feature(i-1)~=2
            A(idx,idx)=2;
            A(idx,idx+1)=-3;
            A(idx,idx+2)=1;
            A(idx+1,idx+1)=1;
            kx(idx+1)=X(i);ky(idx+1)=Y(i);
        elseif feature(i+1)~=2
            A(idx,idx)=1;
            A(idx+1,idx-1)=1;
            A(idx+1,idx)=-3;
            A(idx+1,idx+1)=2;
            kx(idx)=X(i);ky(idx)=Y(i);
        else
            A(idx,idx)=1;
            A(idx+1,idx+1)=1;
            kx(idx)=X(i);ky(idx)=Y(i);
            kx(idx+1)=X(i);ky(idx+1)=Y(i);
        end
    elseif feature(i)==3
        A(idx,idx-1)=2;
        A(idx,idx)=-3;
        A(idx,idx+1)=1;
        A(idx+1,idx+1)=1;
        A(idx+2,idx+1)=1;
        A(idx+2,idx+2)=-3;
        A(idx+2,idx+3)=2;
        kx(idx+1)=X(i);ky(idx+1)=Y(i);
    end
    idx=idx+feature(i);
end

% end
if feature(length(feature))==1
   A(n+2,n+1)=1;A(n+2,n+2)=-3;A(n+2,n+3)=2;
   A(n+3,n+3)=1;
   kx(n+3)=X(length(X));ky(n+3)=Y(length(Y));
elseif feature(length(feature))==2
   A(n+1,n+1)=1;
   A(n+2,n+1)=1;A(n+2,n+2)=-3;A(n+2,n+3)=2;
   A(n+3,n+3)=1;
   kx(n+1)=X(length(X));ky(n+1)=Y(length(Y));
   kx(n+3)=X(length(X));ky(n+3)=Y(length(Y));
elseif feature(length(feature))==3
   A(n,n)=1;
   A(n+1,n+1)=1;
   A(n+2,n+1)=1;A(n+2,n+2)=-3;A(n+2,n+3)=2;
   A(n+3,n+3)=1;
   kx(n)=X(length(X));ky(n)=Y(length(Y));
   kx(n+1)=X(length(X));ky(n+1)=Y(length(Y));
   kx(n+3)=X(length(X));ky(n+3)=Y(length(Y));
end
A
dx=A\kx;
dy=A\ky;
end

