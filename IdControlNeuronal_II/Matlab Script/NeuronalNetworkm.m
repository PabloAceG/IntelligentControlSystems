% f) Create a neuronal network with just one hidden level. The network must
% do the same things as the provided controller. The number of hidden
% neuronons must be found by experimentation and the chossen value has to
% be discuss.

sim('PositionControl.slx')
%inputs =  [out.E_d.signals.values, out.E_theta.signals.values]
%targets = [out.V.signals.values, out.W.signals.values]

hiddenNeurons = 1;
net = feedforwardnet([hiddenNeurons]);
net = configure(net,inputs,targets);
net = train(net,inputs,targets);

hiddenNeurons = 3;
net = feedforwardnet([hiddenNeurons]);
net = configure(net,inputs,targets);
net = train(net,inputs,targets);

hiddenNeurons = 5;
net = feedforwardnet([hiddenNeurons]);
net = configure(net,inputs,targets);
net = train(net,inputs,targets);

hiddenNeurons = 7;
net = feedforwardnet([hiddenNeurons]);
net = configure(net,inputs,targets);
net = train(net,inputs,targets);

hiddenNeurons = 10;
net = feedforwardnet([hiddenNeurons]);
net = configure(net,inputs,targets);
net = train(net,inputs,targets);

view(net)

