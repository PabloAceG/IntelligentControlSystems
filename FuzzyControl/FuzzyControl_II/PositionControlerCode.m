% %Tiempo de muestreo
% Ts=100e-3;
% % Referencia x-y de posicion
% refx=5;
% refy=5;
% obsx=2.5;
% obsy=2.5;
% % Ejecutar Simulacion
% sim('PositionObs.slx')
% % Mostrar
% x=salida_x.signals.values;
% y=salida_y.signals.values;
% figure;
% plot(x,y);
% grid on;
% hold on; 
  
clear all;
N=1;
x_0=0.2;
y_0=0;
th_0=0;
%Tiempo de muestreo
Ts=200e-3;
% Referencia x-y de posicion
xref=5;
yref=5;
% Localización del obstáculo
obsx=2.2226;
obsy=0.88165;
% Ejecutar Simulacion
sim('PositionObs.slx')
% Mostrar
x=salida_x.signals.values;
y=salida_y.signals.values;
figure;
% Dibujar recorrido x,y
plot(x,y);
% Agregar en el mismo mapa
hold on;
% Variables a añadir en el esquema para visualizar
% los datos generados por la trayectoria
x1=salida_x_g.signals.values;
y1=salida_y_g.signals.values;
% Dibujar el obstáculo en el mapa
plot(obsx,obsy,'o');
%Añadir leyenda al mapa
legend("Controlador Borroso","Trajectory Generation","Obstaculo");
hold off;
grid on;