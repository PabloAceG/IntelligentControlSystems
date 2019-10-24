% b) Create a script called RunPositionControl.m with the following code.
% The simulation of the diagram PositionControl coul be simulated with this
% code, also the destination point for the robot can be configurated by the
% variables refx, refy and the samplig time.

% Sampling time
Ts = 100e-3

%X-Y reference the position
refx = 2.0;
refy = 2.0;

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
x = out.salida_x.signals.values;
y = out.salida_y.signals.values;
figure;
plot(x,y);
grid on;
hold on;


