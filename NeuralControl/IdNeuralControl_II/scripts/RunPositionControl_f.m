%                                 DISCLAIMER:
% IT IS NECESSARY TO EXECUTE THE SCRIPT "RunPositionControl_e.m" IN ORDER
% FOR THIS OTHER SCRIPT TO WORK.
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

inputs = [];
outptus = [];

load('inputs.mat', 'inputs');
load('outputs.mat', 'outputs');

% Entrenar red neuronal con 10 neuronas en la capa oculta
net = feedforwardnet( [ 50 ] );
net = configure(net, inputs, outputs);
net = train(net, inputs, outputs);
