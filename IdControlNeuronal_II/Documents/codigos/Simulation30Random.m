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
outputs = [W_vec';W_vec'];
