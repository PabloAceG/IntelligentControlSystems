% Creating simulation's data second ex, part three
% Sampling time
ask_Ts = 'Elija un tiempo de muestreo: ';
Ts = input(ask_Ts);

%X-Y reference the position
ask_x = 'Referencia de posicion para X: '
x_0 = input(ask_x);
ask_y = 'Referencia de posicion para Y: '
y_0 = input(ask_y);
ask_th = 'Ángulo de posición inicial: '
th_0 = input(ask_th);

% Simulation execution
sim('model_ex2.slx')

%Display
x = salida_x.signals.values;
y = salida_y.signals.values;
figure;
plot(x,y);
grid on;
hold on;

