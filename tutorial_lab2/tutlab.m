%% 
%
%

close all;

%% Vds vs Ids

data = csvread('vds-id.csv',1);
Ids1 = data(:,1);
drainV = data(:,2);
Ids2 = data(:,4);
Ids3 = data(:,7);
Ids4 = data(:,10);
Ids5 = data(:,13);
Ids6 = data(:,16);
Ids7 = data(:,19);
Ids8 = data(:,22);
Ids9 = data(:,25);
Ids10 = data(:,28);
Ids11 = data(:,31);

figure(1);

plot(drainV, Ids1 * 1e3);
hold on;
plot(drainV, Ids2 * 1e3);
plot(drainV, Ids3 * 1e3);
plot(drainV, Ids4 * 1e3);
plot(drainV, Ids5 * 1e3);
plot(drainV, Ids6 * 1e3);
plot(drainV, Ids7 * 1e3);
plot(drainV, Ids8 * 1e3);
plot(drainV, Ids9 * 1e3);
plot(drainV, Ids10 * 1e3);
plot(drainV, Ids11 * 1e3);

grid on;
title('Ids vs Drain Voltage with Varying Gate Voltages');
ylabel('Ids, mA');
xlabel('Drain Voltage, V');
legend('Vg = 0 V', 'Vg = 0.5 V', 'Vg = 1 V', 'Vg = 1.5 V', 'Vg = 2 V', 'Vg = 2.5 V', 'Vg = 3.5 V', 'Vg = 4 V', 'Vg = 4.5 V', 'Vg = 5 V');

%% Vgs vs Ids

data = csvread('vgs-id.csv', 1);
Ids = data(:,1);
Vgs = data(:,2);

Ids_subset = Ids(28:end);
Vgs_subset = Vgs(28:end);

i_v_equation = polyfit(Vgs_subset, Ids_subset, 1);
equation = i_v_equation(1) * Vgs + i_v_equation(2);


figure(2);

plot(Vgs, Ids * 1e3);
hold on;
plot(Vgs, equation * 1e3);
grid on;
title('Ids vs Gate Voltage');
xlabel('Gate Voltage, V');
ylabel('Ids, mA');
xlim([0 5]);


