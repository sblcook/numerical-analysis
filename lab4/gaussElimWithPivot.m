%given any n x m matrix as input,
%perfrom gaussian elimination with pivoting to an upper triangular matrix

function [upperTriMatrix] = gaussElimWithPivot (A)

[m, n] = size(A);

for j=1:n
    
    
    
    %find largest pivot
    if(A(j, j) ~= 0)
            largest = abs(A(j, j));
    end
    for i=j:m
        if(abs(A(i, j)) > largest);
            largest = abs(A(i, j));
            largestRowNum = i;
        end
    end
    %swap row 1 with largestRowNum
    temp = A(largestRowNum, :)
    A(largestRowNum,:) = A(1,:)
    A(1,:) = temp
    
    %begin gauss elimination
    for i=j+1:m
        U(i, :) = U(i,:) - 
    end
        
end