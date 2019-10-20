% Sampling time
Ts = 100e-3

%X-Y reference the position
refx = 2.0;
refy = 2.0;

% Simulation execution
sim('PositionControl.slx')

%Display
x = out.salida_x.signals.values;
y = out.salida_y.signals.values;
figure;
plot(x,y);
grid on;
hold on;


