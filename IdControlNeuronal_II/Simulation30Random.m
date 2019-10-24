% e) Do N=30 simulations of the controler providing random values for refx 
% and refy using a loop, which is inside an enviroment of 10x10 metes.
% For each simulation, time for inputs and outputs must be saved.
% Generated an "input" matrix with 2xN size, where E_d and E_theta values
% are acumulated. In the same way, an "output" matrix where variable V and
% W are acumulated must be also generated.

% Generating N random positions, simulating and savin into variables
N = 30
E_d_vec = [];
E_theta_vec = [];
V_vec = [];
W_vec = [];

for i = 1 : N
    refx = 10 * rand - 5;
    refy = 10 * rand - 5;
    sim('PositionControl.slx')
    E_d_vec = [E_d_vec;out.E_d.signals.values];
    E_theta_vec = [E_theta_vec;out.E_theta.signals.values];
    V_vec = [V_vec; out.V.signals.values];
    W_vec = [W_vec; out.W.signals.values];
end
inputs = [E_d_vec';E_theta_vec'];
outputs = [W_vec';W_vec'];
