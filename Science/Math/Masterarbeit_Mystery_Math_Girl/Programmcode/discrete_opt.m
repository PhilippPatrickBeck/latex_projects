function[samples,value] =  discrete_opt(cost,L)
[cont_samples,opt_value]  = Lagrange(cost,L);
samples = floor(cont_samples);
    for i =  1:size(samples,2)
        if samples(i) < 1
            L = i-1;
            samples = samples(1:i-1);
            warning('Cost to low for this amount of Levels. Please decrease L or increase the cost.');
            break;
        end
    end
tempSamples = samples;

while  1
   tempSamples(1) = tempSamples(1)+1;
   if constraint(cost ,tempSamples) == 0
       break;
   end
end
tempSamples(1) = tempSamples(1) -1;
samples = tempSamples;
value = getValue(samples,L);
end

function isInConstraint =  constraint(cost,samples)
    temp_cost = 0;
    for i = 1:size(samples,2)
        temp_cost = temp_cost + 2^i * samples(i);
    end
    isInConstraint = (temp_cost <= cost);
end
%function v = getValue(samples)
 %   v = 0;
  %  for i = 1:size(samples,2)
   %     v = v + (1 / 4^i)*(1/samples(i));
   % end
%end