function v = getValue(samples,L)
    v = 0;
    for i = 1:size(samples,2)
        v = v + (1 / 4^i)*(1/samples(i));
    end
    v = (2 /(pi * sqrt(3)))*(1/2)^L+(2/pi)*sqrt(v);
end