% ECE 342 - Cameron Sullivan - HW2 MATLAB code to plot graphs from CSVs

% Plot Vsig
Array1 = csvread('hw2-num4c-vsig.csv');
t = Array(:, 1);
Vsig = Array(:, 2);
plot(t, vsig);
hold on;

% Plot Vin
Array2 = csvread('hw2-num4c-vin.csv');
t = Array(:, 1);
Vin = Array(:, 2);
plot(t, Vin);