%% TUTORIAL LAB #3 MATLAB SCRIPT
%   Authorz: Derek Haas, Cameron Sullivan

close all;

%% Plot Ic vs Vbe

data = csvread('SS9018Vbe.csv', 1);
BaseV = data(:,1);
BaseI = data(:,2);
CollectorI = data(:,3);

% ln(Ic) = ln(Isc) + Vbe / VT
% y-intercept = ln(Isc)
% slope = 1 / VT

figure(1);
plot(BaseV, log(CollectorI * 1e3), 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
title('ln(I_{C}) vs V_{BE}');
xlabel('Voltage, V');
ylabel('Current, mA');


%% Plot Ic vs Vce

data = csvread('SS9018Vce.csv', 1);
CollectorV = data(:,1);
Ic01 = data(:,2);
Ic02 = data(:,3);
Ic03 = data(:,4);
Ic04 = data(:,5);
Ic05 = data(:,6);
Ic06 = data(:,7);
Ic07 = data(:,8);
Ic08 = data(:,9);
Ic09 = data(:,10);
Ic10 = data(:,11);

figure(2);
plot(CollectorV, Ic01 * 1e3, 'linewidth', 2);
hold on;
plot(CollectorV, Ic02 * 1e3, 'linewidth', 2);
plot(CollectorV, Ic03 * 1e3, 'linewidth', 2);
plot(CollectorV, Ic04 * 1e3, 'linewidth', 2);
plot(CollectorV, Ic05 * 1e3, 'linewidth', 2);
plot(CollectorV, Ic06 * 1e3, 'linewidth', 2);
plot(CollectorV, Ic07 * 1e3, 'linewidth', 2);
plot(CollectorV, Ic08 * 1e3, 'linewidth', 2);
plot(CollectorV, Ic09 * 1e3, 'linewidth', 2);
plot(CollectorV, Ic10 * 1e3, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
title('I_{C} vs V_{CE}');
xlabel('Voltage, V');
ylabel('Current, mA');

