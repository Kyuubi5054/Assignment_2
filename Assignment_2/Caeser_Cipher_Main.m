% Author: Sam Falk
% Email: falksa78@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Simple_Encryption_Function
% Date: 10/18/24


% main script for the function

message = input('Enter a message (lowercase letters only): ', 's'); % asks user to input a message
shift = input('Enter a shift value (1 to 25): '); % asks user to input a shift value

encrypted_message = caeser_cipher(message, shift); % calls the function to encrypt the message

fprintf('Original message: %s\n', message); % displays original message
fprintf('Encrypted message: %s\n', encrypted_message); % displays encrypted message
