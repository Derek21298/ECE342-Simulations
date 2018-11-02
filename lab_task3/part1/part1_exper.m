%% ECE 342 Lab Task 3 Part 1

input = csvread('nmos-exper-vtc-INPUT.csv');
output = csvread('nmos-exper-vtc-OUTPUT.csv');

inputVoltage = input(:,2);
outputVoltage = output(:,2);

plot(inputVoltage, outputVoltage);
grid on;