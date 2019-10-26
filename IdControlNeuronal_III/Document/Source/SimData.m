% Creating simulation's data
%----------------------------
    %Sampling time
Ts = 0.1;
    % Opening model
sim('modelo_identificacion.slx');
    % Adding x signal into inputs' array
inputs = x.signals.values'; 
    % Adding y signal into outputs' array
outputs = y.signals.values'; 
