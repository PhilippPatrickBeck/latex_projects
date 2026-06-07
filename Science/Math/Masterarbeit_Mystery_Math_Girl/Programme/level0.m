function ret=MLMC2(lambda,n)%n ist ein Vektor der die Anzahl an Samples pro Level enthält 
o=MonteCarlo(lambda,n(1),0,1)  
l=2;
E=zeros(1,size(n,2)-1); %size(n)= Anzahl Level
for i =n(2:end)
   a=MonteCarlo(lambda,i,l-1,l); %berechnet Y_l
   b=MonteCarlo(lambda,i,l-2,l); %berechnet Y_l-1
   c=a-b; 
   E(l-1)=c;
   l = l+1; %geht in das nächste Level
    
end
ret=sum(E)+o;
end