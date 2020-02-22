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

% Simulation execution
sim('PositionControl.slx')