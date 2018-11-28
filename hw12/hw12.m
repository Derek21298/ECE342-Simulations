%% ECE 342 - Cameron Sullivan - HW12

%% #2 Part A: NMOS amplifier gain vs input voltage
close all;

input = csvread('nmos-exper-vtc-INPUT-test.csv');
output = csvread('nmos-exper-vtc-OUTPUT-test.csv');

inputVoltage = input(:,2);
outputVoltage = output(:,2);

gain = outputVoltage ./ inputVoltage;
plot(inputVoltage, gain, 'linewidth', 2.2);
set(gca, 'fontsize', 20);
title('NMOS Amplifier Gain vs Input Voltage');
ylabel('A_{v}, V/V');
xlabel('V_{GS}, V');
xlim([0.01243, 4.5]);
% figure(2);
% plot(inputVoltage, outputVoltage, 'linewidth', 2);
grid on;

%% #4 Part A: BJT amplifier VTC graph
close all;

data = csvread('BJT_amp_VTC.CSV');
vin = data(:,1);
vout = data(:,3);

figure(1);
plot(vin, vout, 'linewidth', 2.2);
grid on;
set(gca, 'fontsize', 20);
title('BJT Amplifier VTC');
ylabel('V_{OUT}, V');
xlabel('V_{IN}, V');

%% #4 Part B: BJT amplifier AC simulation
close all;

data = csvread('BJT_amp_fResponse.CSV');
frequency = data(:,1);
gain = data(:,4);

figure(1);
semilogx(frequency, abs(gain), 'linewidth', 2.2);
grid on;
set(gca, 'fontsize', 20);
title('BJT Amplifier Gain Response');
ylabel('V_{OUT}/V_{IN}, V/V');
xlabel('Frequency, Hz');