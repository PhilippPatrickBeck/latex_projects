function L = opt_level_knapsack(cost)
L = 0;
maxL = floor((log( cost + 2))/(log(2))) -1;
value = 10000;
for l = 1: maxL
    [samples,tempValue] = knapsack(cost,l);
    if value > tempValue
        L = l;
        value = tempValue;
    end
end