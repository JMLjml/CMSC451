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
rTime = dlmread('rTimeFile.dat');
iCount = dlmread('iCountFile.dat');
rCount = dlmread('rCountFile.dat');

% The counts are the same for each test, so read in the first one from eactest size and 
% you get the number you need
iCountVector = iCount(:,1);
rCountVector = rCount(:,1);

% N should be 50, create a vector n to plot against
N = length(iTime);
n = [1:1:N];

% arrays for holding the mean for each test size, will be plotted later
iMeanTime = zeros(1, 10);
rMeanTime = zeros(1, 10);

% arry for holding the sizes of the test cases, will be used for plotting later
sizes = [128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Iterative Plots
%  figures 1 - 10 will be the iterative time data for each test case, 10 total cases
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1)
hold on;

% plot the time data
row = iTime(1,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('Iterative Sort N = 128', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
iMeanTime(1) = m;

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
title('Iterative Sort N = 256', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
iMeanTime(2) = m;

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
title('Iterative Sort N = 512', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
iMeanTime(3) = m;

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
title('Iterative Sort N = 1,024', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
iMeanTime(4) = m;

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
title('Iterative Sort N = 2,048', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
iMeanTime(5) = m;

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
title('Iterative Sort N = 4,096', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
iMeanTime(6) = m;

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
title('Iterative Sort N = 8,192', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
iMeanTime(7) = m;

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
title('Iterative Sort N = 16,384', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
iMeanTime(8) = m;

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
title('Iterative Sort N = 32,768', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
iMeanTime(9) = m;

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
title('Iterative Sort N = 65,536', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
iMeanTime(10) = m;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;







%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Recursive Plots
%  figures 11 - 20 will be the recursive time data for each test case, 10 total cases
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(11)
hold on;

% plot the time data
row = rTime(1,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('Recursive Sort N = 128', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
rMeanTime(1) = m;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;



figure(12)
hold on;

% plot the time data
row = rTime(2,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('Recursive Sort N = 256', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
rMeanTime(2) = m;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;



figure(13)
hold on;

% plot the time data
row = rTime(3,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('Recursive Sort N = 512', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
rMeanTime(3) = m;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;




figure(14)
hold on;

% plot the time data
row = rTime(4,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('Recursive Sort N = 1,024', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
rMeanTime(4) = m;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;



figure(15)
hold on;

% plot the time data
row = rTime(5,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('Recursive Sort N = 2,048', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
rMeanTime(5) = m;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;




figure(16)
hold on;

% plot the time data
row = rTime(6,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('Recursive Sort N = 4,096', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
rMeanTime(6) = m;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;




figure(17)
hold on;

% plot the time data
row = rTime(7,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('Recursive Sort N = 8,192', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
rMeanTime(7) = m;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;




figure(18)
hold on;

% plot the time data
row = rTime(8,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('Recursive Sort N = 16,384', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
rMeanTime(8) = m;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;




figure(19)
hold on;

% plot the time data
row = rTime(9,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('Recursive Sort N = 32,768', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
rMeanTime(9) = m;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;




figure(20)
hold on;

% plot the time data
row = rTime(10,:);
plot(n, row / 100000, 'color', 'm');
xlabel('Test Case (n)', 'fontsize', 14);
ylabel('Time (ms)', 'fontsize', 14);
title('Recursive Sort N = 65,536', 'fontsize', 14);

% calculate the mean and std dev
s = std(row) / 100000;
m = sum(row) / N / 100000;
rMeanTime(10) = m;

% plot the mean
plot(25, m, 'marker', 'v', 'markersize', 10);

% plot the mean +- 1 std dev
plot(n, m + s, 'o', 'color', 'g');
plot(n, m - s, 'o', 'color', 'g');

legend('Time (ms)', 'mean', 'Std Dev');
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Summary Plot
%  figure 21 Show the average time for each test size, both iterative and recursive
%  figure 22 Show the count for each test size, both iterative and recursive
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(21)
hold on;

% plot the time data
plot(sizes, iMeanTime, 'color', 'm');
plot(sizes, rMeanTime, 'color', 'b');
xlabel('Test Size (n)', 'fontsize', 14);
ylabel('Mean Time (ms)', 'fontsize', 14);
title('Average Time For Each Test Size', 'fontsize', 14);
legend('Iterative Time (ms)', 'Recursive Time (ms)');
hold off;


figure(22)
hold on;

% plot the count data
plot(sizes, iCountVector, 'color', 'm');
plot(sizes, rCountVector, 'color', 'b');
xlabel('Test Size (n)', 'fontsize', 14);
ylabel('Operation Count', 'fontsize', 14);
title('Operation Count For Each Test Size', 'fontsize', 14);
legend('Iterative Count', 'Recursive Count');
hold off;
