function [samples,value] = Lagrange(cost,L)

samples = zeros(1,L);

geo_sum = (1 - (1/sqrt(2))^(L+1))/(1 - (1/sqrt(2))) -1;

    for i = 1:L
        samples(i) = (sqrt(2^i)*cost)/(4^i * geo_sum);
    end
value = getValue(samples,L);
end

%function v = getValue(samples)
%    v = 0;
%    for i = 1:size(samples,2)
%        v = v + (1 / 4^i)*(1/samples(i));
%    end
%end