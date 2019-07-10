function [SA]=sortm(A,FF)
N = length(FF);
for i = 2:N
    for j = N:-1:i
        if FF(j-1) > FF(j)
            x=FF(j-1); 
            FF(j-1)=FF(j); 
            FF(j)=x;
            x=A(j-1,:); 
            A(j-1,:)=A(j,:); 
            A(j,:)=x;
        end
    end
end
SA=A;
end