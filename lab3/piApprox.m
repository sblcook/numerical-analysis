function [tanDiff, sinDiff] = piApprox(termsInSum)

tanSeries = 0; %arctan(x) = series
sinSeries = 0;

n = termsInSum;

for i=0:n
    
    tanSeries = tanSeries + ( ((-1)^n) / (2*n + 1) ); %x = 1
    sinSeries = sinSeries + ( (1/(2^(2*n))) * nchoosek(2*n, n) / ((2*n) + 1) );
    
end

tanSeries
sinSeries