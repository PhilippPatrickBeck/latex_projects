function ret=Sampleanzahl(epsilon)
p=2;
L=ceil((log(epsilon)-log(2/(pi*sqrt(3))))/log(1/2))%berechne Levelanzahl
a=zeros(1,L); %Kontruiere bisher leere Vektoren für die Variablen bl usw.
n=zeros(1,L);
b=zeros(1,L);
c=zeros(1,L);
delta=(epsilon*pi/2)-(1/sqrt(3))*(1/2)^L;
for i=1:L
    b(i)=(1/2)^i;
    c(i)=(1/2)^(-i);
end
s=dot(c.^((p-1)/p),b)^(1/(p-1));
for i=1:L
    a(i)=delta^(-(p/(p-1)))*b(i)*c(i)^(-1/p)*s;
end
n=ceil(a)
e=MLMCplot([0.1,0.3,0.5,0.7,1],n)
end