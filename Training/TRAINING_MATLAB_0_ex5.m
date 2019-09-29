% LINES THAT ALWAYS HAVE TO BE: 
% clear variables, 
% close opened windows 
% and clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%

% EXERCISE 5: 3D GRAPHICAL REPRESENTATION

% AREA:
% -5 <= x
% y <= 5
x = -5 : 1 : 100;
y =  5 : 1 : 100;

[X, Y] = meshgrid(x, y);

% FUNCTION:
% z = y * sin(pi * x/10) + 5 * cos((x^2 + y^2)/8) + cos(x + y) cos (3x - y)
Z =   Y .* sin(pi .* X ./ 10)      ...
    + 5 .* cos((X.^2 + Y.^2) ./ 8) ...
    +      cos(X + Y) .* cos(3 .* X - Y);

% 1. Drawing in the same graphic:
    % Surface graph at middle top
subplot(2, 2, [1, 2]);
surf(X, Y, Z)

% 2. Add:
% --- Title
title('Surface')
% --- Axis
xlabel('X')
ylabel('Y')
zlabel('Z')

% 1. Drawing in the same graphic:
    % Mesh graph at left button
subplot(2, 2, 3);
mesh(X, Y, Z)
% 2. Add:
% --- Title
title('Mesh')
% --- Axis
xlabel('X')
ylabel('Y')
zlabel('Z')

% 1. Drawing in the same graphic:
    % Contour graph at rigth button
subplot(2, 2, 4);
contourf(X, Y, Z)
% 2. Add:
% --- Title
title('Contour')
% --- Axis
xlabel('X')
ylabel('Y')
zlabel('Z')
% --- Colorbar
colorbar
