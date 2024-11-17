% Author: Sam Falk
% Email: falksa78@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Population_Growth_Analysis
% Date: 10/11/24


population = [5000, 5200, 5350, 5600, 5800]; % population vector

growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1); % calculating growth rate

pop_data = [population; [0 growth_rate]]; % matrix that includes the population and growth rate data

fprintf('Year\tPopulation\tGrowth Rate\n'); % displays results for viewer to see
for i = 1:length(population)
    fprintf('%d\t%d\t%.2f%%\n', i, pop_data(1,i), pop_data(2,i)*100);
end
