close all;
clear all;
n=[50,100,200,400,800,1000,1500,2000];
a=FehlerMC(n,10,6);
plot(n,a)
title('Abweichung von 2*lambda/pi')
xlabel('Samples')
ylabel('Fehler')