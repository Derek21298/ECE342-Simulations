%% ECE 342 - Derek Haas and Cameron Sullivan - Lab Task 3 Part 2 MATLAB

close all;

%% Plot Voltage Transfer Characteristic of CMOS

data = csvread('CMOS_VTC_stage1.CSV');
Vin = data(:, 1);
Vout = data(:, 3);

figure(1);

plot(Vin, Vout, 'linewidth', 2);
set(gca,'fontsize',20);
% title('Simulated Voltage Transfer Characteristic of the 3-Stage CMOS Inverter');
xlabel('V_{I}, Volts')
ylabel('V_{O}, Volts');
grid on;
ylim([-1 6])

%% Plot transient response of stage 1.
close all;

input = csvread('cmos-sim-trans-stage1-input.csv');
time = input(:, 1);
vin = input(:, 2);
output = csvread('cmos-sim-trans-stage1-output.csv');
time = input(:, 1);
vout = output(:, 2);

plot(time * 1e3, vin,'linewidth',2);
hold on;
plot(time * 1e3, vout,'linewidth',2);
set(gca,'fontsize',20);
% title('CMOS Inverter Transient Response');
ylabel('v_{O}, Volts');
xlabel('Time, ms');
grid on;
xlim([0.8 1.6]);

legend('vI','vO1');

hold off;

%% Plot Output of Stage 1 and Stage 2 to determine propagation delay.

data = csvread('CMOS_transient_stage1.CSV');
time = data(:, 1);
stage1 = data(:, 2);

figure(2);
plot(time * 1e3, stage1,'linewidth',1.8);
set(gca,'fontsize',20);
title('CMOS Transient Simulation: Stage 1 and Stage 2 Propagation Delay');
xlabel('Time, ms');
ylabel('V_{O}, Volts');
grid on;
ylim([-1 6]);
hold on;

data = csvread('CMOS_transient_stage2.CSV');
time = data(:, 1);
stage2 = data(:, 2);

plot(time * 1e3, stage2,'linewidth',1.8);
xlim([999.965e-3 1000.1e-3]);

legend('Stage 1', 'Stage 2');