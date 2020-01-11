
data = matfile('datos_entrenamiento.mat');
data = data.training;

% Selection of the needed resources for the training angular speed.
% Sonar_0, sonar_2, sonar_3, sonar_5 and angular speed.
train_angular = data(:, [1, 3, 4, 6, 12]);
indices = round(linspace(1, size(data, 1), 1500));
train_angular = train_angular(indices,:);
train_angular(isinf(train_angular)) = 5.0;
train_angular = double(train_angular);

% Selection of the needed resources for the training linear speed.
% Sonar_0, sonar_2, sonar_3, sonar_5 and linear speed.
train_linear = data(:, [1, 3, 4, 6, 13]);
indice = round(linspace(1, size(data, 1), 1500));
train_linear = train_linear(indices, :);
train_linear(isinf(train_linear)) = 5.0;
train_linear = double(train_linear);
