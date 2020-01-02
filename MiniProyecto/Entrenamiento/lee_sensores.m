function [pos, angles] = lee_sensores(odom)
    % TODO: Lectura de láser y sónares
    %       Realizar lecturas usando función 'receive'
    %       Mostrar gráficamente los datos del laser utilizando 'plot'
    %       Mostrar por pantalla las lecturas de los sonares
    pos = odom.LatestMessage.Pose.Pose.Position;
    
    quaternion = [odom.LatestMessage.Pose.Pose.Orientation.W, ...
                  odom.LatestMessage.Pose.Pose.Orientation.X, ...
                  odom.LatestMessage.Pose.Pose.Orientation.Y, ...
                  odom.LatestMessage.Pose.Pose.Orientation.Z];
            
    angles = quat2eul(quaternion, 'ZYX');
end