% Tiempo de muestreo
Ts = 100e-3 

% Generar N posiciones aleatorias, simular y guardar en variables
N = 5

for i = 1 : N
    refx = 10 * rand - 5;
    refy = 10 * rand - 5;
    
    sim('PositionControl.slx');
    sim('PositionControlNet.slx');
    
    % Outputs
    % Controller
    x_cont = salida_x.signals.values;
    y_cont = salida_y.signals.values;
    % Neural Network
    x_net = salida_x_net.signals.values;
    y_net = salida_y_net.signals.values;
    
    % Representation
    figure;
    plot(x_cont, y_cont);
    hold on;
    plot(x_net, y_net);
    hold off;
    grid on;
    legend('Logical Controller', 'NN Controller')
end

