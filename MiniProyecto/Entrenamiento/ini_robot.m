function [pub, msg,                   ...
          r,   initpos,               ...
          odom,                       ...
          laser,                      ...
          son_0, son_1, son_2, son_3, ...
          son_4, son_5, son_6, son_7] = ini_robot()
%% DECLARACI�N DE SUBSCRIBERS
odom  = rossubscriber('/pose');    % Subscripci�n a la odometr�a
laser = rossubscriber('/scan'); % Subscripci�n a l�ser
son_0 = rossubscriber('/sonar_0'); % Subscripci�n a s�nares
son_1 = rossubscriber('/sonar_1');
son_2 = rossubscriber('/sonar_2');
son_3 = rossubscriber('/sonar_3');
son_4 = rossubscriber('/sonar_4');
son_5 = rossubscriber('/sonar_5');
son_6 = rossubscriber('/sonar_6');
son_7 = rossubscriber('/sonar_7');

%% DECLARACI�N DE PUBLISHERS
pub = rospublisher('/cmd_vel', 'geometry_msgs/Twist'); %

%publisher
pub_enable = rospublisher('/cmd_motor_state', 'std_msgs/Int32');
%declaraci�n mensaje
msg_enable_motor=rosmessage(pub_enable);
%activar motores enviando enable_motor = 1
msg_enable_motor.Data = 1;
send(pub_enable, msg_enable_motor);

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