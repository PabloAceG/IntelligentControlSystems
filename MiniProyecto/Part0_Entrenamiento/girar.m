function [] = girar(odom, theta)
    % TODO: Hacer girar al robot lo indicado por 'th'
    %       Usar funci�n 'quat2eul' para obtener la orientaci�n a partir
    %       del cuaternio que proporciona el topic
    %       Llamar a 'lee_sensores' para comprobar las lecturas realizadas
    
    rotated = false;
    
    [pos, angles] = lee_sensores(odom);
    th = rad2deg(angles(1))
    
    %while (~rotated)
    %    if (theta == 0)
    %        rotated = true;
    %    else
            
    %    end
    %end
end