% Creating simulation's data

Ts = 0.1;
sim('modelo_identificacion.slx');
inputs = x.signals.values';
outputs = y.signals.values';
