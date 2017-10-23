function [L, U] = lu_decomposition(A)
% standard LU decomposition

[m,n] = size(A);
L = eye(m);
U = A;
j = 1;
k = 1;
while (j <= m) && (k <= n)
       
    if(U(j,j) ~= 1)
        temp = eye(n);
        temp(j,j)=U(j,j);
        L = L * temp;
        U(j,:) = U(j,:)/U(j,j);
    end
        
    if(j ~= m)
        for i = j+ 1:m
            temp = eye(m);
            temp(i, j) = U(i, j);
            L = L * temp;
            U(i,:) = U(i,:) - (U(i,k)/U(j,k))*U(j,:); % perform type III operations 

        end
    end
    j=j+1;
    k=k+1;
end


end