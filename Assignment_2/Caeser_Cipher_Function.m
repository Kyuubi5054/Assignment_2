% Author: Sam Falk
% Email: falksa78@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Simple_Encryption_Function
% Date: 10/18/24


% function script

function encrypted_message = caeser_cipher(message, shift) % creates the function
    if shift < 1 || shift > 25 % shift must be between 1 and 25
        error('Shift value must be between 1 and 25');
    end
    
    message_ascii = double(message); % converts message to ASCII
    
    encrypted_ascii = mod(message_ascii - double('a') + shift, 26) + double('a'); % shifts each character
    
    encrypted_message = char(encrypted_ascii); % converts back to characters
end
