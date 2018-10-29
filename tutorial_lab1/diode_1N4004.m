%% ECE 342 - Tutorial Lab 1
close all;

%% Plot I-V characteristic
n4004_data = csvread('1N4004_fwd.csv');

v_F = n4004_data(:, 2);
i_F = n4004_data(:, 1);
i_F_fit = n4004_data(:, 6);

figure(1);

semilogy(v_F, i_F, 'linewidth', 2);
hold on;
semilogy(v_F, i_F_fit, 'linewidth', 2);
grid on;
% title('1N4004 I-V Characteristic');
set(gca,'fontsize',20);
ylabel('I_{F}, A');
xlabel('V_{F}, V');
legend('I_{F}', 'I_{F} fit');

%% Get i_f equation to find Is and n.

% Take subset from Vf = 0.2 to Vf = 0.6
v_F_sub = v_F(6:45);
i_F_sub = i_F(6:45);
i_F_equation = polyfit(v_F_sub, log(i_F_sub), 1)

%% Graph relative error

figure(3);
% i_F_fit_sub = 
error_percent = 100 .* ((i_F_fit - i_F) ./ i_F_fit);
hold off;
plot(v_F, error_percent, 'linewidth', 2);
set(gca,'fontsize',20);
ylabel('Relative Current Error - i_{F} to i_{F} fit (%)');
xlabel('V_{F}, V');
grid on;


