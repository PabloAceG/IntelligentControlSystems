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
times = zeros(25, 2);

% Computes the range and determinant for matrices from 1x1 to 25x25.
for i = 1 : 25
   % Fill-in with random values.
   matrix = rand(i, i);
   
   % Range
   tic
   rank(matrix);
   t_ran = toc;
   % Determinant
   tic
   det(matrix);
   t_det = toc;
   
   % Time for the specific matrix is added to the vector with the times.
   times(i, :) = [t_ran, t_det];
end

% Graph is generated with the times
plot(times)
% Title
title('Computational time and graphic representation')
% Axis
xlabel('Matrix size')
ylabel('Time')
% Legend
legend('Range Time', 'Determinant Time')
