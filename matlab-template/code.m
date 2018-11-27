%% Cameron Sullivan - ECE 342 - 
close all;

data = csvread('');
time = data(:,1);
voltage = data(:,2);

figure(1);
plot(time, voltage, 'linewidth', 2);
grid on;
set(gca, 'fontsize', 20);
title('');
ylabel('');
xlabel('');
ylim([ ]);
xlim([ ]);
hold on;

f3db = interp1(dB_gain,frequency1,102.2)
line([f3db f3db], [90 102.2],'linestyle', '--');
hold off;