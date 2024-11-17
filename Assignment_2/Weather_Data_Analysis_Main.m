% Author: Sam Falk
% Email: falksa78@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Weather_Data_Analysis
% Date: 10/20/24


% creates .txt file with all the data in it
weather_data = {
    'Date', 'Temperature', 'Humidity', 'Precipitation';
    '2024-09-01', 25.5, 60, 0;
    '2024-09-02', 26.0, 65, 5;
    '2024-09-03', 24.5, 70, 10;
    '2024-09-04', 23.0, 75, 15;
    '2024-09-05', 22.5, 80, 20
};

writecell(weather_data, 'weather_data.txt', 'Delimiter', ','); % writes cell array to text file


data = readcell('weather_data.txt', 'Delimiter', ','); % reads data from the .txt file into a cell array

temperature = cell2mat(data(2:end, 2));   % temperature from column 2
humidity = cell2mat(data(2:end, 3));      % humidity from column 3
precipitation = cell2mat(data(2:end, 4)); % precipitation from column 4

avg_temp = mean(temperature);       % calculates the average temperature
avg_humidity = mean(humidity);     % calculates the average humidity
total_precipitation = sum(precipitation); % calculates the total precipitation


fileID = fopen('weather_summary.txt', 'w');  % opens file to display results

% displays results in the .txt file
fprintf(fileID, 'Weather Summary:\n');
fprintf(fileID, 'Average Temperature: %.2f°C\n', avg_temp);
fprintf(fileID, 'Average Humidity: %.2f%%\n', avg_humidity);
fprintf(fileID, 'Total Precipitation: %.2f mm\n', total_precipitation);
