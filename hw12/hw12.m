%% ECE 342 - Cameron Sullivan - HW12

%% #2 Part A: NMOS amplifier gain vs input voltage
close all;

input = csvread('nmos-exper-vtc-INPUT-test.csv');
output = csvread('nmos-exper-vtc-OUTPUT-test.csv');

inputVoltage = input(:,2);
outputVoltage = output(:,2);

% Nuri said my graph was too noisy. His method to smooth the graph is to average each 10 values and plot that averaged subset.
vin_total = 0;
vout_total = 0;
vin_avg = zeros(1,92);
vout_avg = zeros(1,92);
for n = 0:10:910
    for i = 1:10
        vin_total = vin_total + inputVoltage(n + i);
        vout_total = vout_total + outputVoltage(n + i);
    end
    vin_avg((n/10) + 1) = vin_total / 10;
    vout_avg((n/10) + 1) = vout_total / 10;
    vin_total = 0;
    vout_total = 0;
end

% Derivatives
dvin = diff(vin_avg);
dvout = diff(vout_avg);

gain = dvout ./ dvin;
figure(1);
plot(vin_avg(1:(end-1)), gain, 'linewidth', 2.2);
set(gca, 'fontsize', 20);
title('NMOS Amplifier Gain vs Input Voltage');
ylabel('A_{v}, V/V');
xlabel('V_{GS}, V');
xlim([0, 5]);
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
semilogx(frequency, 20*log10(abs(gain)), 'linewidth', 2.2);
grid on;
set(gca, 'fontsize', 20);
title('BJT Amplifier Gain Response');
ylabel('A_{V}, dB');
xlabel('Frequency, Hz');