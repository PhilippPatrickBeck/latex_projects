function ret=MLMCplot(lambda,n)%n ist ein Vektor der die Anzahl an Samples pro Level enthält 
%lambda ist ein Vektor der die unterschiedlichen Lambdas enthält
ret=zeros(1,length(lambda));
f=zeros(1,length(lambda));
for j=1:length(lambda)
    ret(j)=MLMC(lambda(j),n);
    f(j)=abs((2*lambda(j))/pi-ret(j));
end
hold on
plot(lambda,ret,'r')
plot(lambda,2*lambda/pi,'--')
xlabel('lambda')
ylabel('a(lambda)')
legend('a(lambda) approx','exakte Lösung');
%plot(lambda,f)
%xlabel('lambda')
%ylabel('Fehler')
end
