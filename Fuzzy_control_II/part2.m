%Tiempo de muestreo
Ts = 100e-3 
% Referencia x-y de posicion
refx = 5;    
refy = 5;
obsx = 2.5;    
obsy = 2.5;
% Ejecutar Simulacion
sim('EvitarObstaculo.slx')
% Mostrar
x = salida_x.signals.values;
y = salida_y.signals.values;


figure;
plot(x, y); 
grid on;
hold on;