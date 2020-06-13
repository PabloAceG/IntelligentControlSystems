% LINES THAT ALWAYS HAVE TO BE: clear variables, close opened windows and 
% clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%

%% Data
% Sampling time
Ts = 100e-3 

% X-Y reference the position
x_0  = 0.5
y_0  = 0.5
th_0 = 0

%% Simulations
% Logical Controller
sim('TrajectoryControl.slx');
x_log = salida_x.signals.values;
y_log = salida_y.signals.values;

% Recursive NARX Neural Network Controller
sim('TrajectoryControlNet.slx');
x_net = salida_x.signals.values;
y_net = salida_y.signals.values;

%% Plotting
figure;
% Logical
plot(x_log, y_log)
hold on;
% Recursive NARX Neural Network Controller
plot(x_net, y_net);
hold on;

legend("Logical Controller", "NARX Controller");
grid on;
hold off;