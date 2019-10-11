%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   FUNCTIONS APPROXIMATION                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all; 
close all;
clc;

%                  INPUT-OUTPUT VECTORS DEFINITION
%                 =================================
t = -3:.1:3; % time axis
% FUNCTION TO BE ESTIMATED
F = sinc(t) + .001 * randn(size(t)); 

% Plot representation
plot(t, F, '+');
% Title
title('Vectores de entrenamiento');
% Labels
xlabel('Vector de entrada P');
ylabel('Vector Target T');

%                            NETWORK DESING
%                           ================

% Layer properties
% Change number of hidden layer
% hiddenLayerSize = 3;
hiddenLayerSize = 4;
% hiddenLayerSize = 5;
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
% 'traingd'  - Gradicent Descent^                           x
net = fitnet(hiddenLayerSize, 'trainrp');

net.divideParam.trainRatio = 70 / 100;
net.divideParam.valRatio   = 15 / 100;
net.divideParam.testRatio  = 15 / 100;
% TRAINING
net = train(net, t, F);
Y = net(t);
% Representation
plot(t, F, '+');  hold on;
plot(t, Y, '-r'); hold off;
% Title
title('Vectores de entrenamiento');
% Labels
xlabel('Vector de entrada P');
ylabel('Vector Target T');
