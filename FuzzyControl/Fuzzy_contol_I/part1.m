%  PRACTICE 3. FUZZY CONTROL
% The aim of the practice is strudying fuzzy control design in order to 
% control robots which are in move.
% The practice will be divide in two parts:
        % PART 1. Designing a fuzzy control to control the position 
        % PART 2. Designing a fuzzy control to avoid abstacles
% LINES THAT ALWAYS HAVE TO BE: 
% clear variables, 
% close opened windows 
% and clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%
%Tiempo de muestreo
Ts=100e-3
% Referencia x-y de posicion
x_0 = 5;
y_0 = 5;
th_0 = 0;
for c = 1:3
    refx=10*rand-5;
    refy=10*rand-5;
    % Ejecutar Simulacion
    sim('PositionControl.slx')
    % Mostrar
    x=salida_x.signals.values;
    y=salida_y.signals.values;
    v = V.signals.values;
    w = W.signals.values;
    %figure;
    plot(x,y);
    %plot(v,w);
    grid on;
    hold on;
end