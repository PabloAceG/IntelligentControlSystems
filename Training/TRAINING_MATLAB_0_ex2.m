% LINES THAT ALWAYS HAVE TO BE: clear variables, close opened windows and 
% clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%

%EXERCISE 2: MATRICES AND VECTORS.

% 1. Create a script which generates a square matrix and and with random
%    values, with size specified by the user. Command line must write:
%    "Write the size of the matrix".

size = input ('Write the size of the matrix: ')

%M = randi([-50,50], size);
M = rand(size, size);

% 2. From the matrix that has just been built, compute and print:
% a. Matrix generated.

M

% b. A second matrix formed by the odd columns from the original matrix.

oddM = M (:, 1:2:end)

% c. The value of the elements in the diagonal from the generated matrix.

diagM = diag(M)

% d. Maximum, minimum, avarage and variance values of each row.
%    All those values must be represented withing a graph, indicating the
%    row number in the abscissa axis (x-axis).

maximum  = max (M)
minimum  = min (M)
average  = mean(M)
variance = var (M)
 
%stem plots the data secuence
%hold on retains plots in the current axes
%hold off resets axes
stem(maximum)
hold on 
stem(minimum)
hold on 
stem(average)
hold on
stem(variance)
hold off

%Adding a title, a legend and a label to the graphic
title ('Max, min, average and variance for each matrix´s row')
xlabel('rows')
legend('max', 'min', 'average', 'variance')


