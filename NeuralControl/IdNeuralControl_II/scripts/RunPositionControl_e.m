% Tiempo de muestreo
Ts = 100e-3 

% Generar N posiciones aleatorias, simular y guardar en variables
N = 30

E_d_vec     = [];
E_theta_vec = [];
V_vec = [];
W_vec = [];

for i = 1 : N
    refx = 10 * rand - 5;
    refy = 10 * rand - 5;
    
    sim('PositionControl.slx')
    
    E_d_vec     = [E_d_vec;     E_d.signals.values];
    E_theta_vec = [E_theta_vec; E_theta.signals.values];
    V_vec = [V_vec; V.signals.values];
    W_vec = [W_vec; W.signals.values];
end

inputs  = [E_d_vec'; E_theta_vec'];
outputs = [V_vec'; W_vec'];

save('inputs.mat', 'inputs');
save('outputs.mat', 'outputs');
