% ECE 342 - Cameron Sullivan - Lab Task 1 MATLAB code

close all;

Array1 = csvread('TZ_amplifier_Gain_dB.CSV');
frequency1 = Array1(:, 1);
dB_gain = Array1(:, 4);

Array2 = csvread('TZ_amplifier_Gain_Ohms.CSV');
frequency2 = Array2(:, 1);
ohm_gain = Array2(:, 4) / 10e2;

% subplot(2,1,1);
semilogx(frequency1, dB_gain, 'linewidth', 1.5);
%title('Transimpedance Amplifier Simulated Frequency Response');
set(gca,'fontsize',20); % set font size
xlabel('Frequency, Hz');
ylabel('Gain, dB');
hold on;
grid on;
f3db = interp1(dB_gain,frequency1,102.2)
line([f3db f3db], [90 102.2],'linestyle', '--');
hold off;

% subplot(2,1,2);
% semilogx(frequency2, ohm_gain, 'linewidth', 1.5);
% %title('Transimpedance Amplifier Simulated Frequency Response');
% xlabel('Frequency, Hz');
% ylabel('Gain, kilo-ohms');
% grid on;
