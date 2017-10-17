% jacobi

function [x,k] = jacobi(A,b,e,x0)
    % decompose A into sum of D,R
    D = diag(diag(A))
    R = A - D
    D_i = inv(D)
    norm(D_i*R)

    % do first iteration
    x = D_i*(b-R*x0);
    
    % do first convergence check
    res = max(abs(x - x0));
    
    % do iteration
    k = 1;
    while (res > e)
        x1 = D_i*(b-R*x);
        res = max(abs(x1-x));
        x = x1;
        k = k+1;
    end
    
end