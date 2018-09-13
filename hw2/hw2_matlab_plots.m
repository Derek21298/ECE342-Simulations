% ECE 342 - Cameron Sullivan - HW2 MATLAB code to plot graphs from CSVs

% Plot Vsig
Array1 = csvread('hw2-num4c-vsig.csv');
t = Array1(:, 1);
Vsig = Array1(:, 2);
plot(t, Vsig);
title('Level Shifter Transient Analysis Voltage');
xlabel('Time, s');
ylabel('Voltage, V');
grid on;
hold on;

% Plot Vin
Array2 = csvread('hw2-num4c-vin.csv');
t = Array2(:, 1);
Vin = Array2(:, 2);
plot(t, Vin);