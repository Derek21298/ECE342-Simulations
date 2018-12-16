%% ECE 342 - Derek Haas & Cameron Sullivan - Task 6 MATLAB

%% Transmitter current
close all;

data = csvread('optical_link_LED_current.csv');
time = data(:,1);
current = data(:, 2) / 100;

plot(time * 1e6, current * 1e3, 'linewidth', 2);
set(gca, 'fontsize', 20);
title('Optical Link Transmitter LED Current');
xlabel('Time, microseconds');
ylabel('LED Current, mA');
grid on;
xlim([0, 250]);

%% Receiver time domain signal
close all;

data = csvread('optical_link_time_FINAL.csv');
time = data(:,1);
voltage = data(:, 2);

plot(time * 1e6, voltage, 'linewidth', 2);
set(gca, 'fontsize', 20);
title('Optical Link Transmitter Signal');
xlabel('Time, microseconds');
ylabel('Output Voltage, V');
grid on;
xlim([0, 250]);

%% Receiver spectrum analyzer output
close all;

data = csvread('optical_link_SNR_FINAL.csv');
frequency = data(:,1);
gain = data(:, 2);

plot(frequency, gain, 'linewidth', 2);
set(gca, 'fontsize', 20);
title('Optical Link Gain');
xlabel('Frequency, Hz');
ylabel('Gain, dBV');
grid on;

figure(2);
plot(frequency, gain, 'linewidth', 2);
set(gca, 'fontsize', 20);
title('Optical Link Gain');
xlabel('Frequency, Hz');
ylabel('Gain, dBV');
grid on;
xlim([15e3, 21e3]);
