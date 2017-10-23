function [sum] = EVENS(a)

%calcluate all of the evens from 
sum = 0;
for i = 0:1:a
    sum = sum + 2*i;
end
