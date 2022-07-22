% a function that checks the guess is acceptable and returns true if so, and false otherwise
function [acceptable] = isAnswerValid(answer, matrix)

% check if it fulfils requirement

% input must have 1 row and 2 column, and a number between 1 to 10
if ~(size(answer,2) == 2 && size(answer,1) == 1 && 1 <= answer(1) && answer(1) <= 10 && 1 <= answer(2) && answer(2) <= 10)
    disp("Incorrect input!");
    acceptable = false;
% guess must not be the same as before
elseif matrix(answer(1),answer(2)) == 'x' || matrix(answer(1),answer(2)) == '.'
    disp("You have guessed that before!");
    acceptable = false;
elseif matrix(answer(1),answer(2)) == '5' || matrix(answer(1),answer(2)) == '2' || matrix(answer(1),answer(2)) == '3' || matrix(answer(1),answer(2)) == '4'
    disp("You have guessed that before!");
    acceptable = false;
% if correct
else
    acceptable = true;
end
end