%% Task4 Experimental Plots

data = csvread('transmitter_exper_current.csv');
time = data(:,1);
current = data(:, 2);

plot(time * 1e6, current * 1e3);
title('LED Driver Current');
xlabel('Time, us');
ylabel('Current, mA');
grid on;
% xlim([0, 250]);