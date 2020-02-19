% LINES THAT ALWAYS HAVE TO BE: 
% clear variables, 
% close opened windows 
% and clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%

% EXERCISE 7: Polynomials

% Create a function that gets the root for a polynomial product and
% classify them into real and complex solutions.

% 1. Inputs and outputs for the function are specified by:
% [solution, real, complex]    = roots(pol_1, pol_2)
% [[-1 + i, -1 - i, -3], 1, 2] = roots([1 2 2], [1 3])

% a. Retrieve the arrays which are used to create the polynomials.
poli_1 = input(['Write a polynomial in the form of an array ', ...
                '(i.e.: [1 2 2])\n'])
poli_2 = input(['Write another polynomial in the form of an array ', ...
                '(i.e.: [1 3])\n'])

% b. Asks if the solution is applied to one of the polynomials, or 
%    their product: pol_1, pol_2, prod_pol.
% --> Roots.m

% c. Return the roots from the polynomial and their classification 
%    (num. real roots, num. complex roots).
% --> Roots.m

% [[-1 + i, -1 - i, -3], 1, 2] = Roots([1 2 2], [1 3])
[solutions, real, complex] = Roots(poli_1, poli_2)

% d. Give a representation in the complex plain to the location of the
%    obtained roots.

% Graphical representation
plot(solutions, 'o')
% --- Title
title('Roots Representation in Complex Plain')
% --- Axis
xlabel('Real')
ylabel('Complex')
