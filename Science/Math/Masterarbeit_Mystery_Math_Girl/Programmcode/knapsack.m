
function [samples,value] = knapsack(cost,L)
    samples = getStartSamples(cost,L);
    value = getValue(samples,L);
    for l =2:L
        if samples(l-1) <= 2
            if (samples(l) == 1 && l < L)
                warning('Level Anzahl zu hoch fuer dieses Level. Sampleanzahl muss streng monoton fallend sein.');
            end
            
            break;
        end
        while 1
            tempSamples = samples;
            tempSamples(l-1) = tempSamples(l-1)- 2;
            tempSamples(l) = tempSamples(l) +1;
            tempValue = getValue(tempSamples,L);
            %(tempSamples(l) > tempSamples(l-1))
            if ( tempValue > value)
               break; 
            end
            value = tempValue;
            samples = tempSamples;
        end
    end
    
    %value = (2 /(pi * sqrt(3)))*(1/2)^L+(2/pi)*sqrt(value);
end

function samples=   getStartSamples(cost,L)
    samples = ones(1,L);
    geo_sum = -(1-2^(L+1))-3;
    if(geo_sum >= cost)
        error('Level ist zu hoch fuer diese Kosten');
    end
    samples(1) = floor((cost-geo_sum)/2); 
end

%function v = getValue(samples)
%    v = 0;
%    for i = 1:size(samples,2)
%        v = v + (1 / 4^i)*(1/samples(i));
%    end
%end