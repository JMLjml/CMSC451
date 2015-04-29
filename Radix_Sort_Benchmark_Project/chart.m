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
n = [1:1:N];


% figures 1 - 10 will be the iterative time data for each test case, 10 total cases
figure(1)
hold on;

% plot the time data
row = iTime(1,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('N = 128', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;



figure(2)
hold on;

% plot the time data
row = iTime(2,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('N = 256', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;



figure(3)
hold on;

% plot the time data
row = iTime(3,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('N = 512', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;




figure(4)
hold on;

% plot the time data
row = iTime(4,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('N = 1,024', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;



figure(5)
hold on;

% plot the time data
row = iTime(5,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('N = 2,048', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;




figure(6)
hold on;

% plot the time data
row = iTime(6,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('N = 4,096', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;




figure(7)
hold on;

% plot the time data
row = iTime(7,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('N = 8,192', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;




figure(8)
hold on;

% plot the time data
row = iTime(8,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('N = 16,384', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;




figure(9)
hold on;

% plot the time data
row = iTime(9,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('N = 32,768', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;




figure(10)
hold on;

% plot the time data
row = iTime(10,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('N = 65,536', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;
