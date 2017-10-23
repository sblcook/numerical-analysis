% gauss-seidel iteration

function [x,k] = gauss_seidel_modified(A,b,numIterations,x0)
    % decompose A into sum of L,U
    U = triu(A,1)
    L = tril(A,0)
    L_i = inv(L)

    % do first iteration
    x = L_i*(b-U*x0);
    
    % do first convergence check
    res = max(abs(x - x0));
    
    % do iteration
    k = 1;
    for k = 1:numIterations
        x1 = L_i*(b-U*x);
        res = max(abs(x1-x));
        x = x1;
        k = k+1;
    end
    
end