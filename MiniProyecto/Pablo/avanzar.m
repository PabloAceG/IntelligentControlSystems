function [] = avanzar()
    % TODO: Bucle que lea odometria (usar lee sensores) y compruebe la
    %       distancia avanzadaa hasta el momento
    %% Si el robot se ha desplazado más de un metro detenemos el robot 
    %  (velocidad lineal 0) y salimos del bucle
    if (dist>1)
        msg.Linear.X=0;
        % Comando de velocidad
        send(pub,msg);
        % Salimos del bucle de control
        break;
    else
        % Comando de velocidad
        send(pub,msg);
    end
end