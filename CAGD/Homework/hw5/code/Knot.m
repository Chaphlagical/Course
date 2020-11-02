function [s] = Knot(feature)
%feature:1-C2, 2-line 3-shape point
s=zeros(1,3);
for i=0:length(feature)-1
    s=[s repmat(i,[1,feature(i+1)])];
end
s=[s repmat(length(feature)-1,[1,3])];
end

% line 0 0 0 | 0 0 | 1 1 | 2 2 | 3 3 | 3 3 3
% C2 0 0 0 | 0 | 1 | 2 | 3 | 3 3 3
% shape 0 0 0 | 0 0 0 | 1 1 1 | 2 2 2 | 3 3 3 | 3 3 3