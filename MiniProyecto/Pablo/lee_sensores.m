function [] = lee_sensores(odom)
    % TODO: Lectura de l�ser y s�nares
    %       Realizar lecturas usando funci�n 'receive'
    %       Mostrar gr�ficamente los datos del laser utilizando 'plot'
    %       Mostrar por pantalla las lecturas de los sonares
    %% Obtenemos la posici�n actual
    pos = odom.LatestMessage.Pose.Pose.Position;

    %% Calculamos la distancia euclidea que se ha desplazado
    dist = sqrt((initpos.X - pos.X)^2 + (initpos.Y - pos.Y)^2)
end