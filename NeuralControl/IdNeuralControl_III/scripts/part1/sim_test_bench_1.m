%% Generación de datos de simulación
Ts = 0.1;

sim('test_bench.slx');

inputs = x.signals.values';
outputs = y.signals.values';

save('inputs.mat', 'inputs');
save('outputs.mat', 'outputs');