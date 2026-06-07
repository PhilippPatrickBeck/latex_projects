function ret=MonteCarlo(Lambda,n,l,x,alpha)
m=2^l; %Anzahl Stützstellen
stuetzstellen=linspace(0,1,m+1)';%Unterteilung des Intervalls [0,1]
Y=zeros(n,1);
for i=1:n
    f=zeros(m,1);
    indikator=zeros(m,1);
    %x=rand(1)/2; %Abstand zur nächstgelegenen Linie
    %alpha=rand(1)*pi/2; %Winkel der Nadel mit nächster Linie
    for j=1:m
     if x(i)<=1/2*stuetzstellen(j+1,1)*sin(alpha(i)) %Testen ob Linie getroffen wird
         f(j,1)=1;
     end
     if Lambda>stuetzstellen(j,1) && Lambda<=stuetzstellen(j+1,1) %überprüfen wo die Länge der Nadel liegt
         indikator(j,1)=1;
     end
      %Y_l für ein Nadelwurf
    end
    Y(i,1) = dot(f,indikator);
    
end
ret = sum(Y(:,1))/n;
%f=ret-(2*Lambda)/pi berechnet den Fehler
