function [L,samples,value] = opt_level_lagrange_neu(cost)
value = 10000;
for l = 1: 30
    [samples,tempValue] = discrete_opt(cost,l);
    if value > tempValue
        L = l;
        value = tempValue;
    end
end