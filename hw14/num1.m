%% ECE 342 - Cameron Sullivan - HW14 #1 MATLAB
% Common gate amplifier plots
close all;

%% Gain plot
close all;

data = csvread('num1-CGAmp-gain.CSV');
frequency = data(:,1);
gain = data(:,4);

figure(1);
semilogx(frequency, gain, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
title('Common Gate Amplifier Frequency Response');
ylabel('Gain, dB');
xlabel('Frequency, Hz');
% ylim([ ]);
% xlim([ ]);
hold on;

%% Phase plot
close all;

data = csvread('num1-CGAmp-phase.CSV');
frequency = data(:,1);
phase = data(:,4);

figure(1);
semilogx(frequency, phase, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
title('Common Gate Amplifier Phase Response');
ylabel('Phase, degrees');
xlabel('Frequency, Hz');
% ylim([ ]);
% xlim([ ]);
hold on;