function [solution, real, complex] = Roots(pol_1, pol_2)
    % Variables
    solution = [];
    real     = 0;
    complex  = 0;
    
    % a. Retrieve the arrays which are used to create the polynomials.
    pol_1
    pol_2

    % b. Asks if the solution is applied to one of the polynomials, or 
    %    their product: pol_1, pol_2, prod_pol.

    solution = roots(conv(pol_1, pol_2));

    % c. Return the roots from the polynomial and their classification 
    %    (num. real roots, num. complex roots).

    for i = 1 : size(solution) 
        if isreal(solution(i))
            real = real + 1;
        else
            complex = complex + 1;
        end    
    end

end