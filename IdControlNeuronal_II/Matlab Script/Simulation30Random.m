% e) Do N=30 simulations of the controler providing random values for refx 
% and refy using a loop, which is inside an enviroment of 10x10 metes.
% For each simulation, time for inputs and outputs must be saved.
% Generated an "input" matrix with 2xN size, where E_d and E_theta values
% are acumulated. In the same way, an "output" matrix where variable V and
% W are acumulated must be also generated.

% Generating N random positions, simulating and saving them into variables
N = 30
E_d_vec = [];
E_theta_vec = [];
V_vec = [];
W_vec = [];

% for i = 1 until 1 = 30
for i = 1 : N
    % rand generates random numbers between 0 and 1, as we have an
    % eviroment of 10 x 10 meters, we just have to multiple the number 
    refx = 10 * rand;
    refy = 10 * rand;
    
    % Execute simulation
    sim('PositionControl.slx')
    
    % Add signals values to the correspondant array
    E_d_vec = [E_d_vec;E_d.signals.values];
    E_theta_vec = [E_theta_vec;E_theta.signals.values];
    
    V_vec = [V_vec; V.signals.values];
    W_vec = [W_vec; W.signals.values];
    
    i = i+1;
end

% Group by inputs and output the arrays obtained before
inputs = [E_d_vec';E_theta_vec'];
targets = [W_vec';W_vec'];
