%% Input data
% Sampling time
Ts = 100e-3 

% Number of executions
N = 30

% X-Y reference the position
x_0  = 0.5
y_0  = 0.5
th_0 = 0

% Variables to hold the training data
E_d_vec     = [];
E_theta_vec = [];
V_vec = [];
W_vec = [];

%% Data copilation
for i = 1 : N
    % X-Y reference the position
    refy  = 10 * rand - 5;
    refy  = 10 * rand - 5;
    
    % Execute simulation
    sim('TrajectoryControl.slx')
    
    E_d_vec     = [E_d_vec;     E_d.signals.values];
    E_theta_vec = [E_theta_vec; E_theta.signals.values];
    V_vec = [V_vec; V.signals.values];
    W_vec = [W_vec; W.signals.values];

end

%% Save data
inputs  = [E_d_vec'; E_theta_vec'];
outputs = [V_vec'; W_vec'];

save('inputs.mat', 'inputs');
save('outputs.mat', 'outputs');