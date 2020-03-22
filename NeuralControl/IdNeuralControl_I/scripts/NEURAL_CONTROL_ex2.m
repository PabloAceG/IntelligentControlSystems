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

% Title
title('Vectores de entrenamiento');
% Labels
xlabel('Vector de entrada P');
ylabel('Vector Target T');

%                            NETWORK DESING
%                           ================

% Plot representation
plot(t, F, '+');
hold on
  
% Layer properties
% Change number of hidden layer
hiddenLayerSize = 200;

% Training function selector
trainfun    = ["trainbr", "trainrp", "trainoss", "traingd"];
trainfuncol = ['g', 'm', 'c', 'r'];

for i = 1 : 1 : length(trainfun)
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
    net = fitnet(hiddenLayerSize, trainfun(i));

    net.divideParam.trainRatio = 70 / 100;
    net.divideParam.valRatio   = 15 / 100;
    net.divideParam.testRatio  = 15 / 100;
    % TRAINING
    net = train(net, t, F);
    Y = net(t);
    % Representation
    plot(t, Y, strcat(trainfuncol(i), '-')); 
    hold on;
end

hold off;
% Title
title('Vectores de entrenamiento');
% Labels
xlabel('Vector de entrada P');
ylabel('Vector Target T');
% Legend
legend(['function', trainfun]);
