function [tanDiff, sinDiff] = piApprox(termsInSum)

format long;

tanSeries = 0; %arctan(x) = series
sinSeries = 0; %arcsin(x) = series

n = termsInSum;
xForSin = 0.5;

for i=0:n

    tanSeries = tanSeries + ( ((-1)^i) / ((2*i) + 1) ); %x = 1
    sinSeries = sinSeries + ( (1/(2^(2*i))) * nchoosek(2*i, i) * (xForSin^(2*i + 1)) / ((2*i) + 1) );
    
end

sinDiff = abs((6 * sinSeries) - pi);
tanDiff = abs((4 * tanSeries) - pi);