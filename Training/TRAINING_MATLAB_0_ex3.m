% LINES THAT ALWAYS HAVE TO BE: clear variables, close opened windows and 
% clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%

%EXERCISE 3:  MATRIX AND VECTORS

% 1. Asking the user about matrix's dimensions

ask_dim = 'Please, introduce the first matrix`s dimension as [rows columns] \n' ;
dim = input(ask_dim);

if size(dim)==1
    tamA = [dim dim]
else
    tamA = dim    
end


ask_dim = 'Please, introduce the second matrix`s dimension as [rows columns] \n' ;
dim = input(ask_dim);

if size(dim)==1
    tamB = [dim dim]
else
    tamB = dim    
end


% 4. Calculate and display:
% Display A and B 
A = IntroduceMatrix(tamA)
B = IntroduceMatrix(tamB)



disp("-------------------------------------------------------------------")
disp("-------------------------- R E S U L T S --------------------------")
disp("-------------------------------------------------------------------")

% transpose, inverse and determinate
    % There are two diffentes forms to obtain the transpose of any matrix: 
    transpose_A = A.'
    transpose_B = transpose(B)

% Also, we can obtain the inverse using the function inv or raisign -1
disp( 'INVERSE AND DETERMINATE RESULTS: ')
if tamA(1)==tamA(2)
    det_A = det(A)
    if det_A == 0
        disp("A does not have inverse")
    else
        inverse_A = inv(A)
    end
else
    disp('Matrix A must be square')
end

if tamB(1)==tamB(2)
    det_B = det(B)
    if det_B == 0
        disp("B does not have inverse")
    else
        inverse_B = inv(B)
    end
else
    disp('Matrix B must be square')
end

%Range of matrices
disp('RANGE RESULTS: ')
range_A = rank(A)
range_B = rank(B)

% Multiplications (matrix and element)
disp('MULTIPLICATION RESULTS:')
%------------------------------------------------------------------------

if tamA(1) == tamB(2)
    mult_mat = A*B     %Another way: mtimes(A,B)   
else
    disp('Columns of matrix A must be equals to rows of Matrix B')
end

%-------------------------------------------------------------------------


if (tamA(1)==tamB(1)) && (tamA(2) == tamB(2))
    mult_elem = A.*B %Another way: times(A,B)
else
    disp('Matrix dimensions must agree')
end


%Row vector with the first row of each matrix
disp('ROW VECTOR RESULT: ')
if tamA(1)==tamB(2)
    row_vector = [A(1,:) B(1,:)]
else
    disp('Rows of matrix being concatenated are not iqual')
end

%Column vector with the first column of each matrix
disp('COLUMN VECTOR RESULT: ')
if tamA(2)==tamB(2)
    col_vector = [A(:,1)  B(:,1)]
else
    disp('Columns of matrix being concatenated are not iqual')
end




