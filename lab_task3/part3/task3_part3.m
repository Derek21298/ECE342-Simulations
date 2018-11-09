%% ECE 342 - Derek Haas and Cameron Sullivan - Lab Task 3 Part 3 MATLAB

close all;

%% Plot transient response of ring oscillator.

data = csvread('ring-oscillator-transient.CSV');
time = data(:, 1);
Vout = data(:, 2);

plot(time * 10e5, Vout, 'linewidth', 2);
set(gca,'fontsize',20);
% title('Ring Oscillator Transient Response');
ylabel('v_{out}, Volts');
xlabel('Time, Microseconds');
grid on;
xlim([200 500]);

text(252,3.75, 'f = 19.9 kHz', 'FontSize', 22);