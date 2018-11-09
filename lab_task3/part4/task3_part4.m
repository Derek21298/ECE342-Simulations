%% Number 4
%   Author: Derek Haas
%   Date: 10-28-18
%

close all;

%% Plot astable multivibrator transient response
close all;

data = csvread('astableMulti_transient.CSV');
time = data(:, 1);
Vout = data(:, 2);

figure(1);

plot(time * 10e5, Vout, 'linewidth', 2);
set(gca,'fontsize',20)
% title('Astable Multivibrator Transient Response');
xlabel('Time, Microseconds')
ylabel('v_{out}, Volts');
grid on;
ylim([-1 6]);

text(21,5.5, 'f = 20.1 kHz, DC = 48.1 %', 'FontSize', 20);