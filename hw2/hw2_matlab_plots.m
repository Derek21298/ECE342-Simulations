% ECE 342 - Cameron Sullivan - HW2 MATLAB code to plot graphs from CSVs

fs = 16; % define font size
lw = 1.5; % define linewidth

%% NUMBER 4 PART C
% Plot Vsig
Array1 = csvread('hw2-num4c-vsig.csv');             % Read Vsig & time from CSV.
t1 = Array1(:, 1);
Vsig = Array1(:, 2);

plot(t1, Vsig, 'linewidth', lw);                    % Plot Vsig versus time
set(gca, 'fontsize', fs);
title('Level Shifter Transient Analysis Voltage');
xlabel('Time, s');
ylabel('Voltage, V');
grid on;
hold on;

% Plot Vin
Array2 = csvread('hw2-num4c-vin.csv');              % Read Vin & time from CSV.
t2 = Array2(:, 1);
Vin = Array2(:, 2);
plot(t2, Vin, 'linewidth', lw);                     % Add Vin versus time to the existing plot.
legend('Vsig', 'Vin');

% Calculate phase shift using maximum values.
vsig_peak = max(Vsig);
time_vsig = t1(Vsig == vsig_peak);                  % Find the times of Vsig's max value.
time_vsig(2);                                       % Use the second time value because it is from the second oscillation.

vin_peak = max(Vin);
time_vin = t2(Vin == vin_peak);                     % Find the times of Vin's max value.
time_vin(1);                                        % Use the first time value because it is from the second oscillation.

deltaT = time_vin(1) - time_vsig(2)
PS = 360 * deltaT * 20                              % PS = 360 * dT * frequency (Hz)

%% NUMBER 4 PART D

% Plot Vsig
Array1 = csvread('hw2-num4d-vsig.csv');             % Read Vsig & time from CSV.
t1 = Array1(:, 1) * 10e2;   % Milliseconds
Vsig = Array1(:, 2);

plot(t1, Vsig, 'linewidth', lw);                    % Plot Vsig versus time
set(gca, 'fontsize', fs);
title('Level Shifter Transient Analysis Voltage');
xlabel('Time, ms');
ylabel('Voltage, V');
grid on;
hold on;

% Plot Vin
Array2 = csvread('hw2-num4d-vin.csv');              % Read Vin & time from CSV.
t2 = Array2(:, 1) * 10e2;   % Milliseconds
Vin = Array2(:, 2);
plot(t2, Vin, 'linewidth', lw);                     % Add Vin versus time to the existing plot.
legend('Vsig', 'Vin');

% Calculate phase shift using maximum values.
vsig_peak = max(Vsig);
time_vsig = t1(Vsig == vsig_peak);                 % Find the times of Vsig's max value.
time_vsig(1)                                       % Use the first time value because it is from the second oscillation.

vin_peak = max(Vin);
time_vin = t2(Vin == vin_peak);                     % Find the times of Vin's max value.
time_vin(1)                                        % Use the first time value because it is from the second oscillation.

deltaT = time_vin(1) - time_vsig(1);
PS = 360 * deltaT * 20                              % PS = 360 * dT * frequency (Hz)

%% NUMBER 5

Array = csvread('hw2-num5.csv');  
Vin = Array(:, 1);
Vout = Array(:, 3);
plot(Vin, Vout, 'linewidth', 1.5);
set(gca, 'fontsize', 16);
title('LF351 Inverting Op Amp DC Sweep');
xlabel('Vin, V');
ylabel('Vout, V');
grid on;
axis([-12 12 -12 12])