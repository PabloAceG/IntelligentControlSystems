% LINES THAT ALWAYS HAVE TO BE: 
% clear variables, 
% close opened windows 
% and clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%

% EXERCISE 6: LINEAL SYSTEMS

% 1. Show the system using matrices.

%          x1 x2  x3 x4 sol
systemA = [ 0, 2, 10, 7, 90; 
            2, 7,  7, 1, 59; 
            1, 9,  0, 5, 15; 
            4, 0,  0, 6, 10;
            2, 8,  4, 1, 80;
           10, 5,  0, 3, 17;
            2, 6,  4, 0, 93;
            1, 1,  9, 3, 51;
            6, 4,  8, 2, 41;
            0, 3,  0, 9, 76];
       
%          x1     x2    x3 x4  sol
systemB = [0.110, 0,     1, 0, 317;
               0, 3.260, 0, 1, 237;
           0.425, 0,     1, 0, 319;
               0, 3.574, 0, 1, 239;
           0.739, 0,     1, 0, 321;
               0, 3.888, 0, 1, 241;
           1.054, 0,     1, 0, 323;
               0, 4.202, 0, 1, 243;
           1.368, 0,     1, 0, 325;
               0, 4.516, 0, 1, 245];
                
% 2. 
% a. Obtain the condition number for matrix A towards its invertion.

% Moore-Penrose pseudoinverse of symbolic matrix.
pinv_a = pinv(systemA);
% Condition number for inversion.
num_cond = cond(pinv_a)
 
% b. Solve the equation system to obtain the matrix x = [x1, x2, x3, x4].

solA = linsolve(systemA(:, 1 : 4), systemA(:, 5));
solB = linsolve(systemB(:, 1 : 4), systemB(:, 5));

% c. Add noise to matrix B, adding a random vector with a mean of 0 and a 
%    standard deviation of 1, then solve the resulting equation system.

mean        = 0;
s_deviation = 1;
% Obtained a matrix of 10x1 with random numbers with 
% mean = 0 and standard deviation = 1
noise = s_deviation .* randn(10, 1) + mean;
% Previous system with added noise
systemB2 = [systemB(:, 1 : 4) systemB(:, 5) + noise];
% System solution
solB2 = linsolve(systemB2(:, 1 : 4), systemB2(:, 5));

% d. Show the result (with and without noise) on screen.

% Screen
solB
solB2

% Graph
stem([solB, solB2])
% Title
title('Comparison System-B / System-B + noise')
% Axis
xlabel('Values')
ylabel('Variables Solutions')
