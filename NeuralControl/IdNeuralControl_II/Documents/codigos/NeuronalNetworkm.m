% f) Create a neuronal network with just one hidden level. The network must
% do the same things as the provided controller. The number of hidden
% neuronons must be found by experimentation and the chossen value has to
% be discuss.

sim('PositionControl.slx')
inputs =  [out.E_d.signals.values, out.E_theta.signals.values]
targets = [out.V.signals.values, out.W.signals.values]

net = feedforwardnet([10]);
net = configure(net,inputs,targets);
net = train(net,inputs,targets);

view(net)

% Sampling time
Ts = 100e-3

%X-Y reference the position
refx = 2.0;
refy = 2.0;
gensim(net,Ts)