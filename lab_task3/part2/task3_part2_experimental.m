%% ECE 342 Lab Task 3 Part 2
close all;

input = csvread('cmos-vtc-input-exper.csv');
output = csvread('cmos-vtc-output-exper.csv');

inputVoltage = input(:,2);
outputVoltage = output(:,2);
inputVSub = inputVoltage(544:545);
outputVSub = outputVoltage(544:545);

plot(inputVoltage, outputVoltage, 'Linewidth', 2);
grid on;
set(gca, 'fontsize', 18);
title('Experimental CMOS Inverter VTC');
ylabel('V_{O1}, V');
xlabel('V_{in}, V');
hold on;

halfwayPoint = interp1(outputVSub, inputVSub, 2.5)
line([halfwayPoint halfwayPoint], [0 2.5],'linestyle', '--');
text(2.5, 2.5, 'V_{in} = 2.44 V, V_{out} = 2.5 V', 'fontsize', 18);

%% Transient
close all;

output = csvread('cmos-transient-exper.csv');

time = output(:,1);
outputVoltage = output(:,2);

plot(time, outputVoltage, 'Linewidth', 2);
grid on;
set(gca, 'fontsize', 18);
title('Experimental CMOS Inverter Transient Response');
ylabel('V_{O1}, V');
xlabel('Time, s');
hold on;