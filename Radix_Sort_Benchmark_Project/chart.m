%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% John M. Lasheski
% chart.m
% April 25, 2015
%
% Creates the charts and graphs for project 2 in CMSC451 class using data
% from project 1 output files.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;

% Read in file data for analysis
iTime = dlmread('iTimeFile.dat');

% N should be 50, create a vector n to plot against
N = length(iTime);
n = [1:1:N]


% figure 1 will be the iterative time data for each test case, 10 total cases
figure(1)
hold on;

% plot the time data
row = iTime(1,:)
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 10);
ylabel('Time (ms)', 'fontsize', 10);
title('N = 128');

% calculate the mean and std dev
s = std(row) / 100000
m = sum(row) / N / 100000

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;
