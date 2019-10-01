% LINES THAT ALWAYS HAVE TO BE: clear variables, close opened windows and 
% clean the comand windows
%-------------------------------------------------------------------------%
clear variables;
close all;
clc;
%-------------------------------------------------------------------------%

%EXERCISE 1:  SIGNAL TRANSFORMATION

% Symbolic Variables
syms x y z

% Range of Values
k = 0 : 1 : 10;
a = 0 : 1 : 10;

% 1. Obtain the z transformation of the following function:
%    f(k) = 2 + 5k + k^2
%    Give a graphical representation for the original signal and the
%    transformed signal.

% Original Function
fun = 2 + 5 .* x + x.^2;
fun_val = 2 + 5 .* k + k.^2;
% Representation
subplot(3, 2, 1)
plot(k, fun_val)
% --- Title
title('f(k) = 2 + 5k + k^2')
xlabel('Discrete Time')
ylabel('Value')

% Z Transformation
zfun = ztrans(fun)
% Separates de function into numerator and denominator
[num, den] = numden(zfun);
% Specification of sampling period
T = 0.1; 

H = tf(sym2poly(num), sym2poly(den), T)

subplot(3, 2, 2)
step(H, 10)

% 2. Obtain the z transformation of the following function:
%    f(k) = sin(k) e^(-ak)
%    Give a graphical representation for the original signal and the
%    transformed signal.

% Original Function
fun2 = sin(x) .* exp(-y .* x);
fun2_val = sin(k) .* exp(-a .* k);
% Representation
subplot(3, 2, 3)
plot(fun2_val)
% --- Title
title('f(k) = sin(k) e^(-ak)')
xlabel('Discrete Time')
ylabel('Value')

% Z Transformation
zfun2 = ztrans(fun2)
% Separates de function into numerator and denominator
[num, den] = numden(zfun);
% Specification of sampling period
T = 0.1; 

H = tf(sym2poly(num), sym2poly(den), T)

subplot(3, 2, 4)
step(H, 10)

% 3. Given the following funtions of discrete transfer:
%    T(z) = 0.4z^2 / (z^3 - z^2 + 0.1z + 0.02)

% Function
Tz = 0.4 .* z.^2 ./ (z.^3 - z.^2 + 0.1 .* z + 0.02);
% Separates de function into numerator and denominator
[num, den] = numden(Tz);
% Specification of sampling period
T = 0.1; 
% Generates transfer function
H = tf(sym2poly(num), sym2poly(den), T)

%    - Obtain and represent the answer to the impulse of the system.

subplot(3, 2, 5)
impulse(H, 6)

%    - Obtain and represent the answer for the system given a stepped
%      input.

subplot(3, 2, 6)
step(H)
