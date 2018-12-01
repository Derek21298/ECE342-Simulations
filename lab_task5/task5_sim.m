%% ECE 342 - Derek Haas & Cameron Sullivan - Lab Task 5 MATLAB code.
close all;


%% CS Amplifier Simulation
close all;

data = csvread('common_source_sim.CSV');
frequency = data(:,1);
voltage = data(:,4);

figure(1);
semilogx(frequency, voltage, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
title('Common Source Amplifier Frequency Response');
ylabel('A_{VO} (Unloaded Gain), dB');
xlabel('Frequency, Hz');
% ylim([ ]);
% xlim([ ]);
hold on;


%% CE Amplifier Simulation
close all;

data = csvread('common_emitter_sim.CSV');
frequency = data(:,1);
voltage = data(:,4);

figure(1);
semilogx(frequency, voltage, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
% title('Common Emitter Amplifier Frequency Response');
ylabel('A_{VO} (Unloaded Gain), dB');
xlabel('Frequency, Hz');
% ylim([ ]);
% xlim([ ]);
hold on;