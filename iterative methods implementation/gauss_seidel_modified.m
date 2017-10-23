% gauss-seidel iteration

function [x] = gauss_seidel_modified(A,b,numIterations,x0)
    % decompose A into sum of L,U
    U = triu(A,1);
    L = tril(A,0);
    L_i = inv(L);

    %solve given differential equation u''(x) = 1 with initial conditions
    syms u(x)
    ode = diff(u,x,2) == 1
    cond1 = u(1) == 1;
    cond2 = u(-1) == 1;
    uSol(x) = dsolve(ode, [cond1 cond2]);
    
    % do first iteration
    x = L_i*(b-U*x0);
      
    % do iteration
    for k = 1:numIterations
        x1 = L_i*(b-U*x);
        x = x1;
    end
    
    x = [1;x;1];
    z = (-1:.01:1)';
 
    %solve and plot the solution on z
    f = @(x) uSol(x);
    plot(z, x);
    
end