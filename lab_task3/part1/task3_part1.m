%% Number 1
%   Author: Derek Haas
%   Date: 10-23-18
%

close all;

%% Plots VOL vs RD

data = csvread('NMOS_VOLvsRD.CSV');
RD = data(:, 1);
VOL = data(:, 3);

figure(1);

plot(RD * 10e-4, VOL);
set(gca,'fontsize',20);
% title('Output Low Voltage vs Drain Resistance');
xlabel('R_{D}, k\Omega')
ylabel('V_{OL}, Volts');
grid on;
xlim([1 100]);

rd = interp1(VOL,RD,2.5) / 1e3
line([rd rd], [0 2.5], 'linestyle', '--');
label = 'V_{OL} = 2.5 V when R_{D} = 4.11 k\Omega';
text(5, 2.5, label, 'fontsize', 20);


%% Plot Voltage Transfer Characteristic Rd = 1k

data = csvread('NMOS_VTC_1k.CSV');
Vout = data(:, 1);
Vgs = data(:, 3);

figure(2);

plot(Vout, Vgs, 'linewidth', 2);
set(gca,'fontsize',20);
% title('Voltage Transfer Characteristic when R_{D} = 1 k\Omega, 4.44 k\Omega, 100 k\Omega');
xlabel('V_{I}, Volts');
ylabel('V_{O}, Volts');
grid on;
hold on;
ylim([-1 6]);

%% Plot Voltage Transfer Characteristic Rd = 4.4k

data = csvread('NMOS_VTC_4k4.CSV');
Vout = data(:, 1);
Vgs = data(:, 3);

figure(3);

plot(Vout, Vgs, 'linewidth', 2);
set(gca,'fontsize',20);
% title('Voltage Transfer Characteristic when R_{D} = 1 k\Omega, 4.44 k\Omega, 100 k\Omega');
xlabel('V_{I}, Volts');
ylabel('V_{O}, Volts');
grid on;
ylim([-1 6])

%% Plot Voltage Transfer Characteristic Rd = 100k

data = csvread('NMOS_VTC_100k.CSV');
Vout = data(:, 1);
Vgs = data(:, 3);

figure(4);

plot(Vout, Vgs, 'linewidth', 2);
set(gca,'fontsize',20);
% title('Voltage Transfer Characteristic for R_{D} = 1 k\Omega, 4.44 k\Omega, 100 k\Omega');
xlabel('V_{I}, Volts');
ylabel('V_{O}, Volts');
grid on;
ylim([-1 6]);
legend('R_{D} = 1 k\Omega', 'R_{D} = 4.44 k\Omega', 'R_{D} = 100 k\Omega');

%% Transient Simulation Rd = 1k
close all;

input = csvread('nmos-sim-trans-1k-input.csv');
time = input(:, 1);
vin = input(:, 2);
output = csvread('nmos-sim-trans-1k-output.csv');
time = output(:, 1);
vout = output(:, 2);

figure(5);

plot(time * 1e3, vin, 'linewidth', 2);
hold on;
plot(time * 1e3, vout, 'linewidth', 2);
set(gca,'fontsize',20);
% title('NMOS Inverter Simulated Transient Response when R_{D} = 1 k\Omega');
xlabel('Time, ms')
ylabel('V_{O1}, Volts');
grid on;
ylim([-1 6]);
legend('vI', 'vO');

% hold off;

%% Transient Simulation Rd = 4.4k
close all;

input = csvread('nmos-sim-trans-4k4-input.csv');
time = input(:, 1);
vin = input(:, 2);
output = csvread('nmos-sim-trans-4k4-output.csv');
time = output(:, 1);
vout = output(:, 2);

% figure(6);

plot(time * 1e3, vin, 'linewidth', 2);
hold on;
plot(time * 1e3, vout, 'linewidth', 2);
set(gca,'fontsize',20);
% title('NMOS Inverter Simulated Transient Response when R_{D} = 4.44 k\Omega');
xlabel('Time, ms')
ylabel('V_{O1}, Volts');
grid on;
ylim([-1 6]);
legend('vI', 'vO');

%% Transient Simulation Rd = 100k

input = csvread('nmos-sim-trans-100k-input.csv');
time = input(:, 1);
vin = input(:, 2);
output = csvread('nmos-sim-trans-100k-output.csv');
time = output(:, 1);
vout = output(:, 2);

% figure(7);

plot(time * 1e3, vin, 'linewidth', 2);
hold on;
plot(time * 1e3, vout, 'linewidth', 2);
set(gca,'fontsize',20);
% title('NMOS Inverter Simulated Transient Response when R_{D} = 100 k\Omega');
xlabel('Time, ms')
ylabel('V_{O1}, Volts');
grid on;
ylim([-1 6]);
legend('vI', 'vO');

%% Transient Simulation VDD = 10 V
close all;

input = csvread('nmos-sim-trans-10V-input.csv');
time = input(:, 1);
vin = input(:, 2);
output = csvread('nmos-sim-trans-10V-output.csv');
time = output(:, 1);
vout = output(:, 2);

figure(7);

plot(time * 1e3, vin, 'linewidth', 2);
hold on;
plot(time * 1e3, vout, 'linewidth', 2);
set(gca,'fontsize',20);
% title('NMOS Inverter Simulated Transient Response when R_{D} = 100 k\Omega');
xlabel('Time, ms')
ylabel('V_{O1}, Volts');
grid on;
ylim([-1 11]);

%% Transient Simulation VDD = 15 V
close all;

input = csvread('nmos-sim-trans-15V-input.csv');
time = input(:, 1);
vin = input(:, 2);
output = csvread('nmos-sim-trans-15V-output.csv');
time = output(:, 1);
vout = output(:, 2);

figure(7);

plot(time * 1e3, vin, 'linewidth', 2);
hold on;
plot(time * 1e3, vout, 'linewidth', 2);
set(gca,'fontsize',20);
% title('NMOS Inverter Simulated Transient Response when R_{D} = 100 k\Omega');
xlabel('Time, ms')
ylabel('V_{O1}, Volts');
grid on;
ylim([-1 16]);
legend('vI', 'vO');