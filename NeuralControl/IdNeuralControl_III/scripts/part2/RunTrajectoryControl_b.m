%% Input data
% Sampling time
Ts = 100e-3 

% X-Y reference the position
x_0 = 0
y_0 = 0
th_0 = 0

%% Execute simulation
sim('TrajectoryControl.slx')

%% Data readings and plotting
% Data
x = x.signals.values;
y = y.signals.values;
x_out = salida_x.signals.values;
y_out = salida_y.signals.values;

% Plotting
figure;
plot (x, y);
hold on;
plot (x_out, y_out);
hold off;
legend ('Trajectory Generated', 'Robot Trajectory')
grid on;
