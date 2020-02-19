% LINES THAT ALWAYS HAVE TO BE: 
% clear variables, 
% close opened windows 
% and clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%

% EXERCISE 4: STORAGE FOR THE COMPUTATIONAL TIME.

%{ Matrix with times format:
... rang_time_1  det_time_1
... rang_time_2  det_time_2
...
... rang_time_25 det_time_25
%}
times = zeros(25, 2); % In order to optimizes times, we create a matrix
                      % with zeros, that later is going to be fill in.

% Computes the range and determinant for matrices from 1x1 to 25x25.
for i = 1 : 25
    % 1. Fill-in with random values.
    matrix = rand(i, i);
   
    % 2. Obtain the time necessary for each operation
    % Range
    tic              % Start a stopwath timer for range
    rank(matrix);
    t_ran = toc;     % Returns the elapse time in t_ran
    % Determinant
    tic              % Start a stopwath timer for determinant
    det(matrix);
    t_det = toc;     % Returns the elapse time in t_det

    % Time for the specific matrix is added to the vector with the times.
    times(i, :) = [t_ran, t_det];
end

% 3. Representate the times in the same graphic
% Graph is generated with the times
plot(times)

% 4. Adding title, axis label and egend
% Title
title('Computational time and graphic representation')
% Axis
xlabel('Matrix size')
ylabel('Time')
% Legend
legend('Range Time', 'Determinant Time')
