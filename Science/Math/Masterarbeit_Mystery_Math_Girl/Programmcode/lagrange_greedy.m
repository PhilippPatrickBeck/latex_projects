function [samples,value] = lagrange_greedy(cost,L)
samples = Lagrange(cost,L);
samples = floor(samples);
value = getValue(samples,L)
for l = 1:(L-1)

    while 1
       tempSamples = samples;
       tempSamples( L -( l-1)) = tempSamples(L-(l-1)) -1;
       o = [ones(1,L-l),zeros(1,l)];
       
       
       tempSamples = tempSamples + o;
       
       tempValue = getValue(tempSamples,L);
            %(tempSamples(l) > tempSamples(l-1))
       tempValue
       if ( tempValue > value)
            break; 
       end
       value = tempValue;
       samples = tempSamples;
    end
end



end