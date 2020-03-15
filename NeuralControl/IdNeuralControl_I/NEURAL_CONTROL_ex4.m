% LINES THAT ALWAYS HAVE TO BE: 
% clear variables, 
% close opened windows 
% and clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%

% EXERCISE 4: CLASIFICATION
% Load available example data in toolbox 
[inputs, targets] = cancer_dataset;

% Creating network
hiddenLayerSize = 10;
% Training functions
% 'trainlm'  - Levenberg-Marquardt
% 'trainbr'  - Bayesan Regularization                       x
% 'trainbfg' - BFGSS Quasi-Newton
% 'trainrp'  - Resilient Backpropagation                    x
% 'trainscg' - Scaled Conjugate Gradient
% 'traincgb' - Conjugate Gradient with Poell/Beale Restats  
% 'traincgf' - Fletcher-Powell Conjugate Gradient
% 'traincgp' - Polak-Ribiére Conjugate Gradient
% 'trainoss' - One Step Secant                              x
% 'traingdx' - Variable Learning Rate Gradient Descent
% 'traingdm' - Gradient Descent with Momentum
% 'traingd'  - Gradicent Descent                            x
net = fitnet(hiddenLayerSize, 'traingd');

% Data division for trainig, vaidation and test sets
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio   = 15/100;
net.divideParam.testRatio  = 15/100;

% Training network
[net, tr] = train(net, inputs, targets);

% Test
outputs     = net(inputs)
errors      = gsubtract(outputs, targets)
performance = perform(net, targets, outputs)

% Visualise the network
view(net)

%GRAPHICS:
% 1: 
% Display a matrix for the true labels targets and predicted labels outputs.
% The diagonal cells correspond to observations that are correctly classified. 
% The off-diagonal cells correspond to incorrectly classified observations.
% Both the number of observations and the percentage of the total number of 
% observations are shown in each cell.
% The column on the far right of the plot shows the percentages of all the
% examples predicted to belong to each class that are correctly and incorrectly 
% classified. 
figure(1)
plotconfusion(targets, outputs)

% 2:
% Display the receiver operating characterictics for each output class
% The more each curve hugs the left and top edges of the plot, 
% the better the classification.
figure(2)
plotroc(targets, outputs)
