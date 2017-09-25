function U = gaussElimRandomPivot(A)

[m,n] = size(A);
k=1;
j=1;

while (j <= m) && (k <= n)
    
    a = abs(A(j:end,k));
    
    if max(a) == 0
        
        k = k+1;
        continue
        
    elseif (max(a) > 0) && (A(j,k) == 0)
        
        b = A(j:end,k);
        index = find(b~=0,1);
        index = index+j-1;
        
        temp = A(j,:);
        A(j,:) = A(index,:);
        A(index,:) = temp;
        
    end
    
    for i=j+1:m
        A(i,:) = A(i,:) - (A(i,k)/A(j,k))*A(j,:);
    end
    j=j+1;
    k=k+1;
end
U = A;