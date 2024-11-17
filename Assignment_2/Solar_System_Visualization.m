% Author: Sam Falk
% Email: falksa78@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Solar_System_Visualization
% Date: 10/30/24


% data of planets
planet_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};
planet_distances = [0.39, 0.72, 1.00, 1.52, 5.20, 9.58, 19.18, 30.07]; % average distance of each planet from the sun
planet_sizes = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.01, 3.88]; % relative sizes of each planet to Earth


figure; % creates figure

% subplot 1: planet distances vs. planet sizes
subplot(1, 2, 1);
scatter(planet_distances, planet_sizes, 100, 'filled'); % 100 = marker size
title('Planet Distances vs Sizes');
xlabel('Distance from Sun (AU)');
ylabel('Relative Planet Size (Earth = 1)');
grid on;


for i = 1:length(planet_names)
    text(planet_distances(i), planet_sizes(i), planet_names{i}, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right'); % creates labels with the planets' names
end

% subplot 2: bar chart of planet distances
subplot(1, 2, 2);
bar(planet_distances);
set(gca, 'XTickLabel', planet_names); % planet names on x-axis
title('Planet Distances from the Sun');
xlabel('Planet');
ylabel('Distance from Sun (AU)');
grid on;

% saves figure as PNG
saveas(gcf, 'solar_system_visualization.png');
