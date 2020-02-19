% LINES THAT ALWAYS HAVE TO BE: clear variables, close opened windows and 
% clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%

%EXERCISE 1:  MATRICES AND VECTORS
% 1. Define matrix A and vector v:
% A can be also defined as: 
% A = [1  2
%     3   4
%     5   6   
%     7   8
%     ]

A = [1 ,2;
     3, 4; 
     5, 6;
     7, 8
     ]

% v can be defined as the same way as A or:
v = [14 : 2 : 20]'

% 2. Obtain and display B as a concatenation of A and v 
B = [A v]

% 3. Obtain and display a row vector, which is the result of the concat. 
% of the rows of B

vrow = B.';       % Transpose matrix.
vrow = vrow (:).' % It is obtained the transpose of the concatenation of
                  % the columns and rows.
                  % The : simbol specifies all the rows and columns in a 
                  % matrix.

% 4. Obtain and display a column vector, which is the result of the concat.
% of the columns of B

vcol = B (:) 
