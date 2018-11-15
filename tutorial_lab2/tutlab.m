%% 
%
%

close all;

%% Vgs vs Ids
close all;

data = csvread('vgs-id.csv', 1);
Ids = data(:,1);
Vgs = data(:,2);

Ids_subset = Ids(28:end);
Vgs_subset = Vgs(28:end);

i_v_equation = polyfit(Vgs_subset, Ids_subset, 1);
equation = i_v_equation(1) * Vgs + i_v_equation(2);


figure(1);

% plot(Vgs_subset, Ids_subset * 1e3, 'linewidth', 4);
% hold on;
plot(Vgs, Ids * 1e3, 'linewidth', 2);
hold on;
plot(Vgs, equation * 1e3, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
title('CD4007UBE NMOS Drain Current vs Gate Voltage');
xlabel('V_{GS}, V');
ylabel('I_{DS}, mA');
xlim([0 5]);
legend('I-V Characteristic', 'Linear Regression');

vtn = interp1(equation * 1e3,Vgs,0)
line([vtn vtn], [-0.1 0.25],'linestyle', '--', 'linewidth', 2);
text(vtn + 0.05, -0.025, 'V_{tn} = 1.0948 V', 'fontsize', 20);
hold off;

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

figure(2);

plot(drainV, Ids1 * 1e3, 'linewidth', 2);
hold on;
plot(drainV, Ids2 * 1e3, 'linewidth', 2);
plot(drainV, Ids3 * 1e3, 'linewidth', 2);
plot(drainV, Ids4 * 1e3, 'linewidth', 2);
plot(drainV, Ids5 * 1e3, 'linewidth', 2);
plot(drainV, Ids6 * 1e3, 'linewidth', 2);
plot(drainV, Ids7 * 1e3, 'linewidth', 2);
plot(drainV, Ids8 * 1e3, 'linewidth', 2);
plot(drainV, Ids9 * 1e3, 'linewidth', 2);
plot(drainV, Ids10 * 1e3, 'linewidth', 2);
plot(drainV, Ids11 * 1e3, 'linewidth', 2);

grid on;
hold on;
title('CD4007UBE I_{DS} vs V_{DS} with Varying Gate Voltages', 'fontsize', 20);
ylabel('I_{DS}, mA', 'fontsize', 20);
xlabel('V_{DS}, V', 'fontsize', 20);
set(gca, 'fontsize', 16);
legend('V_{G} = 0 V', 'V_{G} = 0.5 V', 'V_{G} = 1 V', 'V_{G} = 1.5 V', 'V_{G} = 2 V', 'V_{G} = 2.5 V', 'V_{G} = 3 V', 'V_{G} = 3.5 V', 'V_{G} = 4 V', 'V_{G} = 4.5 V', 'V_{G} = 5 V');


%% Challenge

% Find vtn using VDS versus IDS graph.
Ids5_subset = Ids5(1:8);
Vds5_subset = drainV(1:8);

i_v_equation = polyfit(Vds5_subset, Ids5_subset, 1)
equation = i_v_equation(1) * Vds5_subset + i_v_equation(2);

plot(Vds5_subset, equation * 1e3, 'linewidth', 2);
grid on;