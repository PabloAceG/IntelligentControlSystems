function [] = girar()
    % TODO: Hacer girar al robot lo indicado por 'th'
    %       Usar función 'quat2eul' para obtener la orientación a partir
    %       del cuaternio que proporciona el topic
    %       Llamar a 'lee_sensores' para comprobar las lecturas realizadas
    
    quaternion = [odom.LatestMessage.Pose.Pose.Orientation.W, ...
                  odom.LatestMessage.Pose.Pose.Orientation.X, ...
                  odom.LatestMessage.Pose.Pose.Orientation.Y, ...
                  odom.LatestMessage.Pose.Pose.Orientation.Z];
              
    angles = quat2eul(quaternion, 'ZYX');
    th = rad2deg(angles(1));
end