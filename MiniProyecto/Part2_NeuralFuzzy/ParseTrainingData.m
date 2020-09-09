%data = matfile('datos_entrenamiento_sin_obstaculos.mat');
data = matfile('datos_entrenamiento_con_obstaculos.mat');
data = data.training;

% Selection of the needed resources for the training angular speed.
% Sonar_0, sonar_2, sonar_3 and angular speed.
%train_angular = data(:, [1, 3, 12]);     % No obstacles
train_angular = data(:, [1, 3, 4, 12]); % Obstacles
indices       = round(linspace(1, size(data, 1), 1500));
train_angular = train_angular(indices,:);
train_angular(isinf(train_angular)) = 5.0;
train_angular = double(train_angular);

% Selection of the needed resources for the training linear speed.
% Sonar_0, sonar_2, sonar_3 and linear speed.
%train_linear = data(:, [1, 3, 13]);     % No obstacles
train_linear = data(:, [1, 3, 4, 13]);  % Obstacles
indice       = round(linspace(1, size(data, 1), 1500));
train_linear = train_linear(indices, :);
train_linear(isinf(train_linear)) = 5.0;
train_linear = double(train_linear);
