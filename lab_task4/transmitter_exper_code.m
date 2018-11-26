%% Task4 Experimental Plots
close all;

data = csvread('transmitter_exper_current.csv');
time = data(:,1);
current = data(:, 2);

plot(time * 1e6, current * 1e3, 'linewidth', 2);
set(gca, 'fontsize', 20);
% title('Experimental Optical Link Transmitter LED Current');
xlabel('Time, microseconds');
ylabel('LED Current, mA');
grid on;
xlim([0, 250]);