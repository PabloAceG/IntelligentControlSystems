
% Init variables
hiddenNeurons = 5;
input_retard = 2;
output_retard = 2;

% NARX model definition
net = narxnet(1:input_retard, 1:output_retard, [hiddenNeurons]);

view(net)

% Prepare and tranform inputs and outputs into cell arrays

nT = size(inputs, 2);
cell_in = mat2cell(inputs, 1, ones(nT,1));
cell_out = mat2cell(outputs,1, ones(nT,1));

% Transform data and output, because the training used is feedforward

[x,xi,ai,t] = preparets(net, cell_in, {}, cell_out);

% Data division for trainig, vaidation and test sets
net.divideParam.trainRatio = 55/100;
net.divideParam.valRatio   = 22.5/100;
net.divideParam.testRatio  = 22.5/100;

% Network training and convertion to recursive net
net = train(net,x,t,xi,ai);
net = closeloop(net);


view(net)

