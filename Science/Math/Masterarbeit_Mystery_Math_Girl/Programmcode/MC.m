%Diese Funktion soll mir a(lambda) plotten und die Werte an Sützstellen
%ausgeben

function a=MC(lambda,n,l,seed) %lambda ist Vektor
a=zeros(1,length(lambda));
for i=1:length(lambda)
    a(i)=MonteCarlo(lambda(i),n,l,seed);
    
   
end
plot(lambda,a,'r')
xlabel('lambda')
ylabel('a(lambda)')
end