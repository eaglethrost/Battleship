% generates a carrier ship and returns its coordinate

% carrier occupies 5 tiles
function [board,coordinate] = carrier(matrix)

board = matrix;
coordinate = [];
% see if ship is vertical or horizontal
direction = isVertical();

% if vertical
if direction == true
    % get a random starting points
    startingPoint(1) = randi([1 5]); 
    startingPoint(2) = randi([1 10]); 
    for index = startingPoint(1):startingPoint(1)+4
        % ship symbolized by 5
        board(index,startingPoint(2)) = 5;
        % store coordinate in array
        coordinate = [coordinate; index startingPoint(2)];
    end
% if horizontal
else
    % get a random starting point
    startingPoint(1) = randi([1 10]); 
    startingPoint(2) = randi([1 5]); 
    for index = startingPoint(2):startingPoint(2)+4
        % ship symbolized by 5
        board(startingPoint(1),index) = 5;
        coordinate = [coordinate; startingPoint(1) index];
    end
end
end

