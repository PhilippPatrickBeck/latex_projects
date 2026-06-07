function ret=FehlerMC(n,l,seed)
lambda=1;
ret=zeros(1,length(n));
for i=1:length(n)
    erg=MonteCarlo(lambda,n(i),l,seed);
    ret(i)=abs(((2*lambda)/pi)-erg);
   
end
