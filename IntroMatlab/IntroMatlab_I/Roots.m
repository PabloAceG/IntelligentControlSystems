function [solution, real, complex] = Roots(pol_1, pol_2)
    % Variables
    solution = [];
    real     = 0;
    complex  = 0;

    % b. Asks if the solution is applied to one of the polynomials, or 
    %    their product: pol_1, pol_2, prod_pol.
    
    in = input(['Do you want the solution of the first polinomial ', ...
                'or from their product? (Please write: pol/prod)\n'], 's') 
      
    if strcmp(in, 'pol')
        solution = roots(pol_1);
    elseif strcmp(in, 'prod')
        solution = roots(conv(pol_1, pol_2));
    else
        write('As no proper answer has been given, the solution will ', ...
              'be done using the product of both polynomials.')
        solution = roots(conv(pol_1, pol_2));
    end

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