%% ECE 342 Lab Task 3 Part 4
close all;

output = csvread('astable-multiv-transient-exper.csv');

time = output(:,1);
outputVoltage = output(:,2);

plot(time * 10e5, outputVoltage, 'Linewidth', 2);
xlim([-80 80]);
grid on;
set(gca, 'fontsize', 18);
% title('Experimental Astable Multivibrator Transient Response');
ylabel('V_{out}, V');
xlabel('Time, microseconds');
hold on;