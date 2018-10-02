% ECE 342 - Cameron Sullivan - Lab Task 1 Experimental Graphs

close all;

% Array = csvread('TZA_experimental_f_response.csv');
Array = csvread('TZA_experimental_f_response_FINAL.csv');
frequency = Array(:,1);
dB_gain = Array(:,2);

semilogx(frequency, dB_gain, 'linewidth', 1.5);
% title('TZA Frequency Response - R_{2} = 150k\Omega');
ylabel('Gain, dB');
xlabel('Frequency, Hz');
hold on;
grid on;

f3db = interp1(dB_gain,frequency,-3)

line([f3db f3db], [-100 -3],'linestyle', '--');