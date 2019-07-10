function [a]= pare(N)
a=[];
for i=1:N
    b=[];
    for i=1:2
        b=[b randi([0 10])];
    end
    a=[a; b];
end
end