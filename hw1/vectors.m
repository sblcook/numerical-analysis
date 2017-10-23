function [moduleU, moduleV, product, angle] = vectors(u, v)
%this function returns the two norm of vectors u&v, the scalar product of u
%and v, and the angle(in radians) between the two based on the norms and
%scalar product

%calling functions
moduleU = module(u);
moduleV = module(v);
product = scalarProd(u, v);
angle = vectorAngle(moduleU, moduleV, product);
end

%this calculates the 2norm of a given vector
function module = module(vector)

sum = 0;
vectorLength = length(vector);
%iterate through the length of the vector, squaring each element and adding
%it to a sum
for i=1:1:vectorLength
    sum = sum + (vector(i) * vector(i));
end

%square root of the sum gives 2 norm
module = sqrt(sum);
end

%calculates scalar product of two given vectors
function product = scalarProd(u, v)

product = 0;
%check that they are the same length
if length(u) ~= length(v)
    return
else
    %essnetially finding dot product by multiplying u(i) by v(i) and adding
    %it to a sum, when u and v are vectors
    vectorLength = length(u);
    for i=1:1:vectorLength
        product = product + u(i) * v(i);
    end
end
    
end

%calculate the angle between vectors u and v based on norms and scalar
%product already calculated
function angle = vectorAngle(moduleU, moduleV, product)

x = product/(moduleU * moduleV)

%in radians
angle = acos(x)

end






