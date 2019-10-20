% LINES THAT ALWAYS HAVE TO BE: 
% clear variables, 
% close opened windows 
% and clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
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
     [-1.5; -1.3] %...
     %[ 0.0; -1.5] 
     };
% Species
Y = {2 2 2 0 0 3 3 3 1 1 % ...
    % 3
    };

% Last two comments need to be deleted to complete part 2 of the
% exercise.

% Neural Network used
net = configure(perceptron, X, Y);
% Sets no bias for the network
net.biasConnect = 0;
% Weights initialization
net.IW{1, 1} = [1 -0.8];
view(net);
% Goes through input vector just once
% net.trainParam.epochs = 1
% Network training
net = adapt(net, X, Y);
% New weights after applying all input vector
w = net.iw{1, 1}; % w = [-1.1 3.8]
% Simulation on inputs with trained network
a = net(X);
err = cell2mat(a) - cell2mat(Y)
% Network data at the end of execution
net



