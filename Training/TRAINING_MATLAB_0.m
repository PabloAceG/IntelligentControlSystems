% LINES THAT ALWAYS HAVE TO BE: clear variables, close opened windows and 
% clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%

%EXERCISE 1:  MATRICES AND VECTORS
% 1. Define matrix A and vector v:
% A can be also define as: [1,2;3,4;5,6;7,8];
A = [1  2
    3   4
    5   6   
    7   8
    ];
% v can be define as the same way as A or:
v_h=[14:2:20]; 
v = v_h';

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

%EXERCISE 2: MATRICES AND VECTORS.

% 1. Create a script which generates a square matrix and and with random
%    values, with size specified by the user. Command line must write:
%    "Write the size of the matrix".

size = input ('Write the size of the matrix: ')

M = rand(size, size);

% 2. From the matrix that has just been built, compute and print:
% a. Matrix generated.

M

% b. A second matrix formed by the odd columns from the original matrix.

oddM = M (:, 1:2:end)

% c. The value of the elements in the diagonal from the generated matrix.

diagM = diag(oddM)

% d. Maximum, minimum, avarage and variance values of each row.
%    All those values must be represented withing a graph, indicating the
%    row number in the abscissa axis (x-axis).




