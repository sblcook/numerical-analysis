function ROOTS(a, b, c)
%function to calculate real roots of an equation

    %calculate b^2 - 4ac to determine qualities of roots
    underSquareRoot = b*b - (4 * a * c);

    if underSquareRoot > 0
        %two real, unequal roots
        disp('Two real roots! Roots are: ');
        calculateRoots(a, b, c);
    elseif underSquareRoot == 0
        %two real, equal roots
        disp('Two real and equal roots! Roots are: ')
        calculateRoots(a, b, c);
    elseif underSquareRoot < 0
        %two imaginary roots
        disp('Two complex roots!')
    end
end

function calculateRoots(a, b, c)

    root1 = (-b + sqrt(b * b - (4 * a * c)))/2 * a;
    root2 = (-b - sqrt(b * b - (4 * a * c)))/2 * a;
    
    disp(root1);
    disp(root2);
    
end




