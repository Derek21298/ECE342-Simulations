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
% plot(BaseV, log(CollectorI * 1e3), 'linewidth', 2);
hold on;
% plot(BaseV, CollectorI * 1e3, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
title('ln(I_{C}) vs V_{BE}');
xlabel('V_{BE}, V');
ylabel('ln(I_{C}), mA');


%% Plot Ic vs Vce
close all;

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
% Ic01
plot(CollectorV, Ic01 * 1e3, 'linewidth', 2);
hold on;
CollectorV_VA = linspace(-90, 5, 10001);
CollectorV_sub = CollectorV(11:end);
Ic01_sub = Ic01(11:end);
Ic01_terms = polyfit(CollectorV_sub, Ic01_sub, 1)
Ic01_equation = Ic01_terms(1)*CollectorV_VA + Ic01_terms(2);
plot(CollectorV_VA, Ic01_equation * 1e3, 'linewidth', 2);

plot(CollectorV, Ic02 * 1e3, 'linewidth', 2);
Ic02_sub = Ic02(11:end);
Ic02_terms = polyfit(CollectorV_sub, Ic02_sub, 1)
Ic02_equation = Ic02_terms(1)*CollectorV_VA + Ic02_terms(2);
plot(CollectorV_VA, Ic02_equation * 1e3, 'linewidth', 2);

plot(CollectorV, Ic03 * 1e3, 'linewidth', 2);
Ic03_sub = Ic03(11:end);
Ic03_terms = polyfit(CollectorV_sub, Ic03_sub, 1)
Ic03_equation = Ic03_terms(1)*CollectorV_VA + Ic03_terms(2);
plot(CollectorV_VA, Ic03_equation * 1e3, 'linewidth', 2);

plot(CollectorV, Ic04 * 1e3, 'linewidth', 2);
Ic04_sub = Ic04(11:end);
Ic04_terms = polyfit(CollectorV_sub, Ic04_sub, 1)
Ic04_equation = Ic04_terms(1)*CollectorV_VA + Ic04_terms(2);
plot(CollectorV_VA, Ic04_equation * 1e3, 'linewidth', 2);

plot(CollectorV, Ic05 * 1e3, 'linewidth', 2);
Ic05_sub = Ic05(11:end);
Ic05_terms = polyfit(CollectorV_sub, Ic05_sub, 1)
Ic05_equation = Ic05_terms(1)*CollectorV_VA + Ic05_terms(2);
plot(CollectorV_VA, Ic05_equation * 1e3, 'linewidth', 2);

plot(CollectorV, Ic06 * 1e3, 'linewidth', 2);
Ic06_sub = Ic06(11:end);
Ic06_terms = polyfit(CollectorV_sub, Ic06_sub, 1)
Ic06_equation = Ic06_terms(1)*CollectorV_VA + Ic06_terms(2);
plot(CollectorV_VA, Ic06_equation * 1e3, 'linewidth', 2);

plot(CollectorV, Ic07 * 1e3, 'linewidth', 2);
Ic07_sub = Ic07(11:end);
Ic07_terms = polyfit(CollectorV_sub, Ic07_sub, 1)
Ic07_equation = Ic07_terms(1)*CollectorV_VA + Ic07_terms(2);
plot(CollectorV_VA, Ic07_equation * 1e3, 'linewidth', 2);

plot(CollectorV, Ic08 * 1e3, 'linewidth', 2);
Ic08_sub = Ic08(11:end);
Ic08_terms = polyfit(CollectorV_sub, Ic08_sub, 1)
Ic08_equation = Ic08_terms(1)*CollectorV_VA + Ic08_terms(2);
plot(CollectorV_VA, Ic08_equation * 1e3, 'linewidth', 2);

plot(CollectorV, Ic09 * 1e3, 'linewidth', 2);
Ic09_sub = Ic09(11:end);
Ic09_terms = polyfit(CollectorV_sub, Ic09_sub, 1)
Ic09_equation = Ic09_terms(1)*CollectorV_VA + Ic09_terms(2);
plot(CollectorV_VA, Ic09_equation * 1e3, 'linewidth', 2);

plot(CollectorV, Ic10 * 1e3, 'linewidth', 2);
Ic10_sub = Ic10(11:end);
Ic10_terms = polyfit(CollectorV_sub, Ic10_sub, 1)
Ic10_equation = Ic10_terms(1)*CollectorV_VA + Ic10_terms(2);
plot(CollectorV_VA, Ic10_equation * 1e3, 'linewidth', 2);

grid on;
set(gca, 'fontsize', 20);
title('I_{C} vs V_{CE}');
xlabel('V_{CE}, V');
ylabel('I_{C}, mA');

set(gca, 'fontsize', 18);
legend('I_{B} = 1 uA', 'I_{B} = 2 uA', 'I_{B} = 3 uA', 'I_{B} = 4 uA', 'I_{B} = 5 uA', 'I_{B} = 6 uA', 'I_{B} = 7 uA', 'I_{B} = 8 uA', 'I_{B} = 9 uA', 'I_{B} = 10 uA');