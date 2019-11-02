% Creating simulation's data second ex, part three

%sim('model_ex2_FUNCIONA_BIEN.slx');
% Sampling time
ask_Ts = 'Elija un tiempo de muestreo: ';
Ts = input(ask_Ts);
Ts = Ts * 10.^-3;

%Ts = 100e-3

%X-Y reference the position
ask_x = 'Referencia de posicion para X: '
x_0 = input(ask_x);
ask_y = 'Referencia de posicion para Y: '
y_0 = input(ask_y);
ask_th = '�ngulo de posici�n inicial: '
th_0 = input(ask_th);
% -------------------------------------------------------------------------

% c) Execute the script RunPosition and check that variables that contains 
% inputs and outputs for the controles had been generated, and also the 
%outputs for the robot during the simulation
% Simulation execution
sim('model_ex2_FUNCIONA_BIEN.slx')
% -------------------------------------------------------------------------

% d) Execute the following code in order to display the trajectory of the 
% robot using the plot's comand

%Display
x = salida_x.signals.values;
y = salida_y.signals.values;
figure;
plot(x,y);
grid on;
hold on;

