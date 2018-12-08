%% ECE 342 - Derek Haas & Cameron Sullivan - Lab Task 5 Experimental MATLAB code.
close all;


%% CS Amplifier Experimental AVO
close all;

data = csvread('cs_exper_AVO.csv');
frequency = data(:,1);
voltage = data(:,2);

figure(1);
semilogx(frequency, voltage, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
% title('Common Source Amplifier Experimental Frequency Response');
ylabel('A_{VO} (Unloaded Gain), dB');
xlabel('Frequency, Hz');
% ylim([ ]);
% xlim([ ]);
hold on;

%% CS Amplifier Experimental AV

%% CE Amplifier Experimental AVO
close all;

data = csvread('ce_exper_AVO.csv');
frequency = data(:,1);
voltage = data(:,2);

figure(1);
semilogx(frequency, voltage, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
% title('Common Emitter Amplifier Experimental Frequency Response');
ylabel('A_{VO} (Unloaded Gain), dB');
xlabel('Frequency, Hz');
% ylim([ ]);
% xlim([ ]);
hold on;

%% CE Amplifier Experimental AV
