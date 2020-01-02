function [pub, msg,                   ...
          r,   initpos,               ...
          odom,                       ...
          laser,                      ...
          son_0, son_1, son_2, son_3, ...
          son_4, son_5, son_6, son_7] = ini_simulador()
%% DECLARACI�N DE SUBSCRIBERS
odom  = rossubscriber('/robot0/odom');    % Subscripci�n a la odometr�a
laser = rossubscriber('/robot0/laser_1'); % Subscripci�n a l�ser
son_0 = rossubscriber('/robot0/sonar_1'); % Subscripci�n a s�nares
son_1 = rossubscriber('/robot0/sonar_2');
son_2 = rossubscriber('/robot0/sonar_3');
son_3 = rossubscriber('/robot0/sonar_4');
son_4 = rossubscriber('/robot0/sonar_5');
son_5 = rossubscriber('/robot0/sonar_6');
son_6 = rossubscriber('/robot0/sonar_7');
son_7 = rossubscriber('/robot0/sonar_8');

%% DECLARACI�N DE PUBLISHERS
pub = rospublisher('/robot0/cmd_vel', 'geometry_msgs/Twist'); %

%% GENERACI�N DE MENSAJE
msg = rosmessage(pub) %% Creamos un mensaje del tipo declarado en "pub"
                      %  (geometry_msgs/Twist)
% Rellenamos los campos del mensaje para que el robot avance a 0.2 m/s
% Velocidades lineales en x,y y z (velocidades en y o z no se usan en 
% robots diferenciales y entornos 2D)
msg.Linear.X = 0.2;
msg.Linear.Y = 0;
msg.Linear.Z = 0;
% Velocidades angulares (en robots diferenciales y entornos 2D solo se 
% utilizar� el valor Z)
msg.Angular.X = 0;
msg.Angular.Y = 0;
msg.Angular.Z = 0;

%% Definimos la perodicidad del bucle (10 hz)
r = robotics.Rate(10);

%% Nos aseguramos recibir un mensaje relacionado con el robot "robot0"
pause(1); % Esperamos 1 segundo para asegurarnos que ha llegado alg�n 
          % mensaje odom, porque sino ls funci�n strcmp da error al tener 
          % uno de los campos vacios.
while (strcmp(odom.LatestMessage.ChildFrameId, 'robot0') ~= 1)
    odom.LatestMessage
end

%% Inicializamos la primera posici�n (coordenadas x,y,z)
initpos = odom.LatestMessage.Pose.Pose.Position;
end