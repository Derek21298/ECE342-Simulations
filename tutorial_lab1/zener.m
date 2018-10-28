%% ECE 342
close all;

zener_data = csvread('zener_reverse.csv');

v_R = zener_data(:, 2);
i_R = zener_data(:, 1);

%% Plot I-V characteristic

plot(v_R, i_R);
grid on;
hold on;
ylim([-0.12 0.02]);

% vz = interp1(i_R, v_R, -20e-3)
% line([vz vz], [-0.12 0.02],'linestyle', '--');

i_R_sub = i_R(295:335);
v_R_sub = v_R(295:335);

i_R_fit = polyfit(v_R_sub, i_R_sub, 1)
equation = i_R_fit(1)*v_R_sub + i_R_fit(2);

plot(v_R_sub, equation);

%% Find % error

figure(2);
error_percent = 100 * ((equation - i_R_sub) ./ i_R_sub);
plot(v_R_sub, error_percent);
grid on;