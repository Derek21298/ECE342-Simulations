%% ECE 342 - Cameron Sullivan - HW14 #4 MATLAB

%% Gain plot
close all;

data = csvread('num4-src-follower-gain.CSV');
frequency = data(:,1);
gain = data(:,4);

figure(1);
semilogx(frequency, gain, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
title('Source Follower Frequency Response');
ylabel('Gain, dB');
xlabel('Frequency, Hz');
% ylim([ ]);
xlim([100, 2e6]);
hold on;

%% Phase plot
close all;

data = csvread('num4-src-follower-phase.CSV');
frequency = data(:,1);
phase = data(:,4);

figure(1);
semilogx(frequency, phase, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
title('Source Follower Phase Response');
ylabel('Phase, degrees');
xlabel('Frequency, Hz');
% ylim([ ]);
% xlim([ ]);
hold on;