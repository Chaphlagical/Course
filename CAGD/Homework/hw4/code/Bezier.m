function [x,y] = Bezier(InputX,InputY)
%BEZIER 此处显示有关此函数的摘要
%   此处显示详细说明
t=(0:0.001:1)';
n=length(InputX);
stackX=repmat(InputX,length(t),1);
stackY=repmat(InputY,length(t),1);
for i=1:n
    for j=1:n-i
        stackX=[stackX t.*stackX(:,j)+(1-t).*stackX(:,j+1)];
        stackY=[stackY t.*stackY(:,j)+(1-t).*stackY(:,j+1)];
    end
    if i<n
        stackX=stackX(:,n-i+2:length(stackX(1,:)));
        stackY=stackY(:,n-i+2:length(stackY(1,:)));
    end
end
x=stackX;
y=stackY;
end
