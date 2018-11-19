%% Cameron Sullivan - ECE 342 - HW 11 #3 part A Plots
close all;

%% Circuit 1

data = csvread('FChild_2N3904_circuit1.CSV');
temperature = data(:,1);
I_C = data(:,3);

figure(1);
plot(temperature, I_C * 10e2, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
title('FChild Circuit 1: Collector Current vs Circuit Temperature');
ylabel('I_{C}, mA');
xlabel('Temperature, degrees C');

%% Circuit 2

data = csvread('FChild_2N3904_circuit2.CSV');
temperature = data(:,1);
I_C = data(:,3);

figure(2);
plot(temperature, I_C * 10e2, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
title('FChild Circuit 2: Collector Current vs Circuit Temperature');
ylabel('I_{C}, mA');
xlabel('Temperature, degrees C');

%% Circuit 3

data = csvread('FChild_2N3904_circuit3.CSV');
temperature = data(:,1);
I_C = data(:,3);

figure(3);
plot(temperature, I_C * 10e2, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
title('FChild Circuit 3: Collector Current vs Circuit Temperature');
ylabel('I_{C}, mA');
xlabel('Temperature, degrees C');