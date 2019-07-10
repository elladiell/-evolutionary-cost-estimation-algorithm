function [a]= kr(N,T)
X=pare(3*N);
X=sortm(X,FFN(X));
X=X(1:N,:);
Y=X;
y=X(1,:);
V=zeros(N,2);
c1=1.9;
c2=1.9;
Z1=[];
Z2=[];
for i=1:T
    FFX=FFN(X);
    FFY=FFN(Y);
    ffy=ff(y);
    Z1=[Z1 i];
    Z2=[Z2 ffy];
    for j=1:N
        if FFX(j)<FFY(j)
            Y(j,:)=X(j,:);
        end
        if FFY(j)<ffy
            y=Y(j,:);
        end
    end
    for j=1:N
        V(j,:)=V(j,:)+c1.*rand.*(Y(j,:)-X(j,:)+c2.*rand.*(y-X(j,:)));
        X(j,:)=X(j,:)+V(j,:);
    end
end
FFX=FFN(X);
FFY=FFN(Y);
ffy=ff(y);
for j=1:N
    if FFX(j)<FFY(j)
        Y(j,:)=X(j,:);
    end
    if FFY(j)<ffy
        y=Y(j,:);
    end
end
ffy=ff(y);
Z1=[Z1 T+1];
Z2=[Z2 ffy];
plot(Z1,Z2);
a=y;
end
