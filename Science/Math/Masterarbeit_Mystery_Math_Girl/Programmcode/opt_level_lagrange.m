function [L,value] = opt_level_lagrange(cost)

L = 0;
maxL = floor((log( cost + 2))/(log(2))) -1;
temp = floor(Lagrange(cost,maxL));

for i = 1:size(temp,2)
    if temp(i) == 0
        maxL = i-1;
        break;
    end
end

value = 10000;
for l = 1: maxL
    [samples,tempValue] = discrete_opt(cost,l);
    if value > tempValue
        L = l;
        value = tempValue;
    end
end