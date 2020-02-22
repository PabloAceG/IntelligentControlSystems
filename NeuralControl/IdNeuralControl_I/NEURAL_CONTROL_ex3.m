% LINES THAT ALWAYS HAVE TO BE: 
% clear variables, 
% close opened windows 
% and clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%

% EXERCISE 3: APPROCHING FUNCTIONS

% Load available example data in toolbox 
[inputs, targets] = bodyfat_dataset;

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
net = fitnet(hiddenLayerSize, 'trainbr');

% Data division for trainig, vaidation and test sets
net.divideParam.trainRatio = 60/100;
net.divideParam.valRatio   = 20/100;
net.divideParam.testRatio  = 20/100;

% Training network
[net,tr] = train(net, inputs, targets);

% Test
outputs     = net(inputs);
errors      = gsubtract(outputs, targets);
performance = perform(net, targets,outputs)

% Visualise the network
view(net)

%Graphics --> We use figure to display graphics in different windows
%1
figure(1)
plotperform(tr)
%title("ERROR vs EPOCH FOR TRAINING, VALIDATION AND TEST")

%2 : Display the training state from a training record returned by train
% Results are display in three graphics
figure(2)
plottrainstate(tr)

%3 : Display a histogram of the errors, showing where zero errors were
% produced
figure(3)
% We can choose the number of bins, using the function in these way:
ploterrhist(errors, 'bins', 50) 

%4 : Display the linear regression of targers relative to outputs,
% generating multiple plots
figure(4)
plotregression(targets, outputs, 'Regression')

%5: Display the output function of a network across the range of the inputs
% and also targets and output points associated with inputs values. Error
% bars show the difference between outputs and targets.
figure(5)
plotfit(net, inputs, targets)
% IMPORTANT: Only the first outputs/targets are display in case the
% network has more than one of then.

