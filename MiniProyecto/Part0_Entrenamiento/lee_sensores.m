function [pos, angles] = lee_sensores(odom)
    % TODO: Lectura de l�ser y s�nares
    %       Realizar lecturas usando funci�n 'receive'
    %       Mostrar gr�ficamente los datos del laser utilizando 'plot'
    %       Mostrar por pantalla las lecturas de los sonares
    pos = odom.LatestMessage.Pose.Pose.Position;
    
    quaternion = [odom.LatestMessage.Pose.Pose.Orientation.W, ...
                  odom.LatestMessage.Pose.Pose.Orientation.X, ...
                  odom.LatestMessage.Pose.Pose.Orientation.Y, ...
                  odom.LatestMessage.Pose.Pose.Orientation.Z];
            
    angles = quat2eul(quaternion, 'ZYX');
end