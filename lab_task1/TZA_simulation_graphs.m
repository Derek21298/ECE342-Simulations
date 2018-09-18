% ECE 342 - Cameron Sullivan - Lab Task 1 MATLAB code

Array1 = csvread('TZ_amplifier_Gain_dB.CSV');
frequency1 = Array1(:, 1) / 10e2;
dB_gain = Array1(:, 4);

Array2 = csvread('TZ_amplifier_Gain_Ohms.CSV');
frequency2 = Array2(:, 1) / 10e2;
ohm_gain = Array2(:, 4) / 10e2;

subplot(2,1,1);
plot(frequency, dB_gain, 'linewidth', 1.5);
title('Transimpedance Amplifier Simulated Frequency Response');
xlabel('Frequency, KHz');
ylabel('Gain, dB');
grid on;

subplot(2,1,2);
plot(frequency, ohm_gain, 'linewidth', 1.5);
title('Transimpedance Amplifier Simulated Frequency Response');
xlabel('Frequency, KHz');
ylabel('Gain, kilo-ohms');
grid on;