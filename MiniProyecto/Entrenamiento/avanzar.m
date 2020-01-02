function [] = avanzar(pub, msg, r, initpos, odom, son_0, son_1)
    apart = true;

    while(apart)
        son_0.LatestMessage
        
        pos = lee_sensores(odom);
        
        %% Calculamos la distancia euclidea que se ha desplazado
        dist_0   = sqrt((initpos.X - pos.X)^2 + (initpos.Y - pos.Y)^2);
        %dist_obs = 
        %% Si el robot se ha desplazado más de un metro detenemos el robot 
        %  (velocidad lineal 0) y salimos del bucle
        if (dist_0 > 1)
            msg.Linear.X=0;
            % Comando de velocidad
            send(pub,msg);
            % Salimos del bucle de control
            apart = false;
        else
            % Comando de velocidad
            send(pub,msg);
        end
        
        waitfor(r);
    end
end