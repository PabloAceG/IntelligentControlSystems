% b) Create a script called RunPositionControl.m with the following code.
% The simulation of the diagram PositionControl coul be simulated with this
% code, also the destination point for the robot can be configurated by the
% variables refx, refy and the samplig time.

% Sampling time
ask_Ts = 'Elija un tiempo de muestreo: ';
Ts = input(ask_Ts);
Ts = Ts * 10.^-3;

%Ts = 100e-3

%X-Y reference the position
ask_x = 'Referencia de posicion para X:'
refx = input(ask_x);
ask_y = 'Referencia de posicion para Y:'
refy = input(ask_y);
% -------------------------------------------------------------------------

% c) Execute the script RunPosition and check that variables that contains 
% inputs and outputs for the controles had been generated, and also the 
%outputs for the robot during the simulation
% Simulation execution
sim('PositionControl.slx')
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




