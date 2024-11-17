% Author: Sam Falk
% Email: falksa78@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Stock_Market_Analysis
% Date: 11/16/24


stock_data = load('Stock_Market_Data.txt'); % loads data from the .txt file

average_price = mean(stock_data); % calculation for average closing price
highest_price = max(stock_data); % calculation for highest closing price
lowest_price = min(stock_data); % calculation for lowest closing price

price_increase_days = sum(diff(stock_data) > 0); % Calculate the number of days the stock price increased from the previous day

% creates plot
figure;

plot(stock_data, '-o', 'DisplayName', 'Daily Closing Prices', 'LineWidth', 2, 'MarkerSize', 5); % plots the closing prices
hold on;

yline(average_price, '--r', 'DisplayName', 'Average Price', 'LineWidth', 2);
yline(highest_price, '--g', 'DisplayName', 'Highest Price', 'LineWidth', 2);
yline(lowest_price, '--b', 'DisplayName', 'Lowest Price', 'LineWidth', 2);

% adds labels and title
xlabel('Days');
ylabel('Closing Price ($)');
title('Stock Market Analysis: Daily Closing Prices');

% saves plot as a png
saveas(gcf, 'stock_analysis.png');

summary_text = {
    'Stock Market Analysis Summary:';
    sprintf('Average Closing Price: %.2f', average_price);
    sprintf('Highest Closing Price: %.2f', highest_price);
    sprintf('Lowest Closing Price: %.2f', lowest_price);
    sprintf('Number of days stock price increased: %d', price_increase_days)
};

% displays results in .txt file
fid = fopen('stock_summary.txt', 'w');
fprintf(fid, '%s\n', summary_text{:});
