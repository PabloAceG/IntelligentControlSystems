% LINES THAT ALWAYS HAVE TO BE: 
% clear variables, 
% close opened windows 
% and clean the comand windows
%-------------------------------------------------------------------------%
clear all;
close all;
clc;
%-------------------------------------------------------------------------%

% EXERCISE 1: PERCEPTRON

% Samples
X = {[ 0.1;  1.2] ...
     [ 0.7;  1.8] ...
     [ 0.8;  1.6] ...
     [ 0.8;  0.6] ...
     [ 1.0;  0.8] ...
     [ 0.3;  0.5] ...
     [ 0.0;  0.2] ...
     [-0.3;  0.8] ...
     [-0.5; -1.5] ...
     [-1.5; -1.3],...
     [ 0.0; -1.5] 
     };
% Species
Y = {2 2 2 0 0 3 3 3 1 1  ...
     3
    };

% Last two comments need to be deleted to complete part 2 of the
% exercise.

% Neural Network used
net = configure(perceptron, X, Y);
% Sets no bias for the network
net.biasConnect = 0;
% Weights initialization
net.IW{1, 1} = [1 -0.8];
% Goes through input vector just once
% net.trainParam.epochs = 1
% Network training
net = adapt(net, X, Y)
view(net);
% New weights after applying all input vector
w = net.iw{1, 1} % w = [-1.1 3.8]
% Simulation on inputs with trained network
a = net(X)
err = cell2mat(a) - cell2mat(Y)
% Network data at the end of execution

X = cell2mat(X)';

Y = cell2mat(Y)';

figure(1)
gscatter(X(:, 1), X(:, 2), Y)
hold on
% The function that represents the obtained perceptron is a linear
% equation. Thefore, it can be writen as:
% y = mx + b 
% Where | m = slope
%       | x = independent variable, in this case is the desired domain
%       | b = shift, in this case the bias
m = - w(1) / w(2);
x = -5 : 1 : 5;
y = m .* x + net.biasConnect;
a = area(x, y, -2, 'FaceColor', 'b');
a.FaceAlpha = 0.2;
hold off

legend('0', '1', '2', '3', 'Decision Boundary', 'Location', 'northwest')
