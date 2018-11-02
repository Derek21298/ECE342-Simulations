%% ECE 342 Lab Task 3 Part 2
close all;

input = csvread('cmos-exper-transient-INPUT.csv');
output = csvread('cmos-exper-transient-OUTPUT.csv');

inputVoltage = input(:,2);
outputVoltage = output(:,2);
inputVSub = inputVoltage(544:545);
outputVSub = outputVoltage(544:545);

plot(inputVoltage, outputVoltage);
grid on;
hold on;

halfwayPoint = interp1(outputVSub, inputVSub, 2.5)
line([halfwayPoint halfwayPoint], [0 2.5],'linestyle', '--');
text(2.5, 2.5, 'V_{in} = 2.44 V, V_{out} = 2.5 V');