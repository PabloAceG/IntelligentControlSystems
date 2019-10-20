% LINES THAT ALWAYS HAVE TO BE: 
% clear variables, 
% close opened windows 
% and clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%

% EXERCISE 3:/ FUNCTION ESTIMATION (II)

% Samples available in toolbox.
[inputs, targets] = simplefit_dataset;

% Network creation
hiddenLayerSize = 10;
net = fitnet(hiddenLayerSize);

% Splitting samples for TRAINING, VALIDATION and TESTING
net.divideParam.trainRatio = 70 / 100;
net.divideParam.valRatio   = 15 / 100;
net.divideParam.testRatio  = 15 / 100;

%                          NETWORK TRAINING
%                         ==================
[net, tr] = train(net, inputs, targets);

%                              TESTING
%                             =========
outputs     = net(inputs);
errors      = gsubtract(outputs, targets);
performance = perform(net, targets, outputs)

% Network visualization
view(net)