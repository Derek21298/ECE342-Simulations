% ECE 342 - Derek Haas & Cameron Sullivan - Lab Task 2 MATLAB

close all;

array = csvread('task2_design.CSV');
freq = array(:, 1);
dB = array(:, 4);

% Plot frequency response of the MFBP filter.
semilogx(freq, dB,'linewidth', 1.9);
grid on;
set(gca,'fontsize',20); % set font size
title('MFBP Filter Simulated Frequency Response (2-stage)');
ylabel('Gain, dB');
xlabel('Frequency, Hz');
xlim([10e2 30e4]);
ylim([-20 70]);

max(dB)
fmax = interp1(dB,freq,max(dB))
index = find(freq == fmax);
a = freq(1:index);
b = freq(index:end);

% Find and plot lower cutoff frequency line.
f3db = interp1(dB(1:length(a)),a,60.18)
line([f3db f3db], [-60 60.18],'linestyle', '--');
label1 = 'f_{b,lower} = 16.9 kHz';
text(0.8e4,60.18,label1,'fontsize',15);

% Find and plot max gain frequency line.
line([fmax fmax], [-20, 63.18],'linestyle','--');
label1 = 'f_{0} = 20.0 kHz';
text(1.9e4,65.18,label1,'fontsize',15);

% Find and plot upper cutoff frequency line.
f3db2 = interp1(dB(length(a):end),b,60.18)
line([f3db2 f3db2], [-60 60.18],'linestyle', '--');
label1 = 'f_{b,upper} = 22.1 kHz';
text(2.3e4,60.18,label1,'fontsize',15);
hold off;