%% ECE 342 Lab Task 3 Part 1
close all;

input = csvread('nmos-exper-vtc-INPUT-test.csv');
output = csvread('nmos-exper-vtc-OUTPUT-test.csv');

inputVoltage = input(:,2);
outputVoltage = output(:,2);

plot(inputVoltage, outputVoltage, 'Linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
% title('Experimental NMOS Inverter VTC');
xlabel('Vin, V');
ylabel('Vout, V');


%% Transient response

output = csvread('nmos-exper-transient.csv');

time = output(:,1);
outputVoltage = output(:,2);

plot(time * 10e2, outputVoltage, 'Linewidth', 2);
xlim([-2.6 2.6]);
grid on;
set(gca, 'fontsize', 20);
% title('Experimental NMOS Inverter Transient Response');
ylabel('Vout, V');
xlabel('Time, ms');