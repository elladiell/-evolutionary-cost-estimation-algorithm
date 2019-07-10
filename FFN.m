function [a]= FFN(X)
a=[];
for i=1:length(X)
    a=[a ff(X(i,:))];
end