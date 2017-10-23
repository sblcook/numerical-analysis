% jacobi method solved with numIterations number of iterations, given a
% matrix A, vector b, initial solution x0, and the number of iterations

function [x,k] = jacobi_modified(A,b,numIterations,x0)
    % decompose A into sum of D,R
   
    D = diag(diag(A));
    R = A - D;
    D_i = inv(D);
    
    %solve given differential equation u''(x) = 1 with initial conditions
    syms u(x)
    ode = diff(u,x,2) == 1
    cond1 = u(1) == 1;
    cond2 = u(-1) == 1;
    uSol(x) = dsolve(ode, [cond1 cond2]);
    
    % do first iteration
    x = D_i*(b-R*x0);
    
    % do iterations
    for k=1:numIterations
        x1 = D_i*(b-R*x);
        x = x1;
    end
    
    
    x = [1;x;1];
    z = (-1:.01:1)';
 
    %solve and plot the solution on z
    f = @(x) uSol(x);
    plot(z, x);

    
end